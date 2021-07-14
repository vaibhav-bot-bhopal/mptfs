<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\awarenessEnglish;
use App\Models\awarenessHindi;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Cviebrock\EloquentSluggable\Services\SlugService;

class AwarenessController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Show Awareness Initiatives For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::latest()->get();
            return view('user.awareness.index', compact('awareness'));
        }

        // Show Awareness Initiatives For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::latest()->get();
            return view('user.awareness.index', compact('awareness'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // Create Awareness Initiatives For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::all();
            return view('user.awareness.create', compact('awareness'));
        }

        // Create Awareness Initiatives For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::all();
            return view('user.awareness.create', compact('awareness'));
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
        // Store Awareness Initiatives For English Language
        if (session('locale') == 'en') {
            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                // 'edate' => 'required|date_format:Y-m-d',
                // 'etime' => 'required|date_format:H:i',
                'place' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|required|mimes:jpeg,bmp,png,jpg',
                'm_image.*' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.awareness.create')->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('awareness-english')) {
                        Storage::disk('public')->makeDirectory('awareness-english');
                    }

                    // Resize image for category and upload
                    // $featureImage = Image::make($image)->resize(770, 500)->stream();
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('awareness-english/' . $imageName, $featureImage);
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
                        if (!Storage::disk('public')->exists('awareness-m-english')) {
                            Storage::disk('public')->makeDirectory('awareness-m-english');
                        }


                        // Resize image for category and upload
                        // $newsImage = Image::make($mimage)->resize(400, 250)->stream();
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('awareness-m-english/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = "default.png";
                }

                $awareness = new awarenessEnglish();
                $awareness->title = $request->title;
                $awareness->slug = SlugService::createSlug(awarenessEnglish::class, 'slug', $request->title);
                // $awareness->date = $request->edate;
                // $awareness->time = $request->etime;
                $awareness->place = $request->place;
                $awareness->discription = $request->pbody;
                $awareness->image = $imageName;
                $awareness->m_image = $m_images;
                $awareness->save();

                Toastr::success('Awareness Successfully Saved.', 'success');
                return redirect()->route('user.awareness.index');
            }
        }

        // Store Awareness Initiatives For Hindi Language
        if (session('locale') == 'hi') {
            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                // 'edate' => 'required|date_format:Y-m-d',
                // 'etime' => 'required|date_format:H:i',
                'place' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|required|mimes:jpeg,bmp,png,jpg',
                'm_image.*' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.awareness.create')->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('awareness-hindi')) {
                        Storage::disk('public')->makeDirectory('awareness-hindi');
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('awareness-hindi/' . $imageName, $featureImage);
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
                        if (!Storage::disk('public')->exists('awareness-m-hindi')) {
                            Storage::disk('public')->makeDirectory('awareness-m-hindi');
                        }


                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('awareness-m-hindi/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = "default.png";
                }

                $awareness = new awarenessHindi();
                $awareness->title = $request->title;
                $awareness->slug = SlugService::createSlug(awarenessHindi::class, 'slug', $request->title);
                // $awareness->date = $request->edate;
                // $awareness->time = $request->etime;
                $awareness->place = $request->place;
                $awareness->discription = $request->pbody;
                $awareness->image = $imageName;
                $awareness->m_image = $m_images;
                $awareness->save();

                Toastr::success('अवेयरनेस को सफलतापूर्वक स्टोर किया गया।', 'success');
                return redirect()->route('user.awareness.index');
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
        // Edit Awareness Initiatives For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::find($id);

            if (!$awareness) {
                Toastr::error('No Record Found.', 'Error');
                return redirect()->route('user.dashboard');
            }
            return view('user.awareness.edit', compact('awareness'));
        }

        // Edit Awareness Initiatives For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::find($id);

            if (!$awareness) {
                Toastr::error('कोई रिकॉर्ड नहीं मिला।', 'Error');
                return redirect()->route('user.dashboard');
            }
            return view('user.awareness.edit', compact('awareness'));
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
        // Update Awareness Initiative For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                // 'edate' => 'required|date_format:Y-m-d',
                // 'etime' => 'required|date_format:H:i',
                'place' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.awareness.edit', $awareness->id)->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('awareness-english')) {
                        Storage::disk('public')->makeDirectory('awareness-english');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('awareness-english/' . $awareness->image)) {
                        Storage::disk('public')->delete('awareness-english/' . $awareness->image);
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('awareness-english/' . $imageName, $featureImage);
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
                        if (!Storage::disk('public')->exists('awareness-m-english')) {
                            Storage::disk('public')->makeDirectory('awareness-m-english');
                        }

                        $rm_images = explode(",", $awareness->m_image);

                        // Delete old image
                        foreach ($rm_images as $rimages) {
                            if (Storage::disk('public')->exists('awareness-m-english/' . $rimages)) {
                                Storage::disk('public')->delete('awareness-m-english/' . $rimages);
                            }
                        }

                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('awareness-m-english/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = $request->hmimage;
                }

                $awareness->title = $request->title;
                $awareness->slug =  SlugService::createSlug(awarenessEnglish::class, 'slug', $request->title);
                // $awareness->date = $request->edate;
                // $awareness->time = $request->etime;
                $awareness->place = $request->place;
                $awareness->discription = $request->pbody;
                $awareness->image = $imageName;
                $awareness->m_image = $m_images;
                $awareness->save();

                Toastr::success('Awareness Successfully Updated.', 'success');
                return redirect()->route('user.awareness.index');
            }
        }

        // Update Awareness Initiative For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::find($id);

            $validator = Validator::make($request->all(), [
                'title' => 'required|max:255',
                // 'edate' => 'required|date_format:Y-m-d',
                // 'etime' => 'required|date_format:H:i',
                'place' => 'required|max:255',
                'pbody' => 'required',
                'image' => 'image|mimes:jpeg,bmp,png,jpg',
            ]);

            if ($validator->fails()) {
                return redirect()->route('user.awareness.edit', $awareness->id)->withErrors($validator)->withInput();
            } else {
                //Featured Image
                $image = $request->file('image');
                $slug = Str::slug($request->title);

                if (isset($image)) {
                    $currentDate = Carbon::now()->toDateString();
                    $imageName = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

                    // Check Category Directory is Exist
                    if (!Storage::disk('public')->exists('awareness-hindi')) {
                        Storage::disk('public')->makeDirectory('awareness-hindi');
                    }

                    // Delete old image
                    if (Storage::disk('public')->exists('awareness-hindi/' . $awareness->image)) {
                        Storage::disk('public')->delete('awareness-hindi/' . $awareness->image);
                    }

                    // Resize image for category and upload
                    $featureImage = Image::make($image)->resize(1080, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->stream();
                    Storage::disk('public')->put('awareness-hindi/' . $imageName, $featureImage);
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
                        if (!Storage::disk('public')->exists('awareness-m-hindi')) {
                            Storage::disk('public')->makeDirectory('awareness-m-hindi');
                        }

                        $rm_images = explode(",", $awareness->m_image);

                        // Delete old image
                        foreach ($rm_images as $rimages) {
                            if (Storage::disk('public')->exists('event-m-hindi/' . $rimages)) {
                                Storage::disk('public')->delete('event-m-hindi/' . $rimages);
                            }
                        }

                        // Resize image for category and upload
                        $newsImage = Image::make($mimage)->resize(1080, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->stream();
                        Storage::disk('public')->put('event-m-hindi/' . $mimageName, $newsImage);
                    }
                } else {
                    $m_images = $request->hmimage;
                }

                $awareness->title = $request->title;
                $awareness->slug =  SlugService::createSlug(awarenessHindi::class, 'slug', $request->title);
                // $awareness->date = $request->edate;
                // $awareness->time = $request->etime;
                $awareness->place = $request->place;
                $awareness->discription = $request->pbody;
                $awareness->image = $imageName;
                $awareness->m_image = $m_images;
                $awareness->save();

                Toastr::success('अवेयरनेस को सफलतापूर्वक अपडेट किया गया।', 'success');
                return redirect()->route('user.awareness.index');
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
        // Delete Event For English Language
        if (session('locale') == 'en') {
            $awareness = awarenessEnglish::find($id);

            if (!$awareness) {
                Toastr::error('No Record Found.', 'Error');
                return redirect()->back();
            }
            if (Storage::disk('public')->exists('awareness-english/' . $awareness->image)) {
                Storage::disk('public')->delete('awareness-english/' . $awareness->image);
            }

            $images = explode(",", $awareness->m_image);

            foreach ($images as $image) {
                if (Storage::disk('public')->exists('awareness-m-english/' . $image)) {
                    Storage::disk('public')->delete('awareness-m-english/' . $image);
                }
            }
            $awareness->delete();
            Toastr::success('Awareness Successfully Deleted.', 'success');
            return redirect()->back();
        }

        // Delete Event For Hindi Language
        if (session('locale') == 'hi') {
            $awareness = awarenessHindi::find($id);

            if (!$awareness) {
                Toastr::error('कोई रिकॉर्ड नहीं मिला।', 'Error');
                return redirect()->back();
            }
            if (Storage::disk('public')->exists('awareness-hindi/' . $awareness->image)) {
                Storage::disk('public')->delete('awareness-hindi/' . $awareness->image);
            }

            $images = explode(",", $awareness->m_image);

            foreach ($images as $image) {
                if (Storage::disk('public')->exists('awareness-m-hindi/' . $image)) {
                    Storage::disk('public')->delete('awareness-m-hindi/' . $image);
                }
            }
            $awareness->delete();
            Toastr::success('अवेयरनेस को सफलतापूर्वक हटा दिया गया।', 'success');
            return redirect()->back();
        }
    }
}
