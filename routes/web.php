<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

/**
 * App routes
 */

Route::get('news-articles', [App\Http\Controllers\NewsArticleController::class, 'index'])->middleware('auth')->name('news-articles.index');
Route::post('news-articles', [App\Http\Controllers\NewsArticleController::class, 'store'])->middleware('auth')->name('news-articles.store');
Route::get('news-articles/search', [App\Http\Controllers\NewsArticleController::class, 'search'])->middleware('auth')->name('news-articles.search');
