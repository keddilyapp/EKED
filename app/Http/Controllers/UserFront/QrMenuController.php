<?php

namespace App\Http\Controllers\UserFront;

use Illuminate\Http\Request;
use App\Models\User\OrderTime;
use App\Models\User\Pcategory;
use App\Models\User\TimeFrame;
use App\Models\User\PostalCode;
use App\Models\User\ServingMethod;
use App\Models\User\OfflineGateway;
use App\Models\User\PaymentGateway;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use App\Http\Helpers\LimitCheckerHelper;
use App\Traits\UserCurrentLanguageTrait;

class QrMenuController extends Controller
{
    use UserCurrentLanguageTrait;

    public function qrMenu(Request $request,$domain) {
       
        $user = getUser();
        $currentLang = $this->getUserCurrentLanguage($user);
        $itemsCount = 0;
        $cartTotal = 0;
        $cart = session()->get($user->username.'_cart');
      
        if(!empty($cart)){
            foreach($cart as $p){
                $itemsCount += $p['qty'];
                $cartTotal += (float)$p['total'];
            }
        }
        $data['cart'] = $cart;
        $data['itemsCount'] = $itemsCount;
        $data['cartTotal'] = $cartTotal;
        $data['categories'] = Pcategory::query()
            ->where('status', 1)
            ->where('user_id', $user->id)
            ->where('language_id', $currentLang->id)
            ->get();
        $data['cLang'] = $currentLang;
        if (!empty($request->table)) {
            Session::put('table', $request->table);
        }
        
        return view('user-front.qrmenu.menu', $data);
    }

    public function qtyChange(Request $request,$domain) {

        $user = getUser();
        $currentLang = $this->getUserCurrentLanguage($user);
        $keywords = json_decode($currentLang->keywords, true);

        $cart = session()->get($user->username . '_cart');
        $key = $request->key;
        $qty = (int)$request->qty;
        if ($qty <= 0) {
            return;
        }
        $variationPrice = 0;
        $addonPrice = 0;
 
        // changing qty & total for the item
        $cart["$key"]['qty'] = $qty;

        if (!empty($cart["$key"]["variations"]) && !empty($cart["$key"]["addons"])) {
            foreach ($cart["$key"]["variations"] as $vari) {
                $variationPrice += $qty * $vari['price'];
            }

            foreach ($cart["$key"]["addons"] as $add) {

                $addonPrice += $qty * $add['price'];
            }
            $cart["$key"]['total'] = $qty * (float)$cart["$key"]["product_price"] + $variationPrice + $addonPrice;
         

        } elseif(!empty($cart["$key"]["variations"]) && empty($cart["$key"]["addons"])){

            foreach ($cart["$key"]["variations"] as $vari) {
                $variationPrice += $qty * $vari['price'];
            }

            $cart["$key"]['total'] = $qty * (float)$cart["$key"]["product_price"] + $variationPrice ;

        }elseif(empty($cart["$key"]["variations"]) && !empty($cart["$key"]["addons"])){

            foreach ($cart["$key"]["addons"] as $add) {

                $addonPrice += $qty * $add['price'];
            }
            $cart["$key"]['total'] = $qty * (float)$cart["$key"]["product_price"] + $addonPrice;

        }else{
         
            $cart["$key"]['total'] = $qty * (float)$cart["$key"]["product_price"];
        }


        session()->put($user->username . '_cart', $cart);
        $cart = session()->get($user->username . '_cart');
        return response()->json(['cart' => $cart, 'key' => $key,'message' =>$keywords['Quantity updated'] ?? 'Quantity updated']);
    }

    public function remove(Request $request) {

        $user = getUser();
        $currentLang = $this->getUserCurrentLanguage($user);
        $keywords = json_decode($currentLang->keywords, true);


        $key = $request->key;
        $cart = session()->get($user->username . '_cart');
        unset($cart["$key"]);
        session()->put($user->username . '_cart', $cart);
        return response()->json(['message' => $keywords['Item removed successfully'] ?? 'Item removed successfully']);
    }

    public function login($domain) {
        $user = getUser();
        $currentLang = $this->getUserCurrentLanguage($user);
        $itemsCount = 0;
        $cartTotal = 0;
        $cart = session()->get($user->username . '_cart');
        if(!empty($cart)){
            foreach($cart as $p){
                $itemsCount += $p['qty'];
                $cartTotal += (float)$p['total'];
            }
        }

        $data['cart'] = $cart;
        $data['itemsCount'] = $itemsCount;
        $data['cartTotal'] = $cartTotal;
        $data['currentLang'] = $currentLang;

        session()->put('link', route('user.front.qrmenu.checkout',getParam()));

        return view('user-front.qrmenu.login', $data);
    }

    public function checkout(Request $request) {

        $user = getUser();
        $currentLang = $this->getUserCurrentLanguage($user);
        $keywords = json_decode($currentLang->keywords, true);
        
        if(empty(session()->get($user->username . '_cart'))){
            return back()->with('error',$keywords['Cart is empty'] ?? 'Cart is empty');
        }
        
        $userId = $user->id;
        if ($request->type != 'guest' && !Auth::guard('client')->check()) {
            session()->put('link', route('user.front.qrmenu.checkout',getParam()));
            return redirect()->route('user.front.qrmenu.login',getParam());
        }

        $currentLang = $this->getUserCurrentLanguage($user);

        $itemsCount = 0;
        $cartTotal = 0;
        $cart = session()->get($user->username . '_cart');
        if(!empty($cart)){
            foreach($cart as $p){
                $itemsCount += $p['qty'];
                $cartTotal += (float)$p['total'];
            }
        }

        $data['scharges'] = $currentLang->shipping_charges;
        $data['smethods'] = ServingMethod::query()
            ->where('qr_menu', 1)
            ->where('user_id', $user->id)
            ->orderBy('serial_number', 'ASC')
            ->get();

        $data['cart'] = $cart;
        $data['itemsCount'] = $itemsCount;
        $data['cartTotal'] = $cartTotal;
        $data['currentLang'] = $currentLang;

        $data['postcodes'] = PostalCode::query()
            ->where('language_id', $currentLang->id)
            ->where('user_id', $user->id)
            ->orderBy('serial_number', 'ASC')
            ->get();
        $data['ogateways'] = OfflineGateway::query()
            ->where('status', 1)
            ->where('user_id', $user->id)
            ->orderBy('serial_number')
            ->get();
        $data['paypal'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'paypal')->first();
        $data['stripe'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'stripe')->first();
        $data['paystack'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'paystack')->first();
        $data['paytm'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'paytm')->first();
        $data['flutterwave'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'flutterwave')->first();
        $data['instamojo'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'instamojo')->first();
        $data['mollie'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'mollie')->first();
        $data['razorpay'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'razorpay')->first();
        $data['mercadopago'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'mercadopago')->first();
        $data['anet'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'authorize.net')->first();
        $data['yoco'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'yoco')->first();
        $data['xendit'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'xendit')->first();
        $data['perfect_money'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'perfect_money')->first();
        $data['midtrans'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'midtrans')->first();
        $data['myfatoorah'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'myfatoorah')->first();
        $data['toyyibpay'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'toyyibpay')->first();
        $data['paytabs'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'paytabs')->first();
        $data['phonepe'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'phonepe')->first();
        $data['iyzico'] = PaymentGateway::query()->where('user_id', $userId)->where('keyword', 'iyzico')->first();

        $data['discount'] = session()->has('coupon') && !empty(session()->get('coupon')) ? session()->get('coupon') : 0;
        $days = ['sunday','monday','tuesday','wednesday','thursday','friday','saturday'];
        $disDays = [];
        foreach ($days as $day) {
            $count = OrderTime::query()->where('user_id', $userId)->where('day', $day)->count();
            if ($count == 0) {
                if ($day == 'sunday') {
                    $disDays[] = 0;
                } elseif ($day == 'monday') {
                    $disDays[] = 1;
                } elseif ($day == 'tuesday') {
                    $disDays[] = 2;
                } elseif ($day == 'wednesday') {
                    $disDays[] = 3;
                } elseif ($day == 'thursday') {
                    $disDays[] = 4;
                } elseif ($day == 'friday') {
                    $disDays[] = 5;
                } elseif ($day == 'saturday') {
                    $disDays[] = 6;
                }
            }
        }
        $data['disDays'] = $disDays;

        $data['ccodes'] = [["code" => "+7840","name" => "Abkhazia"],["code" => "+93","name" => "Afghanistan"],["code" => "+355","name" => "Albania"],["code" => "+213","name" => "Algeria"],["code" => "+1684","name" => "American Samoa"],["code" => "+376","name" => "Andorra"],["code" => "+244","name" => "Angola"],["code" => "+1264","name" => "Anguilla"],["code" => "+1268","name" => "Antigua and Barbuda"],["code" => "+54","name" => "Argentina"],["code" => "+374","name" => "Armenia"],["code" => "+297","name" => "Aruba"],["code" => "+247","name" => "Ascension"],["code" => "+61","name" => "Australia"],["code" => "+672","name" => "Australian External Territories"],["code" => "+43","name" => "Austria"],["code" => "+994","name" => "Azerbaijan"],["code" => "+1242","name" => "Bahamas"],["code" => "+973","name" => "Bahrain"],["code" => "+880","name" => "Bangladesh"],["code" => "+1246","name" => "Barbados"],["code" => "+1268","name" => "Barbuda"],["code" => "+375","name" => "Belarus"],["code" => "+32","name" => "Belgium"],["code" => "+501","name" => "Belize"],["code" => "+229","name" => "Benin"],["code" => "+1441","name" => "Bermuda"],["code" => "+975","name" => "Bhutan"],["code" => "+591","name" => "Bolivia"],["code" => "+387","name" => "Bosnia and Herzegovina"],["code" => "+267","name" => "Botswana"],["code" => "+55","name" => "Brazil"],["code" => "+246","name" => "British Indian Ocean Territory"],["code" => "+1284","name" => "British Virgin Islands"],["code" => "+673","name" => "Brunei"],["code" => "+359","name" => "Bulgaria"],["code" => "+226","name" => "Burkina Faso"],["code" => "+257","name" => "Burundi"],["code" => "+855","name" => "Cambodia"],["code" => "+237","name" => "Cameroon"],["code" => "+1","name" => "Canada"],["code" => "+238","name" => "Cape Verde"],["code" => "+345","name" => "Cayman Islands"],["code" => "+236","name" => "Central African Republic"],["code" => "+235","name" => "Chad"],["code" => "+56","name" => "Chile"],["code" => "+86","name" => "China"],["code" => "+61","name" => "Christmas Island"],["code" => "+61","name" => "Cocos-Keeling Islands"],["code" => "+57","name" => "Colombia"],["code" => "+269","name" => "Comoros"],["code" => "+242","name" => "Congo"],["code" => "+243","name" => "Congo, Dem. Rep. of (Zaire)"],["code" => "+682","name" => "Cook Islands"],["code" => "+506","name" => "Costa Rica"],["code" => "+385","name" => "Croatia"],["code" => "+53","name" => "Cuba"],["code" => "+599","name" => "Curacao"],["code" => "+537","name" => "Cyprus"],["code" => "+420","name" => "Czech Republic"],["code" => "+45","name" => "Denmark"],["code" => "+246","name" => "Diego Garcia"],["code" => "+253","name" => "Djibouti"],["code" => "+1767","name" => "Dominica"],["code" => "+1809","name" => "Dominican Republic"],["code" => "+670","name" => "East Timor"],["code" => "+56","name" => "Easter Island"],["code" => "+593","name" => "Ecuador"],["code" => "+20","name" => "Egypt"],["code" => "+503","name" => "El Salvador"],["code" => "+240","name" => "Equatorial Guinea"],["code" => "+291","name" => "Eritrea"],["code" => "+372","name" => "Estonia"],["code" => "+251","name" => "Ethiopia"],["code" => "+500","name" => "Falkland Islands"],["code" => "+298","name" => "Faroe Islands"],["code" => "+679","name" => "Fiji"],["code" => "+358","name" => "Finland"],["code" => "+33","name" => "France"],["code" => "+596","name" => "French Antilles"],["code" => "+594","name" => "French Guiana"],["code" => "+689","name" => "French Polynesia"],["code" => "+241","name" => "Gabon"],["code" => "+220","name" => "Gambia"],["code" => "+995","name" => "Georgia"],["code" => "+49","name" => "Germany"],["code" => "+233","name" => "Ghana"],["code" => "+350","name" => "Gibraltar"],["code" => "+30","name" => "Greece"],["code" => "+299","name" => "Greenland"],["code" => "+1473","name" => "Grenada"],["code" => "+590","name" => "Guadeloupe"],["code" => "+1671","name" => "Guam"],["code" => "+502","name" => "Guatemala"],["code" => "+224","name" => "Guinea"],["code" => "+245","name" => "Guinea-Bissau"],["code" => "+595","name" => "Guyana"],["code" => "+509","name" => "Haiti"],["code" => "+504","name" => "Honduras"],["code" => "+852","name" => "Hong Kong SAR China"],["code" => "+36","name" => "Hungary"],["code" => "+354","name" => "Iceland"],["code" => "+91","name" => "India"],["code" => "+62","name" => "Indonesia"],["code" => "+98","name" => "Iran"],["code" => "+964","name" => "Iraq"],["code" => "+353","name" => "Ireland"],["code" => "+972","name" => "Israel"],["code" => "+39","name" => "Italy"],["code" => "+225","name" => "Ivory Coast"],["code" => "+1876","name" => "Jamaica"],["code" => "+81","name" => "Japan"],["code" => "+962","name" => "Jordan"],["code" => "+77","name" => "Kazakhstan"],["code" => "+254","name" => "Kenya"],["code" => "+686","name" => "Kiribati"],["code" => "+965","name" => "Kuwait"],["code" => "+996","name" => "Kyrgyzstan"],["code" => "+856","name" => "Laos"],["code" => "+371","name" => "Latvia"],["code" => "+961","name" => "Lebanon"],["code" => "+266","name" => "Lesotho"],["code" => "+231","name" => "Liberia"],["code" => "+218","name" => "Libya"],["code" => "+423","name" => "Liechtenstein"],["code" => "+370","name" => "Lithuania"],["code" => "+352","name" => "Luxembourg"],["code" => "+853","name" => "Macau SAR China"],["code" => "+389","name" => "Macedonia"],["code" => "+261","name" => "Madagascar"],["code" => "+265","name" => "Malawi"],["code" => "+60","name" => "Malaysia"],["code" => "+960","name" => "Maldives"],["code" => "+223","name" => "Mali"],["code" => "+356","name" => "Malta"],["code" => "+692","name" => "Marshall Islands"],["code" => "+596","name" => "Martinique"],["code" => "+222","name" => "Mauritania"],["code" => "+230","name" => "Mauritius"],["code" => "+262","name" => "Mayotte"],["code" => "+52","name" => "Mexico"],["code" => "+691","name" => "Micronesia"],["code" => "+1808","name" => "Midway Island"],["code" => "+373","name" => "Moldova"],["code" => "+377","name" => "Monaco"],["code" => "+976","name" => "Mongolia"],["code" => "+382","name" => "Montenegro"],["code" => "+1664","name" => "Montserrat"],["code" => "+212","name" => "Morocco"],["code" => "+95","name" => "Myanmar"],["code" => "+264","name" => "Namibia"],["code" => "+674","name" => "Nauru"],["code" => "+977","name" => "Nepal"],["code" => "+31","name" => "Netherlands"],["code" => "+599","name" => "Netherlands Antilles"],["code" => "+1869","name" => "Nevis"],["code" => "+687","name" => "New Caledonia"],["code" => "+64","name" => "New Zealand"],["code" => "+505","name" => "Nicaragua"],["code" => "+227","name" => "Niger"],["code" => "+234","name" => "Nigeria"],["code" => "+683","name" => "Niue"],["code" => "+672","name" => "Norfolk Island"],["code" => "+850","name" => "North Korea"],["code" => "+1670","name" => "Northern Mariana Islands"],["code" => "+47","name" => "Norway"],["code" => "+968","name" => "Oman"],["code" => "+92","name" => "Pakistan"],["code" => "+680","name" => "Palau"],["code" => "+970","name" => "Palestinian Territory"],["code" => "+507","name" => "Panama"],["code" => "+675","name" => "Papua New Guinea"],["code" => "+595","name" => "Paraguay"],["code" => "+51","name" => "Peru"],["code" => "+63","name" => "Philippines"],["code" => "+48","name" => "Poland"],["code" => "+351","name" => "Portugal"],["code" => "+1787","name" => "Puerto Rico"],["code" => "+974","name" => "Qatar"],["code" => "+262","name" => "Reunion"],["code" => "+40","name" => "Romania"],["code" => "+7","name" => "Russia"],["code" => "+250","name" => "Rwanda"],["code" => "+685","name" => "Samoa"],["code" => "+378","name" => "San Marino"],["code" => "+966","name" => "Saudi Arabia"],["code" => "+221","name" => "Senegal"],["code" => "+381","name" => "Serbia"],["code" => "+248","name" => "Seychelles"],["code" => "+232","name" => "Sierra Leone"],["code" => "+65","name" => "Singapore"],["code" => "+421","name" => "Slovakia"],["code" => "+386","name" => "Slovenia"],["code" => "+677","name" => "Solomon Islands"],["code" => "+27","name" => "South Africa"],["code" => "+500","name" => "South Georgia and the South Sandwich Islands"],["code" => "+82","name" => "South Korea"],["code" => "+34","name" => "Spain"],["code" => "+94","name" => "Sri Lanka"],["code" => "+249","name" => "Sudan"],["code" => "+597","name" => "Suriname"],["code" => "+268","name" => "Swaziland"],["code" => "+46","name" => "Sweden"],["code" => "+41","name" => "Switzerland"],["code" => "+963","name" => "Syria"],["code" => "+886","name" => "Taiwan"],["code" => "+992","name" => "Tajikistan"],["code" => "+255","name" => "Tanzania"],["code" => "+66","name" => "Thailand"],["code" => "+670","name" => "Timor Leste"],["code" => "+228","name" => "Togo"],["code" => "+690","name" => "Tokelau"],["code" => "+676","name" => "Tonga"],["code" => "+1868","name" => "Trinidad and Tobago"],["code" => "+216","name" => "Tunisia"],["code" => "+90","name" => "Turkey"],["code" => "+993","name" => "Turkmenistan"],["code" => "+1649","name" => "Turks and Caicos Islands"],["code" => "+688","name" => "Tuvalu"],["code" => "+1340","name" => "U.S. Virgin Islands"],["code" => "+256","name" => "Uganda"],["code" => "+380","name" => "Ukraine"],["code" => "+971","name" => "United Arab Emirates"],["code" => "+44","name" => "United Kingdom"],["code" => "+1","name" => "United States"],["code" => "+598","name" => "Uruguay"],["code" => "+998","name" => "Uzbekistan"],["code" => "+678","name" => "Vanuatu"],["code" => "+58","name" => "Venezuela"],["code" => "+84","name" => "Vietnam"],["code" => "+1808","name" => "Wake Island"],["code" => "+681","name" => "Wallis and Futuna"],["code" => "+967","name" => "Yemen"],["code" => "+260","name" => "Zambia"],["code" => "+255","name" => "Zanzibar"],["code" => "+263","name" => "Zimbabwe"]];

        $features = LimitCheckerHelper::getPackageSelectedData($user->id, 'features');
        $data['pfeatures'] = json_decode($features->features, true);

        return view('user-front.qrmenu.checkout', $data);
    }

    public function logout()
    {
        Auth::guard('client')->logout();
        return redirect()->route('user.front.qrmenu.login',getParam());
    }
}
