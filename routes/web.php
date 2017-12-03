<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
#burası url                #controller adı ,  #fonksiyonun adı.
Route::get("/MakeComment" , 'CommentController@MakeComment');
Route::get("/" , 'PostController@GalleryAll');
Route::get('Post/{slug}' , 'PostController@DetailofPost');
Route::get('post2' , 'PostController@LatestPost');
Route::post("/PostComment", 'CommentController@PostComment');
Route::get("/{category_name}/", 'PostController@Listelebaba');
//Route::get("/" , 'PostController@indexit');

//Route::get("Post/{slug}", 'PostController@comment_selector');
//Route::get("Post/{slug}" , 'CommentController@comment_all');
//Route::get('/KATETE', function(){
// return view('categorlists');});
//Route::get("/" , 'PostController@GalleryLimit');
//Route::get('/galeri' , 'GalleryController@findgaleri');
//Route::get('/galeri' , 'GalleryController@findpage');
// Route::get("/yorum-olustur" , 'commentController@yorumOlustur'); */
//Route::get("welcome" , 'PostController@PostAll');
//Route::get('/home', 'HomeController@index')->name('home');
//Route::get("/" , 'GalleryController@GalleryAll');
//bir sayfaya sadece bir yönlendirme yapılabilir.('Welcome')mesela
//Route::get('Post/{slug}' , 'AuthorController@DetailofUser');
//Route::get('post/{id}', 'HomeController@PostIndex');
//Route::get('/post2' , 'PostController@LatestPost');