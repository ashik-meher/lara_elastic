<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NewsArticle extends Model
{
    protected $table = 'news_articles';

    protected $guarded = [];

    public function toElasticsearchDocument(): array
    {
        return [
            'entity_id' => $this->id,
            'title' => $this->title,
            'body' => $this->body,
            // Add more fields as needed
        ];
    }
}
