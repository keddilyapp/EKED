
@extends('user-front.layout')

@section('pageHeading')
  @if (!empty($pageHeading))
    {{ $pageHeading->shop_page_title ? $pageHeading->shop_page_title : __('Shop') }}
  @else
    {{ __('Shop') }}
  @endif
@endsection

@section('metaKeywords')
  @if (!empty($seoInfo))
    {{ $seoInfo->meta_keywords_shop }}
  @endif
@endsection

@section('metaDescription')
  @if (!empty($seoInfo))
    {{ $seoInfo->meta_description_shop }}
  @endif
@endsection

@section('content')
  @includeIf('user-front.modern-shop.heroSection')
  @includeIf('user-front.modern-shop.categoryProductSection')
  @includeIf('user-front.modern-shop.featureSection')
  @includeIf('user-front.modern-shop.specialSection')
  @includeIf('user-front.modern-shop.introSection')
  @includeIf('user-front.modern-shop.blogSection')
@endsection
