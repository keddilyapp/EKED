

@if ($secInfo && isset($secInfo->special_section) && $secInfo->special_section == 1)
  <section class="special-section py-5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mb-4 mb-lg-0">
          <div class="special-image">
            @if($secInfo && $secInfo->special_section_image)
              <img src="{{ asset('assets/tenant/image/' . $secInfo->special_section_image) }}" alt="Special Offer" class="img-fluid rounded">
            @endif
          </div>
        </div>
        <div class="col-lg-6">
          <div class="special-content">
            <h2 class="special-title mb-4">
              {{ $secInfo->special_section_title ?? __('Special Offer') }}
            </h2>
            <p class="special-text mb-4">
              {{ $secInfo->special_section_text ?? __('Discover our special offers and deals') }}
            </p>
            @if (!empty($secInfo->special_section_btn_text))
              <a href="{{ $secInfo->special_section_btn_url }}" class="btn btn-primary modern-btn">
                {{ $secInfo->special_section_btn_text }}
              </a>
            @endif
          </div>
        </div>
      </div>
    </div>
  </section>
@endif