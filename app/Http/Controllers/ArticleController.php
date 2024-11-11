<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    public function getArticle($id){
        $article = Article::find($id);

        if($article){
            return view('pages.detail')->with('article', $article);
        } else {
            abort(400, 'Page Not Found');
        }
    }
}
