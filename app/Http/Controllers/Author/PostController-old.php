<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\PostHindi;
use App\Models\User;
use App\Notifications\NewAuthorPost;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Notification;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Show Posts For English Language
        if (session('locale') == 'en') {
            $posts = Auth::User()->posts()->latest()->get();
            return view('author.post.index', compact('posts'));
        }

        // Show Posts For Hindi Language
        if (session('locale') == 'hi') {
            $posts = Auth::User()->post_hindis()->latest()->get();
            return view('author.post.index', compact('posts'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Create Post For English Language
        if (session('locale') == 'en') {
            $categories = Category::all();
            return view('author.post.create', compact('categories'));
        }

        // Create Post For Hindi Language
        if (session('locale') == 'hi') {
            $categories = Category::all();
            return view('author.post.create', compact('categories'));
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Store Post For English Language
        if (session('locale') == 'en') {
            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'required|mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('author.post.create')->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post')) {
                        Storage::disk('public')->makeDirectory('post');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(770, 450)->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('latest-news')) {
                        Storage::disk('public')->makeDirectory('latest-news');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(90, 90)->stream();
                    Storage::disk('public')->put('latest-news/' . $imageName, $postImage);
                } else {
                    $imageName = "default.png";
                }

                $post = new Post();
                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = $slug;
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = false;
                $post->save();

                $post->categories()->attach($request->categories);
                $users = User::where('role_id', '1')->get();
                Notification::send($users, new NewAuthorPost($post));
                Toastr::success('Post Successfully Saved.', 'success');
                return redirect()->route('author.post.index');
            }
        }

        // Store Post For Hindi Language
        if (session('locale') == 'hi') {
            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'required|mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('author.post.create')->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post')) {
                        Storage::disk('public')->makeDirectory('post');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(770, 450)->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('latest-news')) {
                        Storage::disk('public')->makeDirectory('latest-news');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(90, 90)->stream();
                    Storage::disk('public')->put('latest-news/' . $imageName, $postImage);
                } else {
                    $imageName = "default.png";
                }

                $post = new PostHindi();
                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = $slug;
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = false;
                $post->save();

                $post->categories()->attach($request->categories);
                $users = User::where('role_id', '1')->get();
                Notification::send($users, new NewAuthorPost($post));
                Toastr::success('पोस्ट सफलतापूर्वक स्टोर किया गया।', 'success');
                return redirect()->route('author.post.index');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        // Show Post For English Language
        if (session('locale') == 'en') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('You are not authorized to access this post.', 'Error');
                return redirect()->back();
            }
            return view('author.post.show', compact('post'));
        }

        // Show Post For Hindi Language
        if (session('locale') == 'hi') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('आप इस पोस्ट तक पहुंचने के लिए अधिकृत नहीं हैं।', 'Error');
                return redirect()->back();
            }
            return view('author.post.show', compact('post'));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        // Edit Post For English Language
        if (session('locale') == 'en') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('You are not authorized to access this post.', 'Error');
                return redirect()->back();
            }

            $categories = Category::all();
            return view('author.post.edit', compact('post', 'categories'));
        }

        // Edit Post For Hindi Language
        if (session('locale') == 'hi') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('आप इस पोस्ट तक पहुंचने के लिए अधिकृत नहीं हैं।', 'Error');
                return redirect()->back();
            }

            $categories = Category::all();
            return view('author.post.edit', compact('post', 'categories'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post, PostHindi $postHi)
    {
        // Update Post For English Language
        if (session('locale') == 'en') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('You are not authorized to access this post.', 'Error');
                return redirect()->back();
            }

            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('author.post.edit', $post->id)->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post')) {
                        Storage::disk('public')->makeDirectory('post');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('post/' . $post->image)) {
                        Storage::disk('public')->delete('post/' . $post->image);
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(770, 450)->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);
                } else {
                    $imageName = $request->himage;
                }

                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = $slug;
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = false;
                $post->save();

                $post->categories()->sync($request->categories);

                Toastr::success('Post Successfully Updated.', 'success');
                return redirect()->route('author.post.index');
            }
        }

        // Update Post For Hindi Language
        if (session('locale') == 'hi') {
            if ($postHi->user_id != Auth::id()) {
                Toastr::error('आप इस पोस्ट तक पहुंचने के लिए अधिकृत नहीं हैं।', 'Error');
                return redirect()->back();
            }

            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('author.post.edit', $postHi->id)->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post')) {
                        Storage::disk('public')->makeDirectory('post');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('post/' . $postHi->image)) {
                        Storage::disk('public')->delete('post/' . $postHi->image);
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(770, 450)->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);
                } else {
                    $imageName = $request->himage;
                }

                $postHi->user_id = Auth::id();
                $postHi->title = $request->title;
                $postHi->slug = $slug;
                $postHi->image = $imageName;
                $postHi->body = $request->pbody;
                if (isset($request->status)) {
                    $postHi->status = true;
                } else {
                    $postHi->status = false;
                }
                $postHi->is_approved = false;
                $postHi->save();

                $postHi->categories()->sync($request->categories);

                Toastr::success('पोस्ट को सफलतापूर्वक अपडेट किया गया।', 'success');
                return redirect()->route('author.post.index');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post, PostHindi $postHi)
    {
        // Delete Post For English Language
        if (session('locale') == 'en') {
            if ($post->user_id != Auth::id()) {
                Toastr::error('You are not authorized to access this post.', 'Error');
                return redirect()->back();
            }

            if (Storage::disk('public')->exists('post/' . $post->image)) {
                Storage::disk('public')->delete('post/' . $post->image);
            }
            $post->categories()->detach();
            $post->delete();
            Toastr::success('Post Successfully Deleted.', 'success');
            return redirect()->back();
        }

        // Delete Post For Hindi Language
        if (session('locale') == 'hi') {
            if ($postHi->user_id != Auth::id()) {
                Toastr::error('आप इस पोस्ट तक पहुंचने के लिए अधिकृत नहीं हैं।', 'Error');
                return redirect()->back();
            }

            if (Storage::disk('public')->exists('post/' . $postHi->image)) {
                Storage::disk('public')->delete('post/' . $postHi->image);
            }
            $postHi->categories()->detach();
            $postHi->delete();
            Toastr::success('पोस्ट सफलतापूर्वक हटा दिया गया।', 'success');
            return redirect()->back();
        }
    }
}
