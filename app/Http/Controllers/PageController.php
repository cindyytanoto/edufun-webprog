<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Writer;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        return view('pages.home');
    }

    public function categories()
    {
        $categories = Category::all();
        return view('pages.categories', compact('categories'));
    }

    public function writers()
    {
        $writers = Writer::all();
        return view('pages.writers', compact('writers'));
    }

    public function popular()
    {
        $popularArticles = Article::latest()->take(5)->get();
        return view('pages.popular', compact('popularArticles'));
    }
}
