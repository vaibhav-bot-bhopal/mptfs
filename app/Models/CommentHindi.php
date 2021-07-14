<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentHindi extends Model
{
    use HasFactory;

    public function post()
    {
        return $this->belongsTo('App\Models\PostHindi');
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
