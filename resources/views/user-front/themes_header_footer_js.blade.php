
     {{--- bakery theme js --}}
    @if ($activeTheme == 'bakery')
        @if (!request()->routeIs('user.front.index'))
            @include('user-front.bakery.include.bakery_header_footer_js')
        @endif
    @endif
     {{--- End bakery Theme js  ---}}

    @if ($activeTheme == 'pizza')
        @if (!request()->routeIs('user.front.index'))
            @include('user-front.pizza.include.pizza_header_footer_js')
        @endif
    @endif

    @if ($activeTheme == 'coffee')
        @if (!request()->routeIs('user.front.index'))
            @include('user-front.coffee.include.coffee_header_footer_js')
        @endif
    @endif

    @if ($activeTheme == 'medicine')
        @if (!request()->routeIs('user.front.index'))
            @include('user-front.medicine.include.medicine_header_footer_js')
        @endif
    @endif

@if ($activeTheme == 'grocery')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.grocery.include.grocery_header_footer_js')
    @endif
@endif

@if ($activeTheme == 'beverage')
    @if (!request()->routeIs('user.front.index'))
        @include('user-front.beverage.include.beverage_header_footer_js')
    @endif
@endif
