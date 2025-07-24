

@if (!empty($blogs) && count($blogs) > 0)
  <section class="blog-section py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center mb-5">
          <h2 class="section-title">
            {{ $secInfo->blog_section_title ?? __('Latest News') }}
          </h2>
          <p class="section-subtitle">
            {{ $secInfo->blog_section_subtitle ?? __('Stay updated with our latest posts') }}
          </p>
        </div>
      </div>
      
      <div class="row">
        @foreach ($blogs as $blog)
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="blog-card modern-card">
              <div class="blog-image">
                @if($blog->image)
                  <img src="{{ asset('assets/tenant/image/blog/' . $blog->image) }}" alt="{{ $blog->title }}" class="img-fluid">
                @endif
              </div>
              <div class="blog-content p-3">
                <h5 class="blog-title">{{ $blog->title }}</h5>
                <p class="blog-excerpt">{{ Str::limit(strip_tags($blog->content), 100) }}</p>
                <a href="{{ route('user.front.blog.details', ['slug' => $blog->slug, getParam()]) }}" class="btn btn-primary btn-sm">{{ __('Read More') }}</a>
              </div>
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </section>
@endif