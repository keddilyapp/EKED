  
@if (!empty($products) && count($products) > 0)
  <section class="product-category-section py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center mb-5">
          <h2 class="section-title">
            {{ $secInfo->category_product_section_title ?? __('Our Products') }}
          </h2>
          <p class="section-subtitle">
            {{ $secInfo->category_product_section_subtitle ?? __('Discover our amazing collection') }}
          </p>
        </div>
      </div>
      
      @if (!empty($categories) && count($categories) > 0)
      <div class="row">
        <div class="col-12">
          <div class="category-filter mb-4">
            <ul class="filter-list text-center">
              <li class="filter-item active" data-filter="*">{{ __('All Categories') }}</li>
              @foreach ($categories as $category)
                <li class="filter-item" data-filter=".category-{{ $category->slug }}">{{ $category->name }}</li>
              @endforeach
            </ul>
          </div>
        </div>
      </div>
      @endif
      
      <div class="row products-grid">
        @foreach ($products as $product)
          <div class="col-lg-4 col-md-6 mb-4 product-item {{ isset($product->category) ? 'category-' . $product->category->slug : '' }}">
            <div class="product-card modern-card">
              <div class="product-image">
                <img src="{{ asset('assets/tenant/image/product/featured/' . $product->featured_image) }}" alt="{{ $product->title }}" class="img-fluid">
                <div class="product-overlay">
                  <a href="{{ route('user.front.product.details', ['slug' => $product->slug, getParam()]) }}" class="btn btn-primary btn-sm">{{ __('View Details') }}</a>
                </div>
              </div>
              <div class="product-content p-3">
                <h5 class="product-title">{{ $product->title }}</h5>
                <p class="product-price">${{ $product->current_price }}</p>
              </div>
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </section>
@endif