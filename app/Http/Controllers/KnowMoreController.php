<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KnowMoreController extends Controller
{
    public function about_mptfs()
    {
        return view('know-more.about_mptfs');
    }

    public function governing_body()
    {
        return view('know-more.governing_body');
    }

    public function project_tiger()
    {
        return view('know-more.project_tiger');
    }
}
