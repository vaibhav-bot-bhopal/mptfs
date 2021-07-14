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
        if(session('locale') == 'en'){
            $posts = Post::latest()->get();
            return view('admin.post.index', compact('posts'));
        }

        // Display Post For Hindi Language
        if(session('locale') == 'hi'){
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
        $categories = Category::all();
        return view('admin.post.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'image' => 'required|mimes:jpeg,bmp,png,jpg',
            'categories' => 'required',
            'pbody' => 'required'
        ]);

        if($validator->fails())
        {
            return redirect()->route('admin.post.create')->withErrors($validator)->withInput();
        }
        else
        {
            $image = $request->file('image');
            $slug = Str::slug($request->title);

            if(isset($image))
            {
                $currentDate = Carbon::now()->toDateString();
                $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

                // Check Category Directory is Exist
                if(!Storage::disk('public')->exists('post'))
                {
                    Storage::disk('public')->makeDirectory('post');
                }

                // Resize image for category and upload
                $postImage = Image::make($image)->resize(770,450)->stream();
                Storage::disk('public')->put('post/'.$imageName,$postImage);
            }
            else
            {
                $imageName = "default.png";
            }

            $post = new Post();
            $post->user_id = Auth::id();
            $post->title = $request->title;
            $post->slug = $slug;
            $post->image = $imageName;
            $post->body = $request->pbody;
            if(isset($request->status))
            {
                $post->status = true;
            }
            else
            {
                $post->status = false;
            }
            $post->is_approved = true;
            $post->save();

            $post->categories()->attach($request->categories);

            Toastr::success('Post Successfully Saved.', 'success');
            return redirect()->route('admin.post.index');
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
        return view('admin.post.show',compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $categories = Category::all();
        return view('admin.post.edit',compact('post','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'image' => 'mimes:jpeg,bmp,png,jpg',
            'categories' => 'required',
            'pbody' => 'required'
        ]);

        if($validator->fails())
        {
            return redirect()->route('admin.post.edit', $post->id)->withErrors($validator)->withInput();
        }
        else
        {
            $image = $request->file('image');
            $slug = Str::slug($request->title);

            if(isset($image))
            {
                $currentDate = Carbon::now()->toDateString();
                $imageName = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

                // Check Category Directory is Exist
                if(!Storage::disk('public')->exists('post'))
                {
                    Storage::disk('public')->makeDirectory('post');
                }

                // Delete old image
                if(Storage::disk('public')->exists('post/'.$post->image))
                {
                    Storage::disk('public')->delete('post/'.$post->image);
                }

                // Resize image for category and upload
                $postImage = Image::make($image)->resize(770,450)->stream();
                Storage::disk('public')->put('post/'.$imageName,$postImage);
            }
            else
            {
                $imageName = $request->himage;
            }

            $post->user_id = Auth::id();
            $post->title = $request->title;
            $post->slug = $slug;
            $post->image = $imageName;
            $post->body = $request->pbody;
            if(isset($request->status))
            {
                $post->status = true;
            }
            else
            {
                $post->status = false;
            }
            $post->is_approved = true;
            $post->save();

            $post->categories()->sync($request->categories);

            Toastr::success('Post Successfully Updated.', 'success');
            return redirect()->route('admin.post.index');
        }
    }

    public function pending()
    {
        $posts = Post::where('is_approved',false)->get();
        return view('admin.post.pending',compact('posts'));
    }

    public function approval($id)
    {
        $post = Post::find($id);
        if ($post->is_approved == false)
        {
            $post->is_approved = true;
            $post->save();
            $post->user->notify(new AuthorPostApproved($post));

            Toastr::success('Post Successfully Approved.', 'Success');
        } else {
            Toastr::info('This Post is already approved.', 'Info');
        }
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        if(Storage::disk('public')->exists('post/'.$post->image))
        {
            Storage::disk('public')->delete('post/'.$post->image);
        }
        $post->categories()->detach();
        $post->delete();
        Toastr::success('Post Successfully Deleted.', 'success');
        return redirect()->back();
    }
}
