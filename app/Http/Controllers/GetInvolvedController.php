<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GetInvolvedController extends Controller
{
    public function support()
    {
        return view('get-involved.support');
    }

    public function partners()
    {
        return view('get-involved.partners');
    }

    public function love()
    {
        return view('get-involved.love');
    }
}
