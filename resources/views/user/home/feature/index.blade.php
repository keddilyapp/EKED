@php
    use App\Constants\Constant;
    use App\Http\Helpers\Uploader;
@endphp
@extends('user.layout')

@section('content')
    <div class="page-header">
        <h4 class="page-title">Features</h4>
        <ul class="breadcrumbs">
            <li class="nav-home">
                <a href="{{ route('user.dashboard') }}">
                    <i class="flaticon-home"></i>
                </a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">Website Pages</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">Home Page</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">Features</a>
            </li>
        </ul>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="card border border-dark">

                <form action="{{ route('user.featureSection.update', $lang_id) }}" method="post"
                    enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="">{{ __('Features Section Title') }}</label>

                        <input name="feature_title" class="form-control" value="{{ $abs->feature_title }}"
                            placeholder="Feature  Section Title">

                        @if ($errors->has('feature_title'))
                            <p class="mb-0 text-danger">{{ $errors->first('feature_title') }}</p>
                        @endif
                        <p id="errfeature_title" class="em text-danger mb-0"></p>
                    </div>


                    @if ($activeTheme == 'coffee' || $activeTheme == 'beverage')
                        {{-- <div class="row">
              <div class="col-lg-12">



                <div class="form-group">
                  <div class="col-12 mb-2">
                    <label for="image"><strong>Top Shape Image</strong></label>
                  </div>
                  <div class="showImage mb-3" data-default-image="{{ asset('assets/admin/img/noimage.jpg') }}">
                    @if (!empty($abs->features_section_top_shape_image))
                      <a class="remove-image" data-type="features_section_top_shape_image"><i
                          class="far fa-times-circle"></i>
                      </a>
                    @endif
                    <img
                      src="{{ $abs->features_section_top_shape_image ? Uploader::getImageUrl(Constant::WEBSITE_IMAGE, $abs->features_section_top_shape_image, $userBs) : asset('assets/admin/img/noimage.jpg') }}"
                      alt="..." class="img-thumbnail">
                  </div>
                  <input type="file" name="features_section_top_shape_image" id="" class="form-control image">
                  @if ($errors->has('features_section_top_shape_image'))
                    <p class="mb-0 text-danger">
                      {{ $errors->first('features_section_top_shape_image') }}</p>
                  @endif
                  <p id="errfeatures_section_top_shape_image" class="mb-0 text-danger em"></p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <div class="form-group">
                  <div class="col-12 mb-2">
                    <label for="image"><strong>Bottom Shape Image </strong></label>
                  </div>

                  <div class="showImage mb-3" data-default-image="{{ asset('assets/admin/img/noimage.jpg') }}">
                    @if (!empty($abs->features_section_bottom_shape_image))
                      <a class="remove-image" data-type="features_section_bottom_shape_image"><i
                          class="far fa-times-circle"></i></a>
                    @endif
                    <img
                      src="{{ $abs->features_section_bottom_shape_image ? Uploader::getImageUrl(Constant::WEBSITE_IMAGE, $abs->features_section_bottom_shape_image, $userBs) : asset('assets/admin/img/noimage.jpg') }}"
                      alt="..." class="img-thumbnail">

                  </div>
                  <input type="file" name="features_section_bottom_shape_image" id=""
                    class="form-control image">
                  @if ($errors->has('features_section_bottom_shape_image'))
                    <p class="mb-0 text-danger">
                      {{ $errors->first('features_section_bottom_shape_image') }}</p>
                  @endif
                  <p id="errfeatures_section_bottom_shape_image" class="mb-0 text-danger em"></p>
                </div>
              </div>
            </div> --}}

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="col-12 mb-2">
                                        <label for="image"><strong>Top Shape Image</strong></label>
                                    </div>
                                    <div class="shape-image-preview mb-3"
                                        data-default-image="{{ asset('assets/admin/img/noimage.jpg') }}">
                                        @if (!empty($abs->features_section_top_shape_image))
                                            <a class="remove-shape-image remove-image" data-type="features_section_top_shape_image">
                                                <i class="far fa-times-circle"></i>
                                            </a>
                                        @endif
                                        <img src="{{ $abs->features_section_top_shape_image ? Uploader::getImageUrl(Constant::WEBSITE_IMAGE, $abs->features_section_top_shape_image, $userBs) : asset('assets/admin/img/noimage.jpg') }}"
                                            alt="Top Shape Preview" class="img-thumbnail shape-preview-img">
                                    </div>
                                    <input type="file" name="features_section_top_shape_image"
                                        class="form-control shape-image-upload">
                                    @if ($errors->has('features_section_top_shape_image'))
                                        <p class="mb-0 text-danger">{{ $errors->first('features_section_top_shape_image') }}
                                        </p>
                                    @endif
                                    <p id="errfeatures_section_top_shape_image" class="mb-0 text-danger em"></p>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="col-12 mb-2">
                                        <label for="image"><strong>Bottom Shape Image</strong></label>
                                    </div>
                                    <div class="shape-image-preview mb-3"
                                        data-default-image="{{ asset('assets/admin/img/noimage.jpg') }}">
                                        @if (!empty($abs->features_section_bottom_shape_image))
                                            <a class="remove-shape-image remove-image" data-type="features_section_bottom_shape_image">
                                                <i class="far fa-times-circle"></i>
                                            </a>
                                        @endif
                                        <img src="{{ $abs->features_section_bottom_shape_image ? Uploader::getImageUrl(Constant::WEBSITE_IMAGE, $abs->features_section_bottom_shape_image, $userBs) : asset('assets/admin/img/noimage.jpg') }}"
                                            alt="Bottom Shape Preview" class="img-thumbnail shape-preview-img">
                                    </div>
                                    <input type="file" name="features_section_bottom_shape_image"
                                        class="form-control shape-image-upload">
                                    @if ($errors->has('features_section_bottom_shape_image'))
                                        <p class="mb-0 text-danger">
                                            {{ $errors->first('features_section_bottom_shape_image') }}</p>
                                    @endif
                                    <p id="errfeatures_section_bottom_shape_image" class="mb-0 text-danger em"></p>
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="form">
                        <div class="form-group from-show-notify row">
                            <div class="col-12 text-center">
                                <button type="submit" id="" class="btn btn-success">{{ __('Update') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card-title d-inline-block">Features</div>
                        </div>
                        <div class="col-lg-3">
                            @if (!empty($userLangs))
                                <select name="language" class="form-control"
                                    onchange="window.location='{{ url()->current() . '?language=' }}'+this.value">
                                    <option value="" selected disabled>Select a Language</option>
                                    @foreach ($userLangs as $lang)
                                        <option value="{{ $lang->code }}"
                                            {{ $lang->code == request()->input('language') ? 'selected' : '' }}>
                                            {{ $lang->name }}</option>
                                    @endforeach
                                </select>
                            @endif
                        </div>
                        <div class="col-lg-4 offset-lg-1 mt-2 mt-lg-0">
                            <a href="#" class="btn btn-primary float-lg-right float-left" data-toggle="modal"
                                data-target="#createModal"><i class="fas fa-plus"></i> Add Feature</a>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            @if (count($features) == 0)
                                <h3 class="text-center">NO FEATURE FOUND</h3>
                            @else
                                <div class="table-responsive">
                                    <table class="table table-striped mt-3" id="basic-datatables">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Image</th>
                                                <th scope="col">Title</th>
                                                <th scope="col">Serial Number</th>
                                                <th scope="col">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($features as $key => $feature)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ Uploader::getImageUrl(Constant::WEBSITE_FEATURE_IMAGES, $feature->image, $userBs) }}"
                                                            alt="" width="80">
                                                    </td>
                                                    <td>{{ convertUtf8($feature->title) }}</td>
                                                    <td>{{ $feature->serial_number }}</td>
                                                    <td>
                                                        <a class="btn btn-secondary my-2 btn-sm"
                                                            href="{{ route('user.feature.edit', $feature->id) . '?language=' . request()->input('language') }}">
                                                            <span class="btn-label">
                                                                <i class="fas fa-edit"></i>
                                                            </span>

                                                        </a>
                                                        <form class="deleteform d-inline-block"
                                                            action="{{ route('user.feature.delete') }}" method="post">
                                                            @csrf
                                                            <input type="hidden" name="feature_id"
                                                                value="{{ $feature->id }}">
                                                            <button type="submit"
                                                                class="btn btn-danger btn-sm deletebtn">
                                                                <span class="btn-label">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>

                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Add Feature</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <form id="ajaxForm" class="modal-form" action="{{ route('user.feature.store') }}" method="post"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="">Language **</label>
                            <select name="user_language_id" class="form-control">
                                <option value="" selected disabled>Select a language</option>
                                @foreach ($userLangs as $lang)
                                    <option value="{{ $lang->id }}">{{ $lang->name }}</option>
                                @endforeach
                            </select>
                            <p id="erruser_language_id" class="mb-0 text-danger em"></p>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <div class="col-12 mb-2">
                                        <label for="image"><strong> Feature Image **</strong></label>
                                    </div>
                                    <div class="col-md-12 showImage mb-3">

                                        <img src="{{ asset('assets/admin/img/noimage.jpg') }}" alt="..."
                                            class="img-thumbnail">
                                    </div>
                                    <input type="file" name="image" id="image" class="form-control image">
                                    <p id="errimage" class="mb-0 text-danger em"></p>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="">Title **</label>
                            <input class="form-control" name="title" placeholder="Enter title">
                            <p id="errtitle" class="mb-0 text-danger em"></p>
                        </div>
                        <div class="form-group">
                            <label for="">Serial Number **</label>
                            <input type="number" class="form-control ltr" name="serial_number" value=""
                                placeholder="Enter Serial Number">
                            <p id="errserial_number" class="mb-0 text-danger em"></p>
                            <p class="text-warning"><small>The higher the serial number is, the later the feature will
                                    be shown.</small></p>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button id="submitBtn" type="button" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('scripts')
    <script>
        let routeUrl = "{{ route('user.feature_shape.rmv.img') }}";
        let currentUrl = "{{ url()->current() }}";
        let langCode = "{{ $feature->language->code ?? $code }}";
        let feature_id = "{{ $feature->id ?? '' }}";
    </script>
    <script src="{{ asset('assets/tenant/js/blade.js') }}"></script>
@endsection
