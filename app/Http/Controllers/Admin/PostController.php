<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\PostHindi;
use App\Models\Subscriber;
use App\Models\User;
use App\Notifications\AuthorPostApproved;
use App\Notifications\NewPostNotify;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;
use Cviebrock\EloquentSluggable\Services\SlugService;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Display Post For English Language
        if (session('locale') == 'en') {
            $posts = Post::latest()->get();
            return view('admin.post.index', compact('posts'));
        }

        // Display Post For Hindi Language
        if (session('locale') == 'hi') {
            $posts = PostHindi::latest()->get();
            return view('admin.post.index', compact('posts'));
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
            return view('admin.post.create', compact('categories'));
        }

        // Create Post For Hindi Language
        if (session('locale') == 'hi') {
            $categories = Category::all();
            return view('admin.post.create', compact('categories'));
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
        //Store Post For English Language
        if (session('locale') == 'en') {
            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'required|mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('admin.post.create')->withErrors($validator)->withInput();
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
                    // $postImage = Image::make($image)->resize(770, 450)->stream();
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('latest-news')) {
                        Storage::disk('public')->makeDirectory('latest-news');
                    }

                    // Resize image for category and upload
                    // $postImage = Image::make($image)->resize(90, 90)->stream();
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('latest-news/' . $imageName, $postImage);
                } else {
                    $imageName = "default.png";
                }

                $post = new Post();
                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = SlugService::createSlug(Post::class, 'slug', $request->title);
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = true;
                $post->save();

                $post->categories()->attach($request->categories);

                Toastr::success('Post Successfully Saved.', 'success');
                return redirect()->route('admin.post.index');
            }
        }

        //Store Post For Hindi Language
        if (session('locale') == 'hi') {
            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'required|mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('admin.post.create')->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post-hindi')) {
                        Storage::disk('public')->makeDirectory('post-hindi');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('post-hindi/' . $imageName, $postImage);

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('latest-news-hindi')) {
                        Storage::disk('public')->makeDirectory('latest-news-hindi');
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('latest-news-hindi/' . $imageName, $postImage);
                } else {
                    $imageName = "default.png";
                }

                $post = new PostHindi();
                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = SlugService::createSlug(PostHindi::class, 'slug', $request->title);
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = true;
                $post->save();

                $post->categories()->attach($request->categories);

                Toastr::success('पोस्ट सफलतापूर्वक स्टोर किया गया।', 'success');
                return redirect()->route('admin.post.index');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //Show Post For English Language
        if (session('locale') == 'en') {
            $post = Post::find($id);

            if (!$post) {
                Toastr::error('No Post Found.', 'Error');
                return redirect()->route('admin.dashboard');
            }

            return view('admin.post.show', compact('post'));
        }

        //Show Post For Hindi Language
        if (session('locale') == 'hi') {
            $post = PostHindi::find($id);

            if (!$post) {
                Toastr::error('कोई पोस्ट नहीं मिली।', 'Error');
                return redirect()->route('admin.dashboard');
            }

            return view('admin.post.show', compact('post'));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //Edit Post For English Language
        if (session('locale') == 'en') {
            $post = Post::find($id);

            if (!$post) {
                Toastr::error('No Post Found.', 'Error');
                return redirect()->route('admin.dashboard');
            }

            $categories = Category::all();
            return view('admin.post.edit', compact('post', 'categories'));
        }

        //Edit Post For Hindi Language
        if (session('locale') == 'hi') {
            $post = PostHindi::find($id);

            if (!$post) {
                Toastr::error('कोई पोस्ट नहीं मिली।', 'Error');
                return redirect()->route('admin.dashboard');
            }

            $categories = Category::all();
            return view('admin.post.edit', compact('post', 'categories'));
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //Update Post For English Language
        if (session('locale') == 'en') {
            $post = Post::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('admin.post.edit', $post->id)->withErrors($validator)->withInput();
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
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('post/' . $imageName, $postImage);
                } else {
                    $imageName = $request->himage;
                }

                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = SlugService::createSlug(Post::class, 'slug', $request->title);
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = true;
                $post->save();

                $post->categories()->sync($request->categories);

                Toastr::success('Post Successfully Updated.', 'success');
                return redirect()->route('admin.post.index');
            }
        }

        //Update Post For Hindi Language
        if (session('locale') == 'hi') {
            $post = PostHindi::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required',
                'image' => 'mimes:jpeg,bmp,png,jpg',
                'categories' => 'required',
                'pbody' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect()->route('admin.post.edit', $post->id)->withErrors($validator)->withInput();
            } else {
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('post-hindi')) {
                        Storage::disk('public')->makeDirectory('post-hindi');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('post-hindi/' . $post->image)) {
                        Storage::disk('public')->delete('post-hindi/' . $post->image);
                    }

                    // Resize image for category and upload
                    $postImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('post-hindi/' . $imageName, $postImage);
                } else {
                    $imageName = $request->himage;
                }

                $post->user_id = Auth::id();
                $post->title = $request->title;
                $post->slug = SlugService::createSlug(PostHindi::class, 'slug', $request->title);
                $post->image = $imageName;
                $post->body = $request->pbody;
                if (isset($request->status)) {
                    $post->status = true;
                } else {
                    $post->status = false;
                }
                $post->is_approved = true;
                $post->save();

                $post->categories()->sync($request->categories);

                Toastr::success('पोस्ट को सफलतापूर्वक अपडेट किया गया।', 'success');
                return redirect()->route('admin.post.index');
            }
        }
    }

    public function pending()
    {
        //Pending Post For English Language
        if (session('locale') == 'en') {
            $posts = Post::where('is_approved', false)->get();
            return view('admin.post.pending', compact('posts'));
        }

        //Pending Post For Hindi Language
        if (session('locale') == 'hi') {
            $posts = PostHindi::where('is_approved', false)->get();
            return view('admin.post.pending', compact('posts'));
        }
    }

    public function approval($id)
    {
        //Post Approval For English Language
        if (session('locale') == 'en') {
            $post = Post::find($id);
            if ($post->is_approved == false) {
                $post->is_approved = true;
                $post->save();
                $post->user->notify(new AuthorPostApproved($post));

                Toastr::success('Post Successfully Approved.', 'Success');
            } else {
                Toastr::info('This Post is already approved.', 'Info');
            }
            return redirect()->back();
        }

        //Post Approval For Hindi Language
        if (session('locale') == 'hi') {
            $post = PostHindi::find($id);
            if ($post->is_approved == false) {
                $post->is_approved = true;
                $post->save();
                $post->user->notify(new AuthorPostApproved($post));

                Toastr::success('पोस्ट सफलतापूर्वक स्वीकृत हुई।', 'Success');
            } else {
                Toastr::info('यह पोस्ट पहले से स्वीकृत है।', 'Info');
            }
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //Delete Post For English Language
        if (session('locale') == 'en') {
            $post = Post::find($id);

            if (!$post) {
                Toastr::error('No Post Found.', 'Error');
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

        //Delete Post For Hindi Language
        if (session('locale') == 'hi') {
            $post = PostHindi::find($id);

            if (!$post) {
                Toastr::error('कोई पोस्ट नहीं मिली।', 'Error');
                return redirect()->back();
            }

            if (Storage::disk('public')->exists('post-hindi/' . $post->image)) {
                Storage::disk('public')->delete('post-hindi/' . $post->image);
            }
            $post->categories()->detach();
            $post->delete();
            Toastr::success('पोस्ट सफलतापूर्वक हटाई गई।', 'success');
            return redirect()->back();
        }
    }
}
