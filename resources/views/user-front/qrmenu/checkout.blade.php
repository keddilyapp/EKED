@php
  use App\Constants\Constant;
  use App\Http\Helpers\Uploader;
  use App\Models\User\Product;
@endphp

@extends('user-front.qrmenu.layout')

@section('page-heading')
  {{ $upageHeading?->checkout_page_title }}
@endsection


@section('meta-keywords', !empty($userSeo) ? $userSeo->checkout_meta_keywords : '')
@section('meta-description', !empty($userSeo) ? $userSeo->checkout_meta_description : '')

@section('content')

  @php
    session()->forget('warning');
  @endphp
  <section class="checkout-area">
    <form action="" method="POST" id="payment" enctype="multipart/form-data">
      @csrf
      <div class="container">
        <div class="row">
          <div class="col-12 mb-5">
            <div class="table">
              <div class="shop-title-box">
                <h3>{{ $keywords['Serving Method'] ?? __('Serving Method') }}</h3>
              </div>
              <table class="cart-table shipping-method">
                <thead class="cart-header">
                  <tr>
                    <th>#</th>
                    <th>{{ $keywords['Method'] ?? __('Method') }}</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($smethods as $sm)
                    @if (Session::has('table'))
                      @if (!empty($packagePermissions) && in_array('On Table', $packagePermissions) && $sm->value == 'on_table')
                        <tr>
                          <td>
                            <input type="radio" name="serving_method" class="shipping-charge"
                              value="{{ $sm->value }}"
                              @if (empty(old()) && $loop->first) checked
                                                           @elseif(old('serving_method') == $sm->value)
                                                               checked @endif
                              data-gateways="{{ $sm->gateways }}">
                          </td>
                          <td>
                            <p class="mb-1">
                              <strong>{{ $keywords[$sm->name] ?? __($sm->name) }}</strong>
                            </p>
                            <p class="mb-0">
                              <small>{{ $keywords[$sm->note] ?? __($sm->note) }}</small>
                            </p>
                          </td>
                        </tr>
                      @endif
                    @else
                      @if (!empty($packagePermissions) && in_array($sm->name, $packagePermissions))
                        <tr>
                          <td>
                            <input type="radio" name="serving_method" class="shipping-charge"
                              value="{{ $sm->value }}"
                              @if (empty(old()) && $loop->first) checked
                                                           @elseif(old('serving_method') == $sm->value)
                                                               checked @endif
                              data-gateways="{{ $sm->gateways }}">
                          </td>
                          <td>
                            @php
                              $smname = str_replace(' ', '_', $sm->name);
                            @endphp
                            <p class="mb-1">
                              <strong>{{ $keywords[$smname] ?? __($sm->name) }}</strong>
                            </p>
                            <p class="mb-0">
                              <small>{{ $keywords[$sm->note] ?? __($sm->note) }}</small>
                            </p>
                          </td>
                        </tr>
                      @else
                        <tr class="d-none">
                          <td>
                            <input type="radio" name="serving_method" class="shipping-charge"
                              value="{{ $sm->value }}"
                              @if (empty(old()) && $loop->first) checked
                                                           @elseif(old('serving_method') == $sm->value)
                                                               checked @endif
                              data-gateways="{{ $sm->gateways }}">
                          </td>
                          <td>
                            @php
                              $smname = str_replace(' ', '_', $sm->name);
                            @endphp
                            <p class="mb-1">
                              <strong>{{ $keywords[$smname] ?? __($sm->name) }}</strong>
                            </p>
                            <p class="mb-0">
                              <small>{{ $keywords[$sm->note] ?? __($sm->note) }}</small>
                            </p>
                          </td>
                        </tr>
                      @endif
                    @endif
                  @endforeach
                </tbody>
              </table>
              @error('serving_method')
                <p class="text-danger mb-0">{{ convertUtf8($message) }}</p>
              @enderror
            </div>
          </div>
        </div>
        <input type="hidden" name="ordered_from" value="qr">
        <div class="form-container" id="home_delivery">
          @includeIf('user-front.qrmenu.partials.home_delivery_form')
        </div>
        <div class="form-container d-none" id="pick_up">
          @includeIf('user-front.qrmenu.partials.pick_up_form')
        </div>
        <div class="form-container d-none" id="on_table">
          @includeIf('user-front.qrmenu.partials.on_table_form')
        </div>
        <div class="row">
          <div class="col-12">
            <div class="field-label">{{ $keywords['Order Notes'] ?? __('Order Notes') }} </div>
            <div class="field-input">
              <textarea name="order_notes" cols="30" rows="10"></textarea>
            </div>
          </div>
        </div>
        <div id="paymentInputs"></div>
      </div>
      <div class="bottom">
        <div class="container">
          <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12">
              <div class="table">
                <div class="shop-title-box">
                  <h3>{{ $keywords['Order Summary'] ?? __('Order Summary') }}</h3>
                </div>
                @php
                  $total = 0;
                @endphp
                @if (!empty($cart))
                  <table class="cart-table">
                    <thead class="cart-header">
                      <tr>
                        <th class="prod-column" width="10%">
                          {{ $keywords['Product'] ?? __('Product') }}</th>
                        <th width="70%">{{ $keywords['Product Title'] ?? __('Product Title') }}
                        </th>
                        <th>{{ $keywords['Quantity'] ?? __('Quantity') }}</th>
                        <th>{{ $keywords['Total'] ?? __('Total') }}</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($cart as $key => $item)
                        @php
                          $id = $item['id'];
                          if (session()->has('user_lang')) {
                              $lang = App\Models\User\Language::where('code', session()->get('user_lang'))
                                  ->where('user_id', getUser()->id)
                                  ->first();
                          } else {
                              $lang = App\Models\User\Language::where('is_default', 1)
                                  ->where('user_id', getUser()->id)
                                  ->first();
                          }
                          $product = Product::query()
                              ->join('product_informations', 'product_informations.product_id', 'products.id')
                              ->where('product_informations.language_id', $lang->id)
                              ->where('products.user_id', $user->id)
                              ->where('products.id', $id)
                              ->first();
                          $total += $item['total'];
                        @endphp

                        <tr class="remove{{ $id }}">
                          <td class="prod-column" width="10%">
                            <div class="column-box">
                              <div class="prod-thumb">
                                <img class="lazy"
                                  data-src="{{ Uploader::getImageUrl(Constant::WEBSITE_PRODUCT_FEATURED_IMAGE, $item['photo'], $userBs) }}"
                                  alt="" width="100">
                              </div>
                            </div>
                          </td>
                          <td width="70%">
                            <div class="title">
                              <h5 class="prod-title">
                                {{ strlen($product->title) > 27 ? mb_substr($product->title, 0, 27, 'UTF-8') . '...' : $product->title }}
                              </h5>
                              @if (!empty($item['variations']))
                                @php
                                  $variations = $item['variations'];
                                  $prokeywords = json_decode($product->keywords, true);
                                  $addonkeywords = json_decode($product->addon_keywords, true);

                                @endphp
                                <p><strong>{{ $keywords['Variation'] ?? __('Variation') }}:</strong>
                                  <br>
                                  @php
                                    $variations = $item['variations'];
                                  @endphp
                                  @foreach ($variations as $vKey => $variation)
                                    @php
                                      $vname = $userCurrentLang->code . '_' . str_replace('_', ' ', $vKey);
                                      $voption = $userCurrentLang->code . '_' . $variation['name'];

                                      $variationName = isset($prokeywords['variation_name'][$vname])
                                          ? $prokeywords['variation_name'][$vname]
                                          : '';
                                      $optionName = isset($prokeywords['option_name'][$voption])
                                          ? $prokeywords['option_name'][$voption]
                                          : '';
                                    @endphp
                                    @if (!empty($variationName))
                                      <span
                                        class="text-capitalize font-weight-bold {{ $userCurrentLang->rtl == 1 ? 'd-inline-block' : '' }}">{{ $variationName }}
                                        :</span>
                                      <span
                                        class="{{ $userCurrentLang->rtl == 1 ? 'd-inline-block' : '' }}">{{ $optionName }}</span>
                                      @if (!$loop->last)
                                        <span class="{{ $userCurrentLang->rtl == 1 ? 'd-inline-block' : '' }}">,</span>
                                      @endif
                                    @endif
                                  @endforeach
                                </p>
                              @endif
                              @if (!empty($item['addons']))
                                <p>
                                  <strong>{{ $keywords['Addons'] ?? __('Addons') }}:</strong>
                                  @php
                                    $addons = $item['addons'];
                                  @endphp
                                  @foreach ($addons as $addon)
                                    @php
                                      $addonkeywords = json_decode($product->addon_keywords, true);

                                      $aname = $userCurrentLang->code . '_' . $addon['name'];

                                    @endphp
                                    <span
                                      class="{{ $userCurrentLang->rtl == 1 ? 'd-inline-block' : '' }}">{{ $addonkeywords['addon_name'][$aname] }}</span>

                                    @if (!$loop->last)
                                      <span class="{{ $userCurrentLang->rtl == 1 ? 'd-inline-block' : '' }}">,</span>
                                    @endif
                                  @endforeach
                                </p>
                              @endif
                            </div>
                          </td>
                          <td class="qty">
                            {{ $item['qty'] }}
                          </td>

                          <input type="hidden" value="{{ $id }}" class="product_id">
                          <td class="sub-total">
                            {{ $userBe->base_currency_symbol_position == 'left' ? $userBe->base_currency_symbol : '' }}
                            {{ $item['total'] }}
                            {{ $userBe->base_currency_symbol_position == 'right' ? $userBe->base_currency_symbol : '' }}
                          </td>
                        </tr>
                      @endforeach
                    @else
                      <div class="py-5 bg-light text-center">
                        <h5>{{ $keywords['Cart is empty'] ?? __('Cart is empty!') }}</h5>
                      </div>
                @endif
                </tbody>
                </table>
                <div class="text-center my-4">
                  <a href="{{ route('user.front.qrmenu', getParam()) }}"
                    class="main-btn main-btn-2">{{ $keywords['Return to Menu'] ?? __('Return to Menu') }}</a>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12">
              @includeIf('user-front.qrmenu.partials.order_total')
            </div>
          </div>
        </div>
      </div>
    </form>
  </section>
@endsection

@section('script')
  <script src="https://js.stripe.com/v3/"></script>
  @includeIf('user-front.qrmenu.partials.scripts')
@endsection
