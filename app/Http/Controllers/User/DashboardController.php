<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\awarenessEnglish;
use App\Models\awarenessHindi;
use App\Models\eventEnglish;
use App\Models\eventHindi;
use App\Models\Gallery;
use App\Models\newsEnglish;
use App\Models\newsHindi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        // Display Info For English Language
        if (session('locale') == 'en') {
            $user = Auth::user();
            $news_count = newsEnglish::all()->count();
            $events_count = eventEnglish::all()->count();
            $awareness_count = awarenessEnglish::all()->count();
            $gallery_count = Gallery::all()->count();
            return view('user.dashboard', compact('news_count', 'events_count', 'awareness_count', 'gallery_count'));
        }

        // Display Info For Hindi Language
        if (session('locale') == 'hi') {
            $user = Auth::user();
            $news_count = newsHindi::all()->count();
            $events_count = eventHindi::all()->count();
            $awareness_count = awarenessHindi::all()->count();
            $gallery_count = Gallery::all()->count();
            return view('user.dashboard', compact('news_count', 'events_count', 'awareness_count', 'gallery_count'));
        }
    }
}
