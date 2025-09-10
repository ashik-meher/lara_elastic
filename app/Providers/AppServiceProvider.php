<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Services\ElasticsearchService;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $this->app->singleton(ElasticsearchService::class, function () {
            return new ElasticsearchService();
        });
    }
}
