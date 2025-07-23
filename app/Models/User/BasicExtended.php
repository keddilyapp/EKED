<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class BasicExtended extends Model
{
    protected $table = 'user_basic_extendeds';

    public $timestamps = false;

    protected $fillable = [
        'base_color',
        'office_time',
        'base_currency_symbol',
        'base_currency_symbol_position',
        'base_currency_text',
        'base_currency_text_position',
        'base_currency_rate',
        'home_version',
        'user_id',
        'language_id',
        'from_mail',
        'from_name',
        'author_image'
    ];

    public function language(): BelongsTo
    {
        return $this->belongsTo(Language::class);
    }
}
