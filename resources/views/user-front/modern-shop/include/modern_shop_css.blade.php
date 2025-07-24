
<!--  Modern Shop All CSS -->
    
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/vendors/bootstrap.min.css')}}">

<!-- Fontawesome Icon CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/fonts/fontawesome/css/all.min.css')}}">

<!-- Icomoon Icon CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/fonts/icomoon/style.css')}}">

<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/vendors/magnific-popup.min.css')}}">

<!-- Swiper Slider -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/vendors/swiper-bundle.min.css')}}">

<!-- AOS Animation CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/vendors/aos.min.css')}}">

<!-- Animate CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/vendors/animate.min.css')}}">

<!-- Main Style CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/modern-shop.css')}}">

<!-- Responsive CSS -->
<link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/responsive.css')}}">

@if ($rtl == 1)
    <!-- RTL CSS -->
    <link rel="stylesheet" href="{{ asset('assets/restaurant/modern-shop/assets/css/rtl.css')}}">
@endif

<!-- Custom CSS -->
<style>
    :root {
        --color-primary: {{ $websiteInfo->primary_color ?? '#2563eb' }};
        --color-secondary: {{ $websiteInfo->secondary_color ?? '#f59e0b' }};
        --breadcrumb-overlay-color: {{ $websiteInfo->breadcrumb_overlay_color ?? 'rgba(0, 0, 0, 0.4)' }};
        --breadcrumb-overlay-opacity: {{ $websiteInfo->breadcrumb_overlay_opacity ?? '0.7' }};
    }
    
    @if(isset($websiteInfo->is_recaptcha) && $websiteInfo->is_recaptcha == 1)
    .grecaptcha-badge {
        visibility: hidden;
    }
    @endif
</style>