<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Solarsystem;

class Planet extends Model
{
    use HasFactory;

    public function solarsystem()
    {
        return $this->belongsTo(Solarsystem::class);
    }
}
