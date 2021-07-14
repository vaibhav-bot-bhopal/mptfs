<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\newsEnglish;
use App\Models\newsHindi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Cviebrock\EloquentSluggable\Services\SlugService;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Show News For English Language
        if (session('locale') == 'en') {
            $newses = newsEnglish::latest()->get();
            return view('user.news.index', compact('newses'));
        }

        // Show News For Hindi Language
        if (session('locale') == 'hi') {
            $newses = newsHindi::latest()->get();
            return view('user.news.index', compact('newses'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Create News For English Language
        if (session('locale') == 'en') {
            $newses = newsEnglish::all();
            return view('user.news.create', compact('newses'));
        }

        // Create News For Hindi Language
        if (session('locale') == 'hi') {
            $newses = newsHindi::all();
            return view('user.news.create', compact('newses'));
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
        // Store News For English Language
        if (session('locale') == 'en') {
            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|required|mimes:jpeg,bmp,png,jpg',
                'm_image.*' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.news.create')->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('news-english')) {
                        Storage::disk('public')->makeDirectory('news-english');
                    }

                    // Resize image for category and upload
                    // $featureImage = Image::make($image)->resize(770, 500)->stream();
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('news-english/' . $imageName, $featureImage);
                } else {
                    $imageName = "default.png";
                }

                //News Images
                $mimages = $request->file('m_image');
                $images = [];

                if (isset($mimages)) {
                    foreach ($mimages as $mimage) {
                        $currentDate = Carbon::now()->toDateString();
                        $mimageName = $currentDate . '-' . uniqid() . '.' . $mimage->getClientOriginalExtension();
                        $images[] = $mimageName;
                        $m_images = implode(",", $images);

                        // Check Category Directory is Exist
                        if (!Storage::disk('public')->exists('news-m-english')) {
                            Storage::disk('public')->makeDirectory('news-m-english');
                        }


                        // Resize image for category and upload
                        // $newsImage = Image::make($mimage)->resize(400, 200)->stream();
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('news-m-english/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = "default.png";
                }

                $news = new newsEnglish();
                $news->title = $request->title;
                $news->slug = SlugService::createSlug(newsEnglish::class, 'slug', $request->title);
                $news->discription = $request->pbody;
                $news->image = $imageName;
                $news->m_image = $m_images;
                $news->save();

                Toastr::success('News Successfully Saved.', 'success');
                return redirect()->route('user.news.index');
            }
        }

        // Store News For Hindi Language
        if (session('locale') == 'hi') {
            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|required|mimes:jpeg,bmp,png,jpg',
                'm_image.*' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.news.create')->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('news-hindi')) {
                        Storage::disk('public')->makeDirectory('news-hindi');
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('news-hindi/' . $imageName, $featureImage);
                } else {
                    $imageName = "default.png";
                }

                //News Images
                $mimages = $request->file('m_image');
                $images = [];

                if (isset($mimages)) {
                    foreach ($mimages as $mimage) {
                        $currentDate = Carbon::now()->toDateString();
                        $mimageName = $currentDate . '-' . uniqid() . '.' . $mimage->getClientOriginalExtension();
                        $images[] = $mimageName;
                        $m_images = implode(",", $images);

                        // Check Category Directory is Exist
                        if (!Storage::disk('public')->exists('news-m-hindi')) {
                            Storage::disk('public')->makeDirectory('news-m-hindi');
                        }


                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('news-m-hindi/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = "default.png";
                }

                $news = new newsHindi();
                $news->title = $request->title;
                $news->slug = SlugService::createSlug(newsHindi::class, 'slug', $request->title);
                $news->discription = $request->pbody;
                $news->image = $imageName;
                $news->m_image = $m_images;
                $news->save();

                Toastr::success('समाचार सफलतापूर्वक स्टोर किया गया।', 'success');
                return redirect()->route('user.news.index');
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Edit News For English Language
        if (session('locale') == 'en') {
            $news = newsEnglish::find($id);

            if (!$news) {
                Toastr::error('No News Found.', 'Error');
                return redirect()->route('user.dashboard');
            }

            return view('user.news.edit', compact('news'));
        }

        // Edit News For Hindi Language
        if (session('locale') == 'hi') {
            $news = newsHindi::find($id);

            if (!$news) {
                Toastr::error('कोई समाचार नहीं मिला।', 'Error');
                return redirect()->route('user.dashboard');
            }

            return view('user.news.edit', compact('news'));
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
        // Update News For English Language
        if (session('locale') == 'en') {
            $news = newsEnglish::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.news.edit', $news->id)->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('news-english')) {
                        Storage::disk('public')->makeDirectory('news-english');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('news-english/' . $news->image)) {
                        Storage::disk('public')->delete('news-english/' . $news->image);
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('news-english/' . $imageName, $featureImage);
                } else {
                    $imageName = $request->himage;
                }

                //News Images
                $mimages = $request->file('m_image');
                $images = [];

                if (isset($mimages)) {
                    foreach ($mimages as $mimage) {
                        $currentDate = Carbon::now()->toDateString();
                        $mimageName = $currentDate . '-' . uniqid() . '.' . $mimage->getClientOriginalExtension();
                        $images[] = $mimageName;
                        $m_images = implode(",", $images);

                        // Check Category Directory is Exist
                        if (!Storage::disk('public')->exists('news-m-english')) {
                            Storage::disk('public')->makeDirectory('news-m-english');
                        }

                        $rm_images = explode(",", $news->m_image);

                        // Delete old image
                        foreach ($rm_images as $rimages) {
                            if (Storage::disk('public')->exists('news-m-english/' . $rimages)) {
                                Storage::disk('public')->delete('news-m-english/' . $rimages);
                            }
                        }

                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('news-m-english/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = $request->hmimage;
                }

                // $news = new newsEnglish();
                $news->title = $request->title;
                $news->slug = SlugService::createSlug(newsEnglish::class, 'slug', $request->title);
                $news->discription = $request->pbody;
                $news->image = $imageName;
                $news->m_image = $m_images;
                $news->save();

                Toastr::success('News Successfully Updated.', 'success');
                return redirect()->route('user.news.index');
            }
        }

        // Update News For Hindi Language
        if (session('locale') == 'hi') {
            $news = newsHindi::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.news.edit', $news->id)->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('news-hindi')) {
                        Storage::disk('public')->makeDirectory('news-hindi');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('news-hindi/' . $news->image)) {
                        Storage::disk('public')->delete('news-hindi/' . $news->image);
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('news-hindi/' . $imageName, $featureImage);
                } else {
                    $imageName = $request->himage;
                }

                //News Images
                $mimages = $request->file('m_image');
                $images = [];

                if (isset($mimages)) {
                    foreach ($mimages as $mimage) {
                        $currentDate = Carbon::now()->toDateString();
                        $mimageName = $currentDate . '-' . uniqid() . '.' . $mimage->getClientOriginalExtension();
                        $images[] = $mimageName;
                        $m_images = implode(",", $images);

                        // Check Category Directory is Exist
                        if (!Storage::disk('public')->exists('news-m-hindi')) {
                            Storage::disk('public')->makeDirectory('news-m-hindi');
                        }

                        $rm_images = explode(",", $news->m_image);

                        // Delete old image
                        foreach ($rm_images as $rimages) {
                            if (Storage::disk('public')->exists('news-m-hindi/' . $rimages)) {
                                Storage::disk('public')->delete('news-m-hindi/' . $rimages);
                            }
                        }

                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('news-m-hindi/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = $request->hmimage;
                }

                // $news = new newsEnglish();
                $news->title = $request->title;
                $news->slug = SlugService::createSlug(newsHindi::class, 'slug', $request->title);
                $news->discription = $request->pbody;
                $news->image = $imageName;
                $news->m_image = $m_images;
                $news->save();

                Toastr::success('समाचार सफलतापूर्वक अपडेट किया गया।', 'success');
                return redirect()->route('user.news.index');
            }
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
        // Delete News For English Language
        if (session('locale') == 'en') {
            $news = newsEnglish::find($id);

            if (!$news) {
                Toastr::error('No News Found.', 'Error');
                return redirect()->back();
            }

            if (Storage::disk('public')->exists('news-english/' . $news->image)) {
                Storage::disk('public')->delete('news-english/' . $news->image);
            }

            $images = explode(",", $news->m_image);

            foreach ($images as $image) {
                if (Storage::disk('public')->exists('news-m-english/' . $image)) {
                    Storage::disk('public')->delete('news-m-english/' . $image);
                }
            }
            $news->delete();
            Toastr::success('News Successfully Deleted.', 'success');
            return redirect()->back();
        }

        // Delete News For Hindi Language
        if (session('locale') == 'hi') {
            $news = newsHindi::find($id);

            if (!$news) {
                Toastr::error('कोई समाचार नहीं मिला।', 'Error');
                return redirect()->back();
            }

            if (Storage::disk('public')->exists('news-hindi/' . $news->image)) {
                Storage::disk('public')->delete('news-hindi/' . $news->image);
            }

            $images = explode(",", $news->m_image);

            foreach ($images as $image) {
                if (Storage::disk('public')->exists('news-m-hindi/' . $image)) {
                    Storage::disk('public')->delete('news-m-hindi/' . $image);
                }
            }
            $news->delete();
            Toastr::success('समाचार सफलतापूर्वक हटा दिया गया।', 'success');
            return redirect()->back();
        }
    }
}
