<?php

namespace App\Console\Commands;

use App\Models\NewsArticle;
use App\Services\ElasticsearchService;
use Illuminate\Console\Command;

class IndexNewsArticles extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'index-news-articles';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Index all news in Elasticsearch';

    /**
     * Execute the console command.
     */
    public function handle(ElasticsearchService $es)
    {
        $newsArticles = NewsArticle::all();

        foreach ($newsArticles as $newsArticle) {
            $es->indexDocument(
                index: 'news_articles',  // Name your index
                // id: (string) $newsArticle->id,
                data: $newsArticle->toElasticsearchDocument()
            );
        }
        $this->info('News Articles indexed successfully!');
    }
}
