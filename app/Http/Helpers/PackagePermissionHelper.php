
<?php

namespace App\Http\Helpers;

use Illuminate\Support\Facades\Auth;

class PackagePermissionHelper
{
    public static function getCurrentPackage()
    {
        if (!Auth::check()) {
            return null;
        }

        $user = Auth::user();
        $membership = $user->memberships()->where('status', 1)->first();
        
        return $membership ? $membership->package : null;
    }

    public static function hasThemeAccess($theme)
    {
        $package = self::getCurrentPackage();
        return $package ? $package->hasThemeAccess($theme) : false;
    }

    public static function hasPaymentGatewayAccess($gateway)
    {
        $package = self::getCurrentPackage();
        return $package ? $package->hasPaymentGatewayAccess($gateway) : false;
    }

    public static function canUseOnlinePayment()
    {
        $package = self::getCurrentPackage();
        return $package ? $package->canUseOnlinePayment() : false;
    }

    public static function canUseOfflinePayment()
    {
        $package = self::getCurrentPackage();
        return $package ? $package->canUseOfflinePayment() : false;
    }

    public static function getAvailableThemes()
    {
        $package = self::getCurrentPackage();
        if (!$package) {
            return [];
        }

        $allowedThemes = $package->getAllowedThemes();
        $allThemes = ['bakery', 'beverage', 'coffee', 'fastfood', 'grocery', 'medicine', 'pizza'];
        
        return empty($allowedThemes) ? $allThemes : $allowedThemes;
    }

    public static function getAvailableThemesForUser($userId)
    {
        $packageData = LimitCheckerHelper::getPackageSelectedData($userId, 'allowed_themes');
        if (!$packageData) {
            return [];
        }

        $allowedThemes = $packageData->allowed_themes ? json_decode($packageData->allowed_themes, true) : [];
        $allThemes = ['bakery', 'beverage', 'coffee', 'fastfood', 'grocery', 'medicine', 'pizza'];
        
        return empty($allowedThemes) ? $allThemes : $allowedThemes;
    }

    public static function getAvailablePaymentGateways()
    {
        $package = self::getCurrentPackage();
        if (!$package) {
            return [];
        }

        $allowedGateways = $package->getPaymentGateways();
        $allGateways = ['paypal', 'stripe', 'razorpay', 'paystack', 'flutterwave', 'mollie', 'instamojo', 'paytm', 'mercadopago'];
        
        return empty($allowedGateways) ? $allGateways : $allowedGateways;
    }

    public static function canUploadCustomTheme()
    {
        $package = self::getCurrentPackage();
        return $package ? $package->custom_theme_upload : false;
    }

    public static function getThemeLimit()
    {
        $package = self::getCurrentPackage();
        return $package ? $package->theme_limit : 0;
    }
}