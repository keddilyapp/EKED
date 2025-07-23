<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (!Schema::hasColumn('memberships', 'conversation_id')) {
            Schema::table('memberships', function (Blueprint $table) {
                $table->string('conversation_id')->nullable();
            });
        }
        if (!Schema::hasColumn('product_orders', 'conversation_id')) {
            Schema::table('product_orders', function (Blueprint $table) {
                $table->string('conversation_id')->nullable();
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        if (Schema::hasColumn('memberships', 'conversation_id')) {
            Schema::table('memberships', function (Blueprint $table) {
                $table->dropColumn('conversation_id');
            });
        }
        if (Schema::hasColumn('product_orders', 'conversation_id')) {
            Schema::table('product_orders', function (Blueprint $table) {
                $table->dropColumn('conversation_id');
            });
        }
    }
};
