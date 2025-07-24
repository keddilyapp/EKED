
<header class="modern-header">
  <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
      <a class="navbar-brand" href="{{ route('user.front.index', getParam()) }}">
        @if (!empty($websiteInfo->logo))
          <img src="{{ asset('assets/tenant/image/' . $websiteInfo->logo) }}" alt="{{ $websiteInfo->website_title }}" class="logo-img">
        @else
          {{ $websiteInfo->website_title }}
        @endif
      </a>
      
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="{{ route('user.front.index', getParam()) }}">{{ __('Home') }}</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('user.front.items', getParam()) }}">{{ __('Shop') }}</a>
          </li>
          @if (!empty($categories))
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                {{ __('Categories') }}
              </a>
              <ul class="dropdown-menu">
                @foreach ($categories as $category)
                  <li><a class="dropdown-item" href="{{ route('user.front.items', [getParam(), 'category_id' => $category->id]) }}">{{ $category->name }}</a></li>
                @endforeach
              </ul>
            </li>
          @endif
          <li class="nav-item">
            <a class="nav-link" href="{{ route('user.front.blogs', getParam()) }}">{{ __('Blog') }}</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('user.front.contact', getParam()) }}">{{ __('Contact') }}</a>
          </li>
        </ul>
        
        <div class="header-actions ms-3">
          <a href="{{ route('user.front.product.cart', getParam()) }}" class="btn btn-outline-primary btn-sm position-relative">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count badge bg-primary rounded-pill position-absolute top-0 start-100 translate-middle">0</span>
          </a>
        </div>
      </div>
    </div>
  </nav>
</header>
