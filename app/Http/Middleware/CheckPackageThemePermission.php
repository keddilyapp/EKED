
<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckPackageThemePermission
{
    public function handle(Request $request, Closure $next, $theme = null)
    {
        if (!Auth::check()) {
            return redirect()->route('user.login');
        }

        $user = Auth::user();
        $membership = $user->memberships()->where('status', 1)->first();
        
        if (!$membership) {
            return redirect()->route('user.dashboard')->with('error', 'No active membership found');
        }

        $package = $membership->package;
        
        if ($theme && !$package->hasThemeAccess($theme)) {
            return redirect()->route('user.dashboard')->with('error', 'This theme is not available in your current package');
        }

        return $next($request);
    }
}