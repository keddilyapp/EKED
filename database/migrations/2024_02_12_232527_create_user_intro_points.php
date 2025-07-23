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
        Schema::create('user_intro_points', function (Blueprint $table) {
            $table->id();
            $table->integer('language_id');
            $table->integer('user_id');
            $table->string('icon')->nullable();
            $table->string('title');
            $table->text('text')->nullable();
            $table->integer('intro_section_rating_point')->nullable();
            $table->string('intro_section_rating_symbol')->nullable();
            $table->integer('serial_number')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_intro_points');
    }
};
