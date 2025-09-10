<?php

namespace App\Livewire;

use App\Models\NewsArticle;
use Livewire\Component;

class ListNewsArticles extends Component
{
    public function render()
    {
        $newsArticles = NewsArticle::orderBy('id', 'desc')->get();

        return view('livewire.list-news-articles', compact('newsArticles'));
    }
}
