<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $table = "comments";
    protected $primaryKey = "makale_id";
    protected $fillable  = ["comment_text", "comment_title" , "makale_id","sahip_id","fav_team"];
}
