<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    public function index()
    {
       $authors = User::authors()
           ->withCount('posts')
           ->withCount('comments')
           ->get();

        $roles = Role::all();
       return view('admin.authors',compact('authors', 'roles'));
    }

    public function destroy($id)
    {
        $author = User::findOrFail($id)->delete();
        Toastr::success('Author Successfully Deleted.','Success');
        return redirect()->back();
    }

    public function changeUserStatus(Request $request)
    {
        $user = User::find($request->user_id);
        $user->status = $request->status;
        $user->save();

        if($user->status == 0)
        {
            return response()->json(['message'=>'User account has been actived successfully.']);
        }
        else if($user->status == 1)
        {
            return response()->json(['message'=>'User account has been deactived successfully.']);
        }
        else
        {
            return response()->json(['message'=>'Something went wrong !!']);
        }
    }
}
