<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\NewsArticle;
use App\Services\ElasticsearchService;
use Illuminate\Support\Facades\Log;
use Exception;

class SearchNewsArticle extends Component
{

    public $newsArticles = [];
    public $searchTerm = '';

    public function search()
    {
        if ($this->searchTerm !== '') {
            /**
             * Common DB Search
             */
            //$this->newsArticles = NewsArticle::where('title', 'like', '%' . $this->searchTerm . '%')->get();

            /**
             * Useing Elasticsearch Indexed Service
             */
            try {
                $es = new ElasticsearchService();
                $query = trim($this->searchTerm);
                $result = $es->search('news_articles', $query, 10);
                Log::info('Elasticsearch Search Response', ['query' => $query, 'result' => $result]);
                $ids = array_column($result['hits']['hits'] ?? [], '_id');
                $newsArticles = NewsArticle::whereIn('id', $ids)->get();
                $this->newsArticles = $newsArticles;
            } catch (Exception $ex) {
                Log::error('Elasticsearch Search Error', ['error' => $ex->getMessage()]);
                echo $ex->getMessage();
            }
        }
    }

    public function quickSearch($term)
    {
        $this->searchTerm = $term;
        $this->search();
    }

    public function clearSearch()
    {
        $this->searchTerm = '';
        $this->newsArticles = [];
    }

    public function updatedSearchTerm()
    {
        // Optional: Auto-search as user types
        if (strlen($this->searchTerm) >= 3) {
            $this->search();
        } elseif ($this->searchTerm === '') {
            $this->newsArticles = [];
        }
    }

    public function mount() {}

    public function render()
    {
        $newsArticles =  $this->newsArticles;

        return view('livewire.search-news-article', compact('newsArticles'));
    }
}
