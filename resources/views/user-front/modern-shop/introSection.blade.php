

@if ($secInfo && isset($secInfo->intro_section) && $secInfo->intro_section == 1)
  <section class="intro-section py-5 bg-primary text-white">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="intro-content">
            <h2 class="intro-title mb-4">
              {{ $secInfo->intro_section_title ?? __('About Us') }}
            </h2>
            <p class="intro-text mb-4">
              {{ $secInfo->intro_section_text ?? __('Learn more about our story') }}
            </p>
            
            @if (!empty($introPoints))
              <div class="intro-points">
                @foreach ($introPoints as $point)
                  <div class="point-item mb-2">
                    <i class="{{ $point->icon ?? 'fas fa-check' }} me-2"></i>
                    {{ $point->title }}
                  </div>
                @endforeach
              </div>
            @endif
          </div>
        </div>
        <div class="col-lg-6">
          <div class="intro-image">
            @if($secInfo && $secInfo->intro_section_image)
              <img src="{{ asset('assets/tenant/image/' . $secInfo->intro_section_image) }}" alt="About Us" class="img-fluid">
            @endif
          </div>
        </div>
      </div>
    </div>
  </section>
@endif