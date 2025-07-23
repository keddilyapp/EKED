<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IntroPoint extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $table = 'user_intro_points';
    protected $fillable = [
        "language_id",
        'user_id',
        'image',
        'title',
        'serial_number',
    ];



    public function language()
    {
        return $this->belongsTo('App\Models\User\Language');
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
