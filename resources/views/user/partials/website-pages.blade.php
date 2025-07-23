<li
    class="nav-item
@if (request()->path() == 'user/features') active
@elseif(request()->path() == 'user/introsection') active
@elseif(request()->path() == 'user/special/section') active
@elseif(request()->is('user/menu/special/update')) active
@elseif(request()->path() == 'user/menu/section') active
@elseif(request()->is('user/menu/section/update')) active
@elseif(request()->path() == 'user/herosection/imgtext') active
@elseif(request()->path() == 'user/herosection/video') active
@elseif(request()->path() == 'user/herosection/sliders') active
@elseif(request()->is('user/herosection/slider/*/edit')) active
@elseif(request()->path() == 'user/members') active
@elseif(request()->is('user/member/*/edit')) active
@elseif(request()->is('user/feature/*/edit')) active
@elseif(request()->path() == 'user/blogsection') active
@elseif(request()->path() == 'user/testimonials') active
@elseif(request()->is('user/testimonial/*/edit')) active
@elseif(request()->path() == 'user/member/create') active
@elseif(request()->path() == 'user/sections') active
@elseif(request()->path() == 'user/intro/points') active
@elseif(request()->routeIs('user.intro.point.edit')) active
@elseif (request()->path() == 'user/feature-section/background-image') active
@elseif (request()->path() == 'user/testimonial-section/background-image') active
@elseif (request()->path() == 'user/blog-section/background-image') active
@elseif (request()->path() == 'user/intro-section/background-image') active
@elseif(request()->path() == 'user/footer-section/background-image') active
 @elseif(request()->path() == 'user/special-section/background-image') active

@elseif(request()->path() == 'user/page/create') active
@elseif(request()->path() == 'user/pages') active
@elseif(request()->path() == 'user/section/heading') active
@elseif(request()->is('user/page/*/edit')) active

@elseif(request()->path() == 'user/footers') active
@elseif(request()->path() == 'user/ulinks') active
@elseif(request()->path() == 'user/bottom/links') active

@elseif(request()->path() == 'user/jcategorys') active
@elseif(request()->path() == 'user/job/create') active
@elseif(request()->is('user/jcategory/*/edit')) active
@elseif(request()->path() == 'user/jobs') active
@elseif(request()->is('user/job/*/edit')) active

@elseif(request()->path() == 'user/gallery') active
@elseif(request()->path() == 'user/gallery/create') active
@elseif(request()->is('user/gallery/*/edit')) active

@elseif(request()->path() == 'user/faqs') active

@elseif(request()->path() == 'user/contact') active @endif">
    <a data-toggle="collapse" href="#webContents">
        <i class="la flaticon-imac"></i>
        <p>Website Pages</p>
        <span class="caret"></span>
    </a>
    <div class="collapse
    @if (request()->path() == 'user/features') show
    @elseif(request()->path() == 'user/introsection') show
    @elseif(request()->path() == 'user/section/heading') show
    @elseif(request()->path() == 'user/special/section') show
    @elseif(request()->is('user/menu/special/update')) show
    @elseif(request()->path() == 'user/herosection/imgtext') show
    @elseif(request()->path() == 'user/herosection/video') show
    @elseif(request()->path() == 'user/herosection/sliders') show
    @elseif(request()->is('user/herosection/slider/*/edit')) show
    @elseif(request()->path() == 'user/members') show
    @elseif(request()->path() == 'user/intro/points') show
    @elseif(request()->routeIs('user.intro.point.edit')) show
    @elseif(request()->path() == 'user/blogsection') show
    @elseif(request()->path() == 'user/menu/section') show
@elseif(request()->is('user/menu/section/update')) show
    @elseif(request()->path() == 'user/home-page-text-section') show
    @elseif (request()->path() == 'user/feature-section/background-image') show
    @elseif (request()->path() == 'user/testimonial-section/background-image') show
    @elseif (request()->path() == 'user/blog-section/background-image') show
    @elseif (request()->path() == 'user/intro-section/background-image') show
    @elseif(request()->path() == 'user/footer-section/background-image') show
    @elseif(request()->path() == 'user/special-section/background-image') show
    @elseif(request()->is('user/member/*/edit')) show
    @elseif(request()->is('user/feature/*/edit')) show
    @elseif(request()->path() == 'user/testimonials') show
    @elseif(request()->is('user/testimonial/*/edit')) show
    @elseif(request()->path() == 'user/member/create') show
    @elseif(request()->path() == 'user/sections') show

    @elseif(request()->path() == 'user/page/create') show
    @elseif(request()->path() == 'user/pages') show
    @elseif(request()->is('user/page/*/edit')) show

    @elseif(request()->path() == 'user/footers') show
    @elseif(request()->path() == 'user/ulinks') show
    @elseif(request()->path() == 'user/bottom/links') show

    @elseif(request()->path() == 'user/jcategorys') show
    @elseif(request()->path() == 'user/job/create') show
    @elseif(request()->is('user/jcategory/*/edit')) show
    @elseif(request()->path() == 'user/jobs') show
    @elseif(request()->is('user/job/*/edit')) show

    @elseif(request()->path() == 'user/gallery') show
    @elseif(request()->path() == 'user/gallery/create') show
    @elseif(request()->is('user/gallery/*/edit')) show

    @elseif(request()->path() == 'user/faqs') show


    @elseif(request()->path() == 'user/contact') show @endif"
        id="webContents">
        <ul class="nav nav-collapse">


            <li
                class="
            @if (request()->path() == 'user/features') selected
            @elseif(request()->path() == 'user/introsection') selected
            @elseif(request()->path() == 'user/special/section') selected
            @elseif(request()->is('user/menu/special/update')) selected
            @elseif(request()->path() == 'user/herosection/imgtext') selected
            @elseif(request()->path() == 'user/herosection/video') selected
            @elseif(request()->path() == 'user/herosection/sliders') selected
            @elseif(request()->is('user/herosection/slider/*/edit')) selected
            @elseif(request()->path() == 'user/blogsection') selected
            @elseif(request()->path() == 'user/intro/points') selected
            @elseif(request()->routeIs('user.intro.point.edit')) selected
            @elseif(request()->path() == 'user/menu/section') selected
@elseif(request()->is('user/menu/section/update')) selected
            @elseif(request()->path() == 'user/home-page-text-section') selected
            @elseif (request()->path() == 'user/feature-section/background-image') selected
            @elseif (request()->path() == 'user/testimonial-section/background-image') selected
            @elseif (request()->path() == 'user/blog-section/background-image') selected
            @elseif (request()->path() == 'user/intro-section/background-image') selected
            @elseif(request()->path() == 'user/footer-section/background-image') selected
            @elseif(request()->path() == 'user/special-section/background-image') selected
            @elseif(request()->path() == 'user/members') selected
            @elseif(request()->is('user/member/*/edit')) selected
            @elseif(request()->is('user/feature/*/edit')) selected
            @elseif(request()->path() == 'user/testimonials') selected
            @elseif(request()->is('user/testimonial/*/edit')) selected
            @elseif(request()->path() == 'user/member/create') selected
            @elseif(request()->path() == 'user/sections') selected
            @elseif(request()->path() == 'user/section/heading') selected @endif">
                <a data-toggle="collapse" href="#home">
                    <span class="sub-item">Home Page Sections</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if (request()->path() == 'user/features') show
                @elseif(request()->path() == 'user/introsection') show
                @elseif(request()->path() == 'user/special/section') show
                @elseif(request()->is('user/menu/special/update')) show
                @elseif(request()->path() == 'user/herosection/imgtext') show
                @elseif(request()->path() == 'user/herosection/video') show
                @elseif(request()->path() == 'user/herosection/sliders') show
                @elseif(request()->is('user/herosection/slider/*/edit')) show
                @elseif(request()->path() == 'user/members') show
                @elseif(request()->is('user/member/*/edit')) show
                @elseif(request()->is('user/feature/*/edit')) show
                @elseif(request()->path() == 'user/testimonials') show
                @elseif(request()->is('user/testimonial/*/edit')) show
                @elseif(request()->path() == 'user/member/create') show
                @elseif(request()->path() == 'user/blogsection') show
                @elseif(request()->path() == 'user/sections') show
                @elseif(request()->path() == 'user/menu/section') show
                @elseif(request()->is('user/menu/section/update')) show
                @elseif(request()->routeIs('user.intro.point.edit')) show
                @elseif(request()->path() == 'user/section/heading') show 
                @elseif(request()->path() == 'user/home-page-text-section') show
                @elseif (request()->path() == 'user/feature-section/background-image') show
                @elseif (request()->path() == 'user/testimonial-section/background-image') show
                @elseif (request()->path() == 'user/blog-section/background-image') show
                @elseif (request()->path() == 'user/intro-section/background-image') show
                @elseif(request()->path() == 'user/footer-section/background-image') show
                @elseif(request()->path() == 'user/special-section/background-image') show
                @elseif(request()->path() == 'user/intro/points') show @endif "
                    id="home">

                    <ul class="nav nav-collapse subnav">

                        <li
                            class="
                        @if (request()->path() == 'user/herosection/imgtext') selected
                        @elseif(request()->path() == 'user/herosection/video') selected
                        @elseif(request()->path() == 'user/herosection/sliders') selected
                        
                        @elseif(request()->is('user/herosection/slider/*/edit')) selected @endif">
                            <a data-toggle="collapse" href="#herosection">
                                <span class="sub-item">Hero Section</span>
                                <span class="caret"></span>
                            </a>
                            <div class="collapse
                        @if (request()->path() == 'user/herosection/imgtext') show
                        @elseif(request()->path() == 'user/herosection/video') show
                        @elseif(request()->path() == 'user/herosection/sliders') show
                       
                        @elseif(request()->is('user/herosection/slider/*/edit')) show @endif"
                                id="herosection">
                                <ul class="nav nav-collapse subnav">
                                    <li class="@if (request()->path() == 'user/herosection/imgtext') active @endif">
                                        <a
                                            href="{{ route('user.herosection.imgtext') . '?language=' . $default->code }}">
                                            <span class="sub-item">Image & Text</span>
                                        </a>
                                    </li>

                                    @if ($activeTheme == 'fastfood')
                                        <li
                                            class="
                            @if (request()->path() == 'user/herosection/sliders') active
                            @elseif(request()->is('user/herosection/slider/*/edit')) active @endif">
                                            <a href="{{ route('user.slider.index') . '?language=' . $default->code }}">
                                                <span class="sub-item">Sliders</span>
                                            </a>
                                        </li>
                                        <li class="@if (request()->path() == 'user/herosection/video') active @endif">
                                            <a
                                                href="{{ route('user.herosection.video') . '?language=' . $default->code }}">
                                                <span class="sub-item">Video Link</span>
                                            </a>
                                        </li>
                                    @endif
                                </ul>
                            </div>
                        </li>

                        <li>
                            <ul class="nav nav-collapse subnav">
                                <li
                                    class="
                        @if (request()->path() == 'user/introsection') selected
                        @elseif(request()->path() == 'user/intro/points') selected
                        @elseif (request()->is('user/intro/point/*/edit')) selected @endif">
                                    <a data-toggle="collapse" href="#introSection">
                                        <span class="sub-item">Intro Section</span>
                                        <span class="caret"></span>
                                    </a>
                                    <div class="collapse
                        @if (request()->path() == 'user/introsection') show
                        @elseif(request()->path() == 'user/intro/points') show
                        @elseif(request()->routeIs('user.intro.point.edit')) show
                        @elseif(request()->is('user/intro/point/*/edit')) show @endif"
                                        id="introSection">
                                        <ul class="nav nav-collapse subnav">
                                            <li class="@if (request()->path() == 'user/introsection') active @endif">
                                                <a
                                                    href="{{ route('user.introsection.index') . '?language=' . $default->code }}">
                                                    <span class="sub-item">Intro</span>
                                                </a>
                                            </li>
                                            @if (
                                                $activeTheme == 'bakery' ||
                                                    $activeTheme == 'pizza' ||
                                                    $activeTheme == 'coffee' ||
                                                    $activeTheme == 'medicine' ||
                                                    $activeTheme == 'grocery' ||
                                                    $activeTheme == 'beverage')
                                                <li
                                                    class="
                                                @if (request()->path() == 'user/intro/points') active
                                                @elseif (request()->is('user/intro/point/*/edit')) active @endif">
                                                    <a
                                                        href="{{ route('user.intro.points.index') . '?language=' . $default->code }}">
                                                        <span class="sub-item">Intro Points</span>
                                                    </a>
                                                </li>
                                            @endif

                                        </ul>
                                </li>

                                <li
                                    class="
                    @if (request()->path() == 'user/feature-section/background-image') selected
                    @elseif (request()->path() == 'user/testimonial-section/background-image') selected
                    @elseif (request()->path() == 'user/blog-section/background-image') selected
                    @elseif (request()->path() == 'user/intro-section/background-image') selected
                    @elseif(request()->path() == 'user/footer-section/background-image') selected
                    @elseif(request()->path() == 'user/special-section/background-image') selected @endif">
                                    <a data-toggle="collapse" href="#backgroundImage">
                                        <span class="sub-item">Background Image</span>
                                        <span class="caret"></span>
                                    </a>
                                    <div class="collapse
                   
                    @if (request()->path() == 'user/feature-section/background-image') show
                    @elseif (request()->path() == 'user/testimonial-section/background-image') show
                    @elseif (request()->path() == 'user/blog-section/background-image') show
                    @elseif (request()->path() == 'user/intro-section/background-image') show
                    @elseif(request()->path() == 'user/footer-section/background-image') show
                    @elseif(request()->path() == 'user/special-section/background-image') show @endif"
                                        id="backgroundImage">
                                        <ul class="nav nav-collapse subnav">



                                            @if ($activeTheme == 'pizza')
                                                <li class="@if (request()->path() == 'user/intro-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.introSection.backgroundImage', ['language' => $default->code, 'section' => 'intro_bg_image']) }}">
                                                        <span class="sub-item">Intro Section Image</span>
                                                    </a>
                                                </li>
                                            @endif

                                            @if ($activeTheme == 'bakery' || $activeTheme == 'beverage')
                                                <li class="@if (request()->path() == 'user/feature-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.featureSection.backgroundImage', ['language' => $default->code, 'section' => 'feature_section_bg_image']) }}">
                                                        <span class="sub-item">Feature Section Image</span>
                                                    </a>
                                                </li>
                                            @endif
                                            @if ($activeTheme == 'bakery' || $activeTheme == 'pizza' || $activeTheme == 'medicine')
                                                <li class="@if (request()->path() == 'user/special-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.SpacailSection.backgroundImage', ['language' => $default->code, 'section' => 'special_section_bg_image']) }}">
                                                        <span class="sub-item">Special Food Section Image</span>
                                                    </a>
                                                </li>
                                            @endif
                                            @if ($activeTheme == 'fastfood' || $activeTheme == 'pizza' || $activeTheme == 'coffee' || $activeTheme == 'beverage')
                                                <li class="@if (request()->path() == 'user/testimonial-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.testimonialSection.backgroundImage', ['language' => $default->code, 'section' => 'testimonial_bg_img']) }}">
                                                        <span class="sub-item">Testimonial Section Image</span>
                                                    </a>
                                                </li>
                                            @endif

                                            @if ($activeTheme == 'grocery')
                                                <li class="@if (request()->path() == 'user/blog-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.blogSection.backgroundImage', ['language' => $default->code, 'section' => 'blog_section_bg_image']) }}">
                                                        <span class="sub-item"> Blog Section Image</span>
                                                    </a>
                                                </li>
                                            @endif

                                            @if (
                                                $activeTheme == 'bakery' ||
                                                    $activeTheme == 'coffee' ||
                                                    $activeTheme == 'pizza' ||
                                                    $activeTheme == 'grocery' ||
                                                    $activeTheme == 'beverage')
                                                <li class="@if (request()->path() == 'user/footer-section/background-image') active @endif">
                                                    <a
                                                        href="{{ route('user.footerSection.backgroundImage', ['language' => $default->code, 'section' => 'footer_section_bg_image']) }}">
                                                        <span class="sub-item">Footer Section Image</span>
                                                    </a>
                                                </li>
                                            @endif

                                        </ul>
                                </li>
                                <!---Background Image --->

                                <li
                                    class="
                    @if (request()->path() == 'user/features') active
                    @elseif(request()->is('user/feature/*/edit')) active @endif">
                                    <a href="{{ route('user.feature.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Features</span>
                                    </a>
                                </li>

                                 <li
                                            class="
                    @if (request()->path() == 'user/menu/section') active
                    @elseif(request()->is('user/menu/section/update')) active @endif">
                                            <a
                                                href="{{ route('user.menusection.index') . '?language=' . $default->code }}">
                                                <span class="sub-item">Menu Section</span>
                                            </a>
                                        </li>

                                <li class="@if (request()->path() == 'user/blogsection') active @endif">
                                    <a href="{{ route('user.blogsection.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Blog Section</span>
                                    </a>
                                </li>

                                <li
                                    class="
                    @if (request()->path() == 'user/special/section') active
                    @elseif(request()->is('user/menu/special/update')) active @endif">
                                    <a
                                        href="{{ route('user.special.section.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Special Section</span>
                                    </a>
                                </li>

                                <li
                                    class="
                    @if (request()->path() == 'user/testimonials') active
                    @elseif(request()->is('user/testimonial/*/edit')) active @endif">
                                    <a href="{{ route('user.testimonial.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Testimonials</span>
                                    </a>
                                </li>
                                <li
                                    class="
                    @if (request()->path() == 'user/members') active
                    @elseif(request()->is('user/member/*/edit')) active
                    @elseif(request()->path() == 'user/member/create') active @endif">
                                    <a href="{{ route('user.member.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Team Section</span>
                                    </a>
                                </li>
                                <li class="@if (request()->path() == 'user/section/heading') active @endif">
                                    <a href="{{ route('user.section.heading') . '?language=' . $default->code }}">
                                        <span class="sub-item">{{ __('Section Headings') }}</span>
                                    </a>
                                </li>
                                <li class="
                    @if (request()->path() == 'user/sections') active @endif">
                                    <a href="{{ route('user.sections.index') . '?language=' . $default->code }}">
                                        <span class="sub-item">Section Customization</span>
                                    </a>
                                </li>

                            </ul>
                </div>
            </li>



            <li
                class="
            @if (request()->path() == 'user/footers') selected
            @elseif(request()->path() == 'user/ulinks') selected
            @elseif(request()->path() == 'user/bottom/links') selected @endif">
                <a data-toggle="collapse" href="#footer">
                    <span class="sub-item">Footer</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if (request()->path() == 'user/footers') show
                @elseif(request()->path() == 'user/ulinks') show
                @elseif(request()->path() == 'user/bottom/links') show @endif"
                    id="footer">
                    <ul class="nav nav-collapse subnav">
                        <li class="@if (request()->path() == 'user/footers') active @endif">
                            <a href="{{ route('user.footer.index') . '?language=' . $default->code }}">
                                <span class="sub-item">Image & Text</span>
                            </a>
                        </li>
                        <li class="@if (request()->path() == 'user/ulinks') active @endif">
                            <a href="{{ route('user.ulink.index') . '?language=' . $default->code }}">
                                <span class="sub-item">Useful Links</span>
                            </a>
                        </li>
                         @if ($activeTheme == 'fastfood')
                        <li class="@if (request()->path() == 'user/bottom/links') active @endif">
                            <a href="{{ route('user.blink.index') . '?language=' . $default->code }}">
                                <span class="sub-item">Bottom Links</span>
                            </a>
                        </li>
                        @endif
                    </ul>
                </div>
            </li>


            <li
                class="@if (request()->path() == 'user/gallery') selected
                @elseif(request()->path() == 'user/gallery/create') selected
                @elseif(request()->is('user/gallery/*/edit')) selected @endif">
                <a href="{{ route('user.gallery.index') . '?language=' . $default->code }}">
                    <span class="sub-item">Gallery</span>
                </a>
            </li>

            <li class="@if (request()->path() == 'user/faqs') active @endif">
                <a href="{{ route('user.faq.index') . '?language=' . $default->code }}">
                    <span class="sub-item">FAQs</span>
                </a>
            </li>


            <li
                class="
            @if (request()->path() == 'user/jcategorys') selected
            @elseif(request()->path() == 'user/job/create') selected
            @elseif(request()->is('user/jcategory/*/edit')) selected
            @elseif(request()->path() == 'user/jobs') selected
            @elseif(request()->is('user/job/*/edit')) selected @endif">
                <a data-toggle="collapse" href="#career">
                    <span class="sub-item">Career</span>
                    <span class="caret"></span>
                </a>
                <div class="collapse
                @if (request()->path() == 'user/jcategorys') show
                @elseif(request()->path() == 'user/job/create') show
                @elseif(request()->is('user/jcategory/*/edit')) show
                @elseif(request()->path() == 'user/jobs') show
                @elseif(request()->is('user/job/*/edit')) show @endif"
                    id="career">
                    <ul class="nav nav-collapse subnav">
                        <li
                            class="
                            @if (request()->path() == 'user/jcategorys') active
                            @elseif(request()->is('user/jcategory/*/edit')) active @endif">
                            <a href="{{ route('user.jcategory.index') . '?language=' . $default->code }}">
                                <span class="sub-item">Category</span>
                            </a>
                        </li>
                        <li class="
                        @if (request()->is('user/job/create')) active @endif">
                            <a href="{{ route('user.job.create') }}">
                                <span class="sub-item">Post Job</span>
                            </a>
                        </li>
                        <li
                            class="
                        @if (request()->path() == 'user/jobs') active
                        @elseif(request()->is('user/job/*/edit')) active @endif">
                            <a href="{{ route('user.job.index') . '?language=' . $default->code }}">
                                <span class="sub-item">Job Management</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="
            @if (request()->path() == 'user/contact') selected @endif">
                <a href="{{ route('user.contact.index') . '?language=' . $default->code }}">
                    <span class="sub-item">Contact Page</span>
                </a>
            </li>
        </ul>
    </div>

</li>
