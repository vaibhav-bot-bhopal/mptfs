<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\eventEnglish;
use App\Models\newsEnglish;
use App\Models\newsHindi;
use App\Models\Post;
use App\Models\PostHindi;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsController extends Controller
{
    public function blog()
    {
        // Display Blog For English Language
        if (session('locale') == 'en') {
            $categories = Category::all();
            $randomposts = Post::approved()->published()->take(3)->inRandomOrder()->get();
            $posts = Post::latest()->approved()->published()->paginate(6);
            return view('blog.blog', compact('categories', 'randomposts', 'posts'));
        }

        // Display Blog For Hindi Language
        if (session('locale') == 'hi') {
            $categories = Category::all();
            $randomposts = PostHindi::approved()->published()->take(3)->inRandomOrder()->get();
            $posts = PostHindi::latest()->approved()->published()->paginate(6);
            return view('blog.blog', compact('categories', 'randomposts', 'posts'));
        }
    }

    public function news()
    {
        // Display News For English Language
        if (session('locale') == 'en') {
            $newses = newsEnglish::orderBy('id', 'desc')->paginate(6);
            return view('news.news', compact('newses'));
        }

        // Display News For Hindi Language
        if (session('locale') == 'hi') {
            $newses = newsHindi::orderBy('id', 'desc')->paginate(6);
            return view('news.news', compact('newses'));
        }
    }

    public function newsdetail($slug)
    {
        // News Detail For English Language
        if (session('locale') == 'en') {
            $newses = newsEnglish::where('slug', $slug)->first();

            if (!$newses) {
                return redirect()->route('home');
            }

            return view('news.news-detail', compact('newses'));
        }

        // News Detail For Hindi Language
        if (session('locale') == 'hi') {
            $newses = newsHindi::where('slug', $slug)->first();

            if (!$newses) {
                return redirect()->route('home');
            }

            return view('news.news-detail', compact('newses'));
        }
    }
}
