<?php

namespace App\Providers;

use App\Models\newsEnglish;
use App\Models\newsHindi;
use App\Models\Post;
use App\Models\PostHindi;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();

        view()->composer(['layouts.frontend.partial.footer'], function ($view) {
            $postsen = Post::orderBy('id', 'desc')->take(2)->get();
            $postshi = PostHindi::orderBy('id', 'desc')->take(2)->get();
            $view->with('postsen', $postsen)->with('postshi', $postshi);
        });
    }
}
