<?php

use App\Http\Controllers\PageController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PageController::class, 'home'])->name('home');
Route::get('/about', [PageController::class, 'about'])->name('about');
Route::get('/categories', [PageController::class, 'categories'])->name('categories');
Route::get('/writers', [PageController::class, 'writers'])->name('writers');
Route::get('/popular', [PageController::class, 'popular'])->name('popular');
