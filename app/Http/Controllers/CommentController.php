<?php

namespace App\Http\Controllers;

use
    App\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function PostComment(Request $request)
    {
        $test1 = $request->all();
        $test1['sahip_id'] = Auth::id();
        $commenti = new Comment();
        $commenti->create($test1);

    }
    }





