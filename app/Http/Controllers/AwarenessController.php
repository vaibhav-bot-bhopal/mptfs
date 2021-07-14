<?php

namespace App\Http\Controllers;

use App\Models\awarenessEnglish;
use App\Models\awarenessHindi;
use Illuminate\Http\Request;

class AwarenessController extends Controller
{
    public function awareness()
    {
        // Display Event For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::orderBy('id', 'desc')->paginate(6);
            return view('our-work.awareness', compact('awareness'));
        }

        // Display Event For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::orderBy('id', 'desc')->paginate(6);
            return view('our-work.awareness', compact('awareness'));
        }
    }

    public function awarenessdetail($slug)
    {
        // Event Detail For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::where('slug', $slug)->first();

            if (!$awareness) {
                return redirect()->back();
            }

            return view('our-work.awareness-detail', compact('awareness'));
        }

        // Event Detail For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::where('slug', $slug)->first();

            if (!$awareness) {
                return redirect()->back();
            }

            return view('our-work.awareness-detail', compact('awareness'));
        }
    }
}
