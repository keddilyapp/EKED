
<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckPackagePaymentPermission
{
    public function handle(Request $request, Closure $next, $paymentType = null)
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
        
        if ($paymentType === 'online' && !$package->canUseOnlinePayment()) {
            return redirect()->back()->with('error', 'Online payment is not available in your current package');
        }

        if ($paymentType === 'offline' && !$package->canUseOfflinePayment()) {
            return redirect()->back()->with('error', 'Offline payment is not available in your current package');
        }

        $gateway = $request->payment_method ?? $request->gateway;
        if ($gateway && !$package->hasPaymentGatewayAccess($gateway)) {
            return redirect()->back()->with('error', 'This payment gateway is not available in your current package');
        }

        return $next($request);
    }
}