<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function interactiveMultimedia(){
        $article = Article::whereHas('course', function ($c) {
            $c->where('category_id', 1);
        })->get();

        return view('pages.categories')->with('articles', $article)->with('category', 1);
    }

    public function softwareEngineering(){
        $article = Article::whereHas('course', function ($c) {
            $c->where('category_id', 2);
        })->get();

        return view('pages.categories')->with('articles', $article)->with('category', 2);
    }
}
