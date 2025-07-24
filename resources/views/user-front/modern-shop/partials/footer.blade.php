
<footer class="modern-footer bg-dark text-white py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="footer-widget">
          <h5 class="widget-title mb-3">{{ $websiteInfo->website_title }}</h5>
          <p class="widget-text">{{ $websiteInfo->footer_text }}</p>
          @if (!empty($socials))
            <div class="social-links mt-3">
              @foreach ($socials as $social)
                <a href="{{ $social->url }}" class="social-link me-2" target="_blank">
                  <i class="{{ $social->icon }}"></i>
                </a>
              @endforeach
            </div>
          @endif
        </div>
      </div>
      
      <div class="col-lg-2 col-md-6 mb-4">
        <div class="footer-widget">
          <h5 class="widget-title mb-3">{{ __('Quick Links') }}</h5>
          <ul class="footer-links">
            <li><a href="{{ route('user.front.index', getParam()) }}">{{ __('Home') }}</a></li>
            <li><a href="{{ route('user.front.items', getParam()) }}">{{ __('Shop') }}</a></li>
            <li><a href="{{ route('user.front.blogs', getParam()) }}">{{ __('Blog') }}</a></li>
            <li><a href="{{ route('user.front.contact', getParam()) }}">{{ __('Contact') }}</a></li>
          </ul>
        </div>
      </div>
      
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="footer-widget">
          <h5 class="widget-title mb-3">{{ __('Categories') }}</h5>
          <ul class="footer-links">
            @if (!empty($categories))
              @foreach ($categories->take(5) as $category)
                <li><a href="{{ route('user.front.items', [getParam(), 'category_id' => $category->id]) }}">{{ $category->name }}</a></li>
              @endforeach
            @endif
          </ul>
        </div>
      </div>
      
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="footer-widget">
          <h5 class="widget-title mb-3">{{ __('Contact Info') }}</h5>
          <div class="contact-info">
            @if (!empty($websiteInfo->contact_number))
              <p><i class="fas fa-phone me-2"></i>{{ $websiteInfo->contact_number }}</p>
            @endif
            @if (!empty($websiteInfo->contact_mail))
              <p><i class="fas fa-envelope me-2"></i>{{ $websiteInfo->contact_mail }}</p>
            @endif
            @if (!empty($websiteInfo->address))
              <p><i class="fas fa-map-marker-alt me-2"></i>{{ $websiteInfo->address }}</p>
            @endif
          </div>
        </div>
      </div>
    </div>
    
    <hr class="my-4">
    
    <div class="row align-items-center">
      <div class="col-md-6">
        <p class="copyright-text mb-0">{{ $websiteInfo->copyright_text }}</p>
      </div>
      <div class="col-md-6">
        @if (!empty($ulinks))
          <ul class="footer-menu text-md-end">
            @foreach ($ulinks as $ulink)
              <li class="d-inline-block me-3">
                <a href="{{ $ulink->url }}">{{ $ulink->text }}</a>
              </li>
            @endforeach
          </ul>
        @endif
      </div>
    </div>
  </div>
</footer>
