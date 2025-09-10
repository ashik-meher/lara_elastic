<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewsArticle extends Model
{
    protected $table = 'news_articles';

    public function toElasticsearchDocument(): array
    {
        return [
            'title' => $this->title,
            'body' => $this->body,
            // Add more fields as needed
        ];
    }
}
