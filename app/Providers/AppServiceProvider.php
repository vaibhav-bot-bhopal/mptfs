<?php

namespace App\Providers;

use App\Models\newsEnglish;
use App\Models\newsHindi;
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
            $newsesen = newsEnglish::orderBy('id', 'desc')->take(2)->get();
            $newseshi = newsHindi::orderBy('id', 'desc')->take(2)->get();
            $view->with('newsesen', $newsesen)->with('newseshi', $newseshi);
        });
    }
}
