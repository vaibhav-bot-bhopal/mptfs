<?php

namespace App\Http\Controllers;

use App\Models\awarenessEnglish;
use App\Models\Download;
use App\Models\eventEnglish;
use App\Models\eventHindi;
use App\Models\Gallery;
use App\Models\newsEnglish;
use App\Models\newsHindi;
use App\Models\Post;
use App\Models\PostHindi;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WelcomeController extends Controller
{
    public function index()
    {
        // Display Article, Event and News For English Language
        if (session('locale') == 'en') {
            $users = User::all();
            $posts = Post::approved()->published()->latest()->paginate(3);
            $events = eventEnglish::orderBy('id', 'desc')->take(3)->get();
            $newses = newsEnglish::orderBy('id', 'desc')->take(3)->get();
            return view('home.index', compact('users', 'posts', 'events', 'newses'));
        }

        // Display Article, Event and News For Hindi Language
        if (session('locale') == 'hi') {
            $posts = PostHindi::approved()->published()->latest()->paginate(3);
            $events = eventHindi::orderBy('id', 'desc')->take(3)->get();
            $newses = newsHindi::orderBy('id', 'desc')->take(3)->get();
            return view('home.index', compact('posts', 'events', 'newses'));
        }
    }

    public function contact()
    {
        return view('home.contact');
    }

    // View Gallery
    public function gallery()
    {
        $photos = Gallery::orderBy('original_filename', 'DESC')->paginate(12);
        return view('home.gallery', compact('photos'));
    }

    // View Gallery
    public function downloads()
    {
        $photos = Download::orderBy('original_filename', 'DESC')->paginate(12);
        return view('news.downloads', compact('photos'));
    }
}
