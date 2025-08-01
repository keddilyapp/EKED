@php
  use App\Constants\Constant;
  use App\Http\Helpers\Uploader;
@endphp

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>

  <style>
    .container {
      width: 100%;
      margin-right: auto;
      margin-left: auto
    }

    @media (min-width: 576px) {
      .container {
        max-width: 560px
      }
    }

    @media (min-width: 768px) {
      .container {
        max-width: 750px
      }
    }

    @media (min-width: 992px) {
      .container {
        max-width: 960px
      }
    }

    @media (min-width: 1200px) {
      .container {
        max-width: 1140px
      }
    }

    .container-fluid {
      width: 100%;
      padding-right: 30px;
      padding-left: 30px;
      margin-right: auto;
      margin-left: auto
    }

    .row {
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      margin-right: -15px;
      margin-left: -15px
    }

    @media (min-width: 992px) {
      .col-lg-6 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%
      }

      .col-lg-12 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 100%;
        flex: 0 0 100%;
        max-width: 100%
      }
    }

    .table {
      width: 100%;
      max-width: 100%;
      margin-bottom: 1rem;
      background-color: transparent;
    }

    .table td,
    .table th {
      padding: 3px;
      vertical-align: top;
      border-top: 1px solid #dee2e6
    }

    .table thead th {
      vertical-align: bottom;
      border-bottom: 2px solid #dee2e6;
      text-align: left;
    }

    .table tbody+tbody {
      border-top: 2px solid #dee2e6
    }

    .table .table {
      background-color: #fff
    }

    .table-sm td,
    .table-sm th {
      padding: .3rem
    }

    .table-bordered {
      border: 1px solid #dee2e6
    }

    .table-bordered td,
    .table-bordered th {
      border: 1px solid #dee2e6
    }

    .table-bordered thead td,
    .table-bordered thead th {
      border-bottom-width: 2px
    }

    .table-striped tbody tr:nth-of-type(odd) {
      background-color: rgba(0, 0, 0, .05)
    }

    .table-hover tbody tr:hover {
      background-color: rgba(0, 0, 0, .075)
    }

    .table-responsive {
      display: block;
      width: 100%;
      overflow-x: auto;
      -webkit-overflow-scrolling: touch;
      -ms-overflow-style: -ms-autohiding-scrollbar
    }

    .table-responsive>.table-bordered {
      border: 0
    }

    .bg-primary {
      background-color: #007bff !important
    }

    a.bg-primary:focus,
    a.bg-primary:hover,
    button.bg-primary:focus,
    button.bg-primary:hover {
      background-color: #0062cc !important
    }

    .text-center {
      text-align: center !important
    }

    .bold {
      font-weight: bold;
    }

    .color-white {
      color: #fff !important;
    }

    .mb-10 {
      margin-bottom: 10px !important;
    }

    .mb-20 {
      margin-bottom: 20px !important;
    }

    .m-6 {
      margin: 6px !important;
    }

    .mtb-10 {
      margin-block: 10px !important;
    }
  </style>
</head>

<body>
  <div class="order-comfirmation">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="logo text-center pt-10">
            @if ($userBs->logo)
              <img src="{{ Uploader::getImageUrl(Constant::WEBSITE_LOGO, $userBs->logo, $userBs) }}" alt="">
            @else
              <img src="{{ asset('assets/restaurant/images/logo.png') }}" alt="Logo">
            @endif
          </div>
          <div class="confirmation-message bg-primary mb-10">
            <h2 class="text-center">
              <strong class="color-white">{{ $keywords['ORDER INVOICE'] ?? __('ORDER INVOICE') }}</strong>
            </h2>
          </div>

          <div class="row">
            <div class="col-lg-6">
              <div>
                <h3 class="mtb-10"><strong>{{ $keywords['Order Details'] ?? __('Order Details') }}</strong></h3>
              </div>
              <table class="table table-striped">
                <tbody>
                  @if (!empty($order->token_no))
                    <tr>
                      <td class="bold">{{ $keywords['Token No'] ?? __('Token No') }}:</td>
                      <td>#{{ $order->token_no }}</td>
                    </tr>
                  @endif
                  <tr>
                    <td class="bold">{{ $keywords['Order Number'] ?? __('Order Number') }}:</td>
                    <td>#{{ $order->order_number }}</td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Order Date'] ?? __('Order Date') }}:</td>
                    <td>{{ $order->created_at->format('d-m-Y') }}</td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Serving Method'] ?? __('Serving Method') }}:
                    </td>
                    <td>
                      @if (strtolower($order->serving_method) == 'on_table')
                        {{ $keywords['On Table'] ?? __('On Table') }}
                      @elseif(strtolower($order->serving_method) == 'home_delivery')
                        {{ $keywords['Home Delivery'] ?? __('Home Delivery') }}
                      @elseif(strtolower($order->serving_method) == 'pick_up')
                        {{ $keywords['Pick Up'] ?? __('Pick Up') }}
                      @endif
                    </td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Payment Method'] ?? __('Payment Method') }}:
                    </td>
                    <td class="text-capitalize">
                      {{ $order->method }}
                    </td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Payment Status'] ?? __('Payment Status') }}:
                    </td>
                    <td class="text-capitalize">
                      {{ $order->payment_status }}
                    </td>
                  </tr>
                  @if (!empty($order->shipping_method))
                    <tr>
                      <td class="bold">
                        {{ $keywords['Shipping Method'] ?? __('Shipping Method') }}:</td>
                      <td class="text-capitalize">
                        {{ $order->shipping_method }}
                      </td>
                    </tr>
                  @endif

                  @php
                    if (Session::has('user')) {
                        $user = Session::get('user');
                    } else {
                        $user = getUser();
                    }
                    $cart = collect(session()->get($user->username . '_cart'));
                    $cartTotal = $cart->sum('total');
                    $discount = 0;
                    if (!empty($order->coupon)) {
                        $discount = $order->coupon;
                    }

                  @endphp
                  <tr>
                    <td class="bold"> {{ $keywords['Cart Total'] ?? __('Cart Total') }}:</td>
                    <td class="text-capitalize">
                      <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                      {{ $cartTotal }}
                      <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                    </td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Discount'] ?? __('Discount') }}:</td>
                    <td class="text-capitalize">
                      @if (!empty($data->coupon))
                        <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                        {{ $order->coupon }}
                        <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                      @else
                        <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                        {{ $discount }}
                        <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                      @endif
                    </td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Subtotal'] ?? __('Subtotal') }}:</td>
                    <td class="text-capitalize">
                      <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                      {{ $cartTotal - $discount }}
                      <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                    </td>
                  </tr>

                  <tr>
                    <td class="bold">{{ $keywords['Tax'] ?? __('Tax') }}:</td>
                    <td class="text-capitalize">
                      <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                      {{ $order->tax }}
                      <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                    </td>
                  </tr>

                  <tr>
                    <td class="bold">{{ $keywords['Shipping Charge'] ?? __('Shipping Charge') }}:
                    </td>
                    <td class="text-capitalize">
                      @if ($order->shipping_charge)
                        <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                        {{ $order->shipping_charge }}
                        <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                      @else
                        <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                        0.00
                        <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                      @endif
                    </td>
                  </tr>
                  <tr>
                    <td class="bold">{{ $keywords['Grand Total'] ?? __('Grand Total') }}:</td>
                    <td class="text-capitalize">
                      <span>{{ $userBe->base_currency_text_position == 'left' ? $userBe->base_currency_text : '' }}</span>
                      {{ $order->total }}
                      <span>{{ $userBe->base_currency_text_position == 'right' ? $userBe->base_currency_text : '' }}</span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div>
                <h3 class="mtb-10">
                  <strong>
                    @if ($order->serving_method == 'home_delivery')
                      {{ $keywords['Billing Details'] ?? __('Billing Details') }}
                    @else
                      {{ $keywords['Information'] ?? __('Information') }}
                    @endif
                  </strong>
                </h3>
              </div>
              <table class="table table-striped">
                <tbody>
                  @if (!empty($order->billing_lname))
                    <tr>
                      <td class="bold">{{ $keywords['Billing Name'] ?? __('Billing Name') }}:
                      </td>
                      <td>{{ $order->billing_fname }} {{ $order->billing_lname }}</td>
                    </tr>
                  @endif
                  @if (!empty($order->billing_email))
                    <tr>
                      <td class="bold">{{ $keywords['Billing Email'] ?? __('Billing Email') }}:
                      </td>
                      <td>{{ $order->billing_email }}</td>
                    </tr>
                  @endif
                  @if (!empty($order->billing_number))
                    <tr>
                      <td class="bold">
                        {{ $keywords['Billing Number'] ?? __('Billing Number') }}:</td>
                      <td>{{ $order->billing_number }}</td>
                    </tr>
                  @endif
                  @if (!empty($order->billing_address))
                    <tr>
                      <td class="bold">
                        {{ $keywords['Billing Address'] ?? __('Billing Address') }}:</td>
                      <td>{{ $order->billing_address }}</td>
                    </tr>
                  @endif
                  @if (!empty($order->billing_city))
                    <tr>
                      <td class="bold">{{ $keywords['Billing City'] ?? __('Billing City') }}:
                      </td>
                      <td>{{ $order->billing_city }}</td>
                    </tr>
                  @endif
                  @if (!empty($order->billing_country))
                    <tr>
                      <td class="bold">
                        {{ $keywords['Billing Country'] ?? __('Billing Country') }}:</td>
                      <td>{{ $order->billing_country }}</td>
                    </tr>
                  @endif

                  @if ($order->serving_method == 'on_table')
                    @if (!empty($order->table_number))
                      <tr>
                        <td class="bold">
                          {{ $keywords['Table Number'] ?? __('Table Number') }}:</td>
                        <td>{{ $order->table_number }}</td>
                      </tr>
                    @endif
                    @if (!empty($order->waiter_name))
                      <tr>
                        <td class="bold">{{ $keywords['Waiter Name'] ?? __('Waiter Name') }}:
                        </td>
                        <td>{{ $order->waiter_name }}</td>
                      </tr>
                    @endif
                  @endif

                  @if ($order->serving_method == 'pick_up')
                    @if (!empty($order->pick_up_date))
                      <tr>
                        <td class="bold">
                          {{ $keywords['Pick up Date'] ?? __('Pick up Date') }}:</td>
                        <td>{{ $order->pick_up_date }}</td>
                      </tr>
                    @endif
                    @if (!empty($order->pick_up_time))
                      <tr>
                        <td class="bold">
                          {{ $keywords['Pick up Time'] ?? __('Pick up Time') }}:</td>
                        <td>{{ $order->pick_up_time }}</td>
                      </tr>
                    @endif
                  @endif
                </tbody>
              </table>
            </div>
            @if ($order->serving_method == 'home_delivery')
              <div class="col-lg-6">
                <div>
                  <h3><strong>{{ $keywords['Shipping Details'] ?? __('Shipping Details') }}</strong>
                  </h3>
                </div>
                <table class="table table-striped">
                  <tbody>
                    <tr>
                      <td class="bold">{{ $keywords['Shipping Name'] ?? __('Shipping Name') }}:
                      </td>
                      <td>{{ $order->shipping_fname }} {{ $order->shipping_lname }}</td>
                    </tr>
                    <tr>
                      <td class="bold">
                        {{ $keywords['Shipping Email'] ?? __('Shipping Email') }}:</td>
                      <td>{{ $order->shipping_email }}</td>
                    </tr>
                    <tr>
                      <td class="bold">
                        {{ $keywords['Shipping Number'] ?? __('Shipping Number') }}:</td>
                      <td>{{ $order->shipping_number }}</td>
                    </tr>
                    <tr>
                      <td class="bold">
                        {{ $keywords['Shipping Address'] ?? __('Shipping Address') }}:</td>
                      <td>{{ $order->shipping_address }}</td>
                    </tr>
                    <tr>
                      <td class="bold">{{ $keywords['Shipping City'] ?? __('Shipping City') }}: </td>
                      <td>{{ $order->shipping_city }}</td>
                    </tr>
                    <tr>
                      <td class="bold"> {{ $keywords['Shipping Country'] ?? __('Shipping Country') }}:</td>
                      <td>{{ $order->shipping_country }}</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            @endif
          </div>
          <div class="row">
            <div class="col-lg-12">
              <div>
                <h3 class="mtb-10"><strong>{{ $keywords['Ordered Products'] ?? __('Ordered Products') }}</strong></h3>
              </div>

              <table class="table table-striped mb-20">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Product Title</th>
                    <th scope="col">Price</th>
                    <th scope="col">Qty</th>
                    <th scope="col">Total</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($order->orderitems as $key => $item)
                    <tr>
                      <th>{{ $key + 1 }}</th>
                      <td>
                        <h4 class="m-6"><strong>{{ $item->title }}</strong></h4>
                        @php
                          $variations = json_decode($item->variations, true);
                        @endphp
                        @if (!empty($variations))
                          <p class="m-6"><strong>{{ $keywords['Variation'] ?? __('Variation') }}:</strong>
                            <br>
                            @foreach ($variations as $vKey => $variation)
                              <span class="text-capitalize">{{ str_replace('_', ' ', $vKey) }}:</span>
                              {{ $variation['name'] }}
                              @if (!$loop->last)
                                ,
                              @endif
                            @endforeach
                          </p>
                        @endif
                        @php
                          $addons = json_decode($item->addons, true);
                        @endphp
                        @if (!empty($addons))
                          <p class="m-6">
                            <strong>{{ $keywords['Addons'] ?? __('Addons') }}:</strong>
                            @foreach ($addons as $addon)
                              {{ $addon['name'] }}
                              @if (!$loop->last)
                                ,
                              @endif
                            @endforeach
                          </p>
                        @endif
                      </td>
                      <td>
                        <p class="m-6">
                          <strong>{{ $keywords['Product'] ?? __('Product') }}:</strong>
                          {{ $order->currency_code_position == 'left' ? $order->currency_code : '' }}
                          <span>{{ (float) $item->product_price }}</span>
                          {{ $order->currency_code_position == 'right' ? $order->currency_code : '' }}
                        </p>
                        @if (is_array($variations))
                          <p class="m-6">
                            <strong>{{ $keywords['Variation'] ?? __('Variation') }}:
                            </strong>
                            {{ $order->currency_code_position == 'left' ? $order->currency_code : '' }}
                            <span>{{ (float) $item->variations_price }}</span>
                            {{ $order->currency_code_position == 'right' ? $order->currency_code : '' }}
                          </p>
                        @endif
                        @if (is_array($addons))
                          <p class="m-6">
                            <strong>{{ $keywords['Addons'] ?? __('Addons') }}: </strong>
                            {{ $order->currency_code_position == 'left' ? $order->currency_code : '' }}
                            <span>{{ (float) $item->addons_price }}</span>
                            {{ $order->currency_code_position == 'right' ? $order->currency_code : '' }}
                          </p>
                        @endif
                      </td>
                      <td>{{ $item->qty }}</td>
                      <td>
                        <span>{{ $order->currency_code_position == 'left' ? $order->currency_code : '' }}</span>
                        {{ $item->total }}
                        <span>{{ $order->currency_code_position == 'right' ? $order->currency_code : '' }}</span>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
