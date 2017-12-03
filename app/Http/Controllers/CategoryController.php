<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
class CategoryController extends Controller
{
    public function Category()
    {
        $listele = Category::select()
            //->value('category_id','2')
            //->where('category_id', $id)
            ->get();
        //kategorilerin bir idsi var route olarak {$id} yaparsın sonra da o id ye gönderirsin linki
        //hangi kategoride ki haberi seçmek istediğini belirtiyor
        return view("", compact('listele'));
    }
}
