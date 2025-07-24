
<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddThemeAndPaymentControlsToPackages extends Migration
{
    public function up()
    {
        Schema::table('packages', function (Blueprint $table) {
            $table->json('allowed_themes')->nullable()->after('features');
            $table->boolean('online_payment_enabled')->default(true)->after('allowed_themes');
            $table->boolean('offline_payment_enabled')->default(true)->after('online_payment_enabled');
            $table->json('payment_gateways')->nullable()->after('offline_payment_enabled');
            $table->integer('theme_limit')->default(999999)->after('payment_gateways');
            $table->boolean('custom_theme_upload')->default(false)->after('theme_limit');
        });
    }

    public function down()
    {
        Schema::table('packages', function (Blueprint $table) {
            $table->dropColumn([
                'allowed_themes',
                'online_payment_enabled',
                'offline_payment_enabled', 
                'payment_gateways',
                'theme_limit',
                'custom_theme_upload'
            ]);
        });
    }
}