<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LoveGift extends Model
{
    protected $fillable = ['slug_list_id', 'banks'];

    protected $casts = [
        'banks' => 'array', // otomatis decode JSON ke array
    ];

    public function slug()
    {
        return $this->belongsTo(SlugList::class, 'slug_list_id');
    }
}
