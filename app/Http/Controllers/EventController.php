<?php

namespace App\Http\Controllers;

use App\Models\eventEnglish;
use App\Models\eventHindi;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class EventController extends Controller
{

    public function event()
    {
        // Display Event For English Language
        if (session('locale') == 'en') {
            $events = eventEnglish::orderBy('id', 'desc')->paginate(6);
            return view('news.event', compact('events'));
        }

        // Display Event For Hindi Language
        if (session('locale') == 'hi') {
            $events = eventHindi::orderBy('id', 'desc')->paginate(6);
            return view('news.event', compact('events'));
        }
    }

    public function eventdetail($slug)
    {
        // Event Detail For English Language
        if (session('locale') == 'en') {
            $events = eventEnglish::where('slug', $slug)->first();

            if (!$events) {
                return redirect()->back();
            }

            return view('news.event-detail', compact('events'));
        }

        // Event Detail For Hindi Language
        if (session('locale') == 'hi') {
            $events = eventHindi::where('slug', $slug)->first();

            if (!$events) {
                return redirect()->back();
            }

            return view('news.event-detail', compact('events'));
        }
    }

    public function downloads()
    {
        return view('news.downloads');
    }
}
