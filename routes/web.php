<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/about', [AboutController::class, 'about'])->name('about');
Route::get('/categories/interactive-multimedia', [CategoryController::class, 'interactiveMultimedia'])->name('interactive-multimedia');
Route::get('/categories/software-engineering', [CategoryController::class, 'softwareEngineering'])->name('software-engineering');
Route::get('/writers', [WriterController::class, 'writers'])->name('writers');
Route::get('/article/{id}', [ArticleController::class, 'getArticle'])->name('get-article');
// Route::get('/popular', [PageController::class, 'popular'])->name('popular');
