<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home()
    {
        $article = Article::orderBy('created_date', 'desc')->take(3)->get();
        return view('pages.home')->with('articles', $article);
    }
}
