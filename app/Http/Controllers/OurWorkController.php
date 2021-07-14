<?php

namespace App\Http\Controllers;

use App\Models\newsEnglish;
use Illuminate\Http\Request;

class OurWorkController extends Controller
{
    public function training()
    {
        return view('our-work.training');
    }

    public function bcrlip()
    {
        return view('our-work.bcrlip');
    }

    public function tigerReserve()
    {
        return view('our-work.tiger-reserve');
    }
}
