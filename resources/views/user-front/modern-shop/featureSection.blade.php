
@if (!empty($features) && count($features) > 0)
  <section class="feature-section py-5 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 mx-auto text-center mb-5">
          <h2 class="section-title">
            {{ $secInfo->feature_section_title ?? __('Our Features') }}
          </h2>
          <p class="section-subtitle">
            {{ $secInfo->feature_section_subtitle ?? __('Why choose us') }}
          </p>
        </div>
      </div>
      
      <div class="row">
        @foreach ($features as $feature)
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="feature-card text-center modern-feature-card">
              <div class="feature-icon mb-3">
                <i class="{{ $feature->icon }} fa-3x text-primary"></i>
              </div>
              <h4 class="feature-title">{{ $feature->title }}</h4>
              <p class="feature-text">{{ $feature->text }}</p>
            </div>
          </div>
        @endforeach
      </div>
    </div>
  </section>
@endif