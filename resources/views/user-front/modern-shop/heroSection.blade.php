
@if (!empty($heroInfo->hero_section_bold_text) || !empty($heroInfo->hero_section_text))
  <section class="hero-section modern-hero-banner" style="background-image: url('{{ $heroInfo->hero_bg ? asset('assets/tenant/image/' . $heroInfo->hero_bg) : '' }}');">
    <div class="overlay opacity-75"></div>
    <div class="container">
      <div class="row align-items-center min-vh-100">
        <div class="col-lg-6">
          <div class="banner-content text-white">
            @if($heroInfo->hero_section_bold_text)
              <h1 class="banner-title mb-4 animate-fade-up" style="color: #{{ $heroInfo->hero_section_bold_text_color ?? 'ffffff' }}; font-size: {{ $heroInfo->hero_section_bold_text_font_size ?? '48' }}px;">
                {{ $heroInfo->hero_section_bold_text }}
              </h1>
            @endif
            @if($heroInfo->hero_section_text)
              <p class="banner-text mb-4 animate-fade-up delay-1" style="color: #{{ $heroInfo->hero_section_text_color ?? 'ffffff' }}; font-size: {{ $heroInfo->hero_section_text_font_size ?? '16' }}px;">
                {{ $heroInfo->hero_section_text }}
              </p>
            @endif
            @if (!empty($heroInfo->hero_section_button_text))
              <a href="{{ $heroInfo->hero_section_button_url }}" class="btn btn-primary btn-lg modern-btn animate-fade-up delay-2" style="background: #{{ $heroInfo->hero_section_button_color ?? '007bff' }}; border-color: #{{ $heroInfo->hero_section_button_color ?? '007bff' }}; font-size: {{ $heroInfo->hero_section_button_text_font_size ?? '16' }}px;">
                {{ $heroInfo->hero_section_button_text }}
              </a>
            @endif
          </div>
        </div>
        <div class="col-lg-6">
          <div class="banner-image animate-fade-up delay-3">
            @if($heroInfo->hero_side_img)
              <img src="{{ asset('assets/tenant/image/' . $heroInfo->hero_side_img) }}" alt="Modern Shop" class="img-fluid">
            @endif
          </div>
        </div>
      </div>
    </div>
  </section>
@endif
