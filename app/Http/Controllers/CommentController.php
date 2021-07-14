<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\CommentHindi;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{
    public function store(Request $request, $post)
    {
        // Store Comment For English Language
        if (session('locale') == 'en') {
            $validator = Validator::make($request->all(), [
                'comment' => 'required',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            } else {
                $comment = new Comment();
                $comment->post_id = $post;
                $comment->user_id = Auth::id();
                $comment->comment = $request->comment;
                $comment->save();

                Toastr::success('Comment Successfully Published.', 'success');
                return redirect()->back();
            }
        }

        // Store Comment For Hindi Language
        if (session('locale') == 'hi') {
            $validator = Validator::make($request->all(), [
                'comment' => 'required',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            } else {
                $comment = new CommentHindi();
                $comment->post_hindi_id = $post;
                $comment->user_id = Auth::id();
                $comment->comment = $request->comment;
                $comment->save();

                Toastr::success('कमेंट सफलतापूर्वक पब्लिश की गई।', 'success');
                return redirect()->back();
            }
        }
    }
}
