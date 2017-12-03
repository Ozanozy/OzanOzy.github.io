<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function PostAll()
    {
        $posts = \DB::table('posts')
            ->orderBy('id', 'desc')
            //->where('featured',  1)
            //->limit('2')
            ->get();
        return view('welcome', compact('posts'));
    }


    public function GalleryAll()
    {
        $posts = \DB::table('posts')
            ->orderBy('id', 'desc')
            //->limit('8')
            ->get();
        ////////////////////////
        $limitposts = \DB::table('posts')
            ->orderBy('id', 'desc')
            //->where('featured',  1) kodun herkese açık olup olmadığını kontrol eder
            ->limit('6')
            ->get();

        return view('hafriyat', compact('posts', 'limitposts'));
    }

    public function DetailofPost($id)
    {
        $PostDetails = Post::where('slug', $id)->first();
        //$AuthorDetails = Author::find($PostDetails->author_id);
        $Latests = \DB::table('posts')
            ->orderBy('id', 'desc')
            ->Limit('3')
            ->get();
        $CommentDetails = \DB::table('comments')
            ->where("makale_id", $PostDetails->id)
            //->orderBy('comment_id', 'desc')
            //->Limit('4')
            ->get();
        return view('post2', compact('PostDetails', 'AuthorDetails', "Latests", "CommentDetails"));
    }

    public  function  Listelebaba($cate_name)
    {
        $listeleulann = \DB::table('posts')
            ->where('category_name' ,  $cate_name)
            ->orderBy('id', 'desc')
            //->limit('8')
            ->get();
        return view('mycategory' ,  compact('listeleulann'));
    }

        public function indexit()
    {
        return view('mycategory');
    }

    public function comment_selector($id)
    {
        $CommentDetails = \DB::table('comments')
            ->where("makale_id" ,  $id)
            ->orderBy('comment_id', 'desc')
            //->Limit('4')
            ->get();
        return view('post2' , 'CommentDetails' );
    }
}