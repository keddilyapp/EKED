<?php

namespace App\Http\Controllers\User;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Timezone;
use App\Models\User\SEO;
use App\Models\Membership;
use App\Constants\Constant;
use Illuminate\Http\Request;
use App\Models\User\Language;
use App\Http\Helpers\Uploader;
use App\Models\User\BasicExtra;
use App\Models\User\PageHeading;
use App\Rules\ImageMimeTypeRule;
use App\Models\User\BasicSetting;
use App\Models\User\BasicExtended;
use Mews\Purifier\Facades\Purifier;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Session;
use App\Http\Helpers\LimitCheckerHelper;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;

class BasicController extends Controller
{
    public function favicon()
    {
        return view('user.basic.favicon');
    }

    public function updateFav(Request $request)
    {

        $userId = getRootUser()->id;
        $bss = BasicSetting::where('user_id', $userId)->get();
        $basic = BasicSetting::where('user_id', $userId)->select('favicon')->first();

        $rules = [];
        if (!$request->filled('favicon') && is_null($basic->favicon)) {
            $rules['favicon'] = 'required';
        }
        if ($request->hasFile('favicon')) {
            $rules['favicon'] = new ImageMimeTypeRule();
        }

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $validator->getMessageBag()->add('error', 'true');
        }
    }    


    public function themes(Request $request)
    {
    $userId = getRootUser()->id;
    // Get user's package allowed themes
    $package = LimitCheckerHelper::getPackageSelectedData($userId, 'allowed_themes');
    $allowedThemes = $package && $package->allowed_themes ? json_decode($package->allowed_themes, true) : [];
    $lang = Language::where('code', $request->language)
                   ->where('user_id', $userId)
                   ->firstOrFail();
    
    $data['abs'] = $lang->basic_setting; 
    $data['allowedThemes'] = $allowedThemes;
    return view('user.basic.themes', $data);
       }
   }