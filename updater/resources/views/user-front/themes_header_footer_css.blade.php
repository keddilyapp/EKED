@if (count($langs) == 0)
    <style media="screen">
        .support-bar-area ul.social-links li:last-child {
            margin-right: 0px;
        }

        .support-bar-area ul.social-links::after {
            display: none;
        }
    </style>
@endif

@if ($userBs->feature_section == 0)
    <style media="screen">
        .hero-txt {
            padding-bottom: 160px;
        }
    </style>
@endif


{{---- Bakery Theme Header & Footer css--}}
@if ($activeTheme == 'bakery')

    @if (!request()->routeIs('user.front.index'))
        @include('user-front.bakery.include.bakery_header_footer_css')
    @endif
@endif
{{---- End Bakery theme Header & Footer css --}}


{{----Start Pizza theme Header & Footer css --}}
@if ($activeTheme == 'pizza')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.pizza.include.pizza_header_footer_css')
    @endif

@endif

{{---- End Pizz theme Header & Footer css --}}


{{--Start coffee theme css --}}
@if ($activeTheme == 'coffee')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.coffee.include.coffee_header_footer_css')
    @endif

@endif
{{--End coffee theme css --}}


{{---- Start Medicine theme css --}}
@if ($activeTheme == 'medicine')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.medicine.include.medicine_header_footer_css')
    @endif

@endif
{{----End Medicine theme css --}}

{{---- Start Grocery theme css --}}
@if ($activeTheme == 'grocery')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.grocery.include.grocery_header_footer_css')
    @endif

@endif
{{----End Medicine theme css --}}

{{---- Start beverage theme css --}}
@if ($activeTheme == 'beverage')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.beverage.include.beverage_header_footer_css')
    @endif

@endif
{{----End Medicine theme css --}}
