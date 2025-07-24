<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    public $table = "packages";

    protected $fillable = [
        'title',
        'slug',
        'price',
        'term',
        'featured',
        'recommended',
        'icon',
        'is_trial',
        'trial_days',
        'status',
        'storage_limit',
        'staff_limit',
        'order_limit',
        'categories_limit',
        'subcategories_limit',
        'items_limit',
        'table_reservation_limit',
        'language_limit',
        'features',
        'meta_keywords',
        'meta_description',
        'allowed_themes',
        'online_payment_enabled',
        'offline_payment_enabled',
        'payment_gateways',
        'theme_limit',
        'custom_theme_upload',
    ];

    public function memberships()
    {
        return $this->hasMany(Membership::class);
    }

    public function getAllowedThemes()
    {
        return $this->allowed_themes ? json_decode($this->allowed_themes, true) : [];
    }

    public function getPaymentGateways()
    {
        return $this->payment_gateways ? json_decode($this->payment_gateways, true) : [];
    }

    public function hasThemeAccess($theme)
    {
        $allowedThemes = $this->getAllowedThemes();
        return empty($allowedThemes) || in_array($theme, $allowedThemes);
    }

    public function hasPaymentGatewayAccess($gateway)
    {
        $paymentGateways = $this->getPaymentGateways();
        return empty($paymentGateways) || in_array($gateway, $paymentGateways);
    }

    public function canUseOnlinePayment()
    {
        return $this->online_payment_enabled;
    }

    public function canUseOfflinePayment()
    {
        return $this->offline_payment_enabled;
    }
}