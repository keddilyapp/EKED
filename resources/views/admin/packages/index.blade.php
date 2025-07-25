@extends('admin.layout')

@section('content')
    <div class="page-header">
        <h4 class="page-title">{{ __('Packages') }}</h4>
        <ul class="breadcrumbs">
            <li class="nav-home">
                <a href="{{ route('admin.dashboard') }}">
                    <i class="flaticon-home"></i>
                </a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">{{ __('Packages') }}</a>
            </li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card-title d-inline-block">{{ __('Package Page') }}</div>
                        </div>
                        <div class="col-lg-4 offset-lg-4 mt-2 mt-lg-0">
                            <a href="#" class="btn btn-primary float-right btn-sm" data-toggle="modal"
                                data-target="#createModal"><i class="fas fa-plus"></i>
                                {{ __('Add Package') }}</a>
                            <button class="btn btn-danger float-right btn-sm mr-2 d-none bulk-delete"
                                data-href="{{ route('admin.package.bulk.delete') }}"><i class="flaticon-interface-5"></i>
                                {{ __('Delete') }}
                            </button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            @if (count($packages) == 0)
                                <h3 class="text-center">{{ __('NO PACKAGE FOUND YET') }}</h3>
                            @else
                                <div class="table-responsive">
                                    <table class="table table-striped mt-3" id="basic-datatables">
                                        <thead>
                                            <tr>
                                                <th scope="col">
                                                    <input type="checkbox" class="bulk-check" data-val="all">
                                                </th>
                                                <th scope="col" width="35%">{{ __('Title') }}</th>
                                                <th scope="col">{{ __('Price') }}</th>
                                                <th scope="col">{{ __('Themes') }}</th>
                                                <th scope="col">{{ __('Payment') }}</th>
                                                <th scope="col">{{ __('Status') }}</th>
                                                <th scope="col">{{ __('Actions') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($packages as $key => $package)
                                                <tr>
                                                    <td>
                                                        <input type="checkbox" class="bulk-check"
                                                            data-val="{{ $package->id }}">
                                                    </td>
                                                    <td>
                                                         {{ strlen($package->title) > 120 ? mb_substr($package->title, 0, 120, 'UTF-8') . '...' : $package->title }}
                                                        <span class="badge badge-primary">{{ $package->term }}</span>
                                                    </td>
                                                    <td>
                                                        @if ($package->price == 0)
                                                            {{ __('Free') }}
                                                        @else
                                                            {{ format_price($package->price) }}
                                                        @endif

                                                    </td>
                                                    <td>
                                                        {{-- Add theme display logic here --}}
                                                    </td>
                                                    <td>
                                                        {{-- Add payment display logic here --}}
                                                    </td>
                                                    <td>
                                                        @if ($package->status == 1)
                                                            <h2 class="d-inline-block">
                                                                <span
                                                                    class="badge badge-success">{{ __('Active') }}</span>
                                                            </h2>
                                                        @else
                                                            <h2 class="d-inline-block">
                                                                <span
                                                                    class="badge badge-danger">{{ __('Deactive') }}</span>
                                                            </h2>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <a class="btn btn-secondary btn-sm my-2"
                                                            href="{{ route('admin.package.edit', $package->id) . '?language=' . request()->input('language') }}">
                                                            <span class="btn-label">
                                                                <i class="fas fa-edit"></i>
                                                            </span>

                                                        </a>
                                                        <form class="deleteform d-inline-block"
                                                            action="{{ route('admin.package.delete') }}" method="post">
                                                            @csrf
                                                            <input type="hidden" name="package_id"
                                                                value="{{ $package->id }}">
                                                            <button type="submit" class="btn btn-danger btn-sm deletebtn">
                                                                <span class="btn-label">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>

                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">{{ __('Add Package') }}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form id="ajaxForm" enctype="multipart/form-data" class="modal-form"
                        action="{{ route('admin.package.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="title">{{ __('Package title') }}*</label>
                            <input id="title" type="text" class="form-control" name="title"
                                placeholder="{{ __('Enter Package title') }}" value="">
                            <p id="errtitle" class="mb-0 text-danger em"></p>
                        </div>
                        <div class="form-group">
                            <label for="price">{{ __('Price') }} ({{ $bex->base_currency_text }})*</label>
                            <input id="price" type="number" class="form-control" name="price"
                                placeholder="{{ __('Enter Package price') }}" value="">
                            <p class="text-warning mb-0">
                                <small>{{ __('If price is 0 , then it will appear as free') }}</small>
                            </p>
                            <p id="errprice" class="mb-0 text-danger em"></p>
                        </div>
                        <div class="form-group">
                            <label for="term">{{ __('Package term') }}*</label>
                            <select id="term" name="term" class="form-control" required>
                                <option value="" selected disabled>{{ __('Choose a Package term') }}</option>
                                <option value="month">{{ __('month') }}</option>
                                <option value="year">{{ __('year') }}</option>
                                <option value="lifetime">{{ __('lifetime') }}</option>
                            </select>
                            <p id="errterm" class="mb-0 text-danger em"></p>
                        </div>


                        <div class="form-group">

                            <label class="form-label">{{ __('Package Features') }}</label>
                            <div class="selectgroup selectgroup-pills">
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Custom Domain"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Custom Domain') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Subdomain"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Subdomain') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="POS" class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('POS') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Coupon" class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Coupon') }}</span>
                                </label>
                                <label class="selectgroup-item awsBtn">
                                    <input type="checkbox" name="features[]" value="Amazon AWS s3"
                                        class="selectgroup-input awsInput">
                                    <span class="selectgroup-button">{{ __('Amazon AWS s3') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Storage Limit"
                                        class="selectgroup-input storageLabel" id="storage">
                                    <span class="selectgroup-button">{{ __('Storage Limit') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Live Orders"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Realtime Order Refresh & Notification') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Whatsapp Order & Notification"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Whatsapp Order & Notification') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="QR Menu" class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('QR Menu') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Table Reservation"
                                        class="selectgroup-input" id="table-reservations">
                                    <span class="selectgroup-button">{{ __('Table Reservation') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Table QR Builder"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Table QR Builder') }}</span>
                                </label>
                                <label class="selectgroup-item" id="call_waiter">
                                    <input type="checkbox" name="features[]" value="Call Waiter"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Call Waiter') }}</span>
                                </label>

                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Staffs" class="selectgroup-input"
                                        id="staffs">
                                    <span class="selectgroup-button">{{ __('Staffs') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Blog" class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Blog') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Custom Page"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Custom Page') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Online Order"
                                        class="selectgroup-input" id="orders">
                                    <span class="selectgroup-button">{{ __('Online Order') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="On Table" id="onTable"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('On Table') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Pick Up" class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Pick Up') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="Home Delivery" id="home_delivery"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Home Delivery') }}</span>
                                </label>
                                <label class="selectgroup-item" id="postal_code">
                                    <input type="checkbox" name="features[]" value="Postal Code Based Delivery Charge"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('Postal Code Based Delivery Charge') }}</span>
                                </label>
                                <label class="selectgroup-item">
                                    <input type="checkbox" name="features[]" value="PWA Installability"
                                        class="selectgroup-input">
                                    <span class="selectgroup-button">{{ __('PWA Installability') }}</span>
                                </label>
                            </div>

                            <p id="erronline_order" class="mb-0 text-danger em"></p>
                            <p id="errpos_order" class="mb-0 text-danger em"></p>
                            <p id="errfeatures" class="mb-0 text-danger em"></p>
                                                    </div>
                                                </div>

                                                <!-- Allowed Themes Section -->
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <label for="">{{__('Allowed Themes')}} **</label>
                                                            <div class="selectgroup selectgroup-pills">
                                                                @php
                                                                    $themes = ['bakery', 'beverage', 'coffee', 'fastfood', 'grocery', 'medicine', 'pizza'];
                                                                @endphp
                                                                @foreach($themes as $theme)
                                                                    <label class="selectgroup-item">
                                                                        <input type="checkbox" name="allowed_themes[]" value="{{$theme}}" class="selectgroup-input">
                                                                        <span class="selectgroup-button">{{ucfirst($theme)}}</span>
                                                                    </label>
                                                                @endforeach
                                                            </div>
                                                            <p class="text-warning mb-0">{{__('Leave unchecked to allow all themes')}}</p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Payment Options Section -->
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <label for="">{{__('Online Payment')}} **</label>
                                                            <div class="selectgroup w-100">
                                                                <label class="selectgroup-item">
                                                                    <input type="radio" name="online_payment_enabled" value="1" class="selectgroup-input" checked>
                                                                    <span class="selectgroup-button">{{__('Enable')}}</span>
                                                                </label>
                                                                <label class="selectgroup-item">
                                                                    <input type="radio" name="online_payment_enabled" value="0" class="selectgroup-input">
                                                                    <span class="selectgroup-button">{{__('Disable')}}</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="form-group">
                                                            <label for="">{{__('Offline Payment')}} **</label>
                                                            <div class="selectgroup w-100">
                                                                <label class="selectgroup-item">
                                                                    <input type="radio" name="offline_payment_enabled" value="1" class="selectgroup-input" checked>
                                                                    <span class="selectgroup-button">{{__('Enable')}}</span>
                                                                </label>
                                                                <label class="selectgroup-item">
                                                                    <input type="radio" name="offline_payment_enabled" value="0" class="selectgroup-input">
                                                                    <span class="selectgroup-button">{{__('Disable')}}</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- Allowed Payment Gateways Section -->
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <label for="">{{__('Allowed Payment Gateways')}} **</label>
                                                            <div class="selectgroup selectgroup-pills">
                                                                @php
                                                                    $gateways = ['paypal', 'stripe', 'razorpay', 'paytm', 'paystack', 'mollie', 'instamojo', 'flutterwave', 'mercadopago', 'midtrans', 'iyzico', 'toyyibpay', 'paytabs', 'phonepe', 'perfectmoney', 'authorizenet', 'myfatoorah', 'xendit'];
                                                                @endphp
                                                                @foreach($gateways as $gateway)
                                                                    <label class="selectgroup-item">
                                                                        <input type="checkbox" name="payment_gateways[]" value="{{$gateway}}" class="selectgroup-input">
                                                                        <span class="selectgroup-button">{{ucfirst($gateway)}}</span>
                                                                    </label>
                                                                @endforeach
                                                            </div>
                                                            <p class="text-warning mb-0">{{__('Leave unchecked to allow all payment gateways')}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>