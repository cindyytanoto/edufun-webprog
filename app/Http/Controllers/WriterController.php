<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Writer;
use Illuminate\Http\Request;

class WriterController extends Controller
{
    public function writers(){
        $writerList = Writer::all();
        $articleList = Article::all();
        return view('pages.writers')->with('writers', $writerList)->with('articles', $articleList);
    }
}
