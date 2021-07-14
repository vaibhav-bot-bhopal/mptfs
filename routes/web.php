<?php

namespace App\Http\Controllers\Admin;

namespace App\Http\Controllers\Author;

namespace App\Http\Controllers\User;

use App\Http\Controllers\Admin\DashboardController as AdminDashboardController;
use App\Http\Controllers\Admin\SettingsController;
use App\Http\Controllers\Admin\AuthorController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Author\DashboardController as AuthorDashboardController;
use App\Http\Controllers\Author\SettingsController as AuthorSettingsController;
use App\Http\Controllers\AwarenessController;
use App\Http\Controllers\User\SettingsController as UserSettingsController;
use App\Http\Controllers\User\DashboardController as UserDashboardController;
use App\Http\Controllers\User\GalleryController;
use App\Http\Controllers\User\DownloadsController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\GetInvolvedController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WelcomeController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\KnowMoreController;
use App\Http\Controllers\OurWorkController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('language/{lang}', function ($lang) {
    Session::put('locale', $lang);
    return redirect()->back();
})->middleware('language');

Route::get('/', [WelcomeController::class, 'index'])->name('mptfs.home')->middleware('language');

Auth::routes();

Route::group(['middleware' => ['auth']], function () {
    Route::post('comment/{post}', [CommentController::class, 'store'])->name('comment.store');
});

Route::group(['as' => 'admin.', 'prefix' => 'admin', 'namespace' => 'App\Http\Controllers\Admin', 'middleware' => ['auth', 'admin', 'prevent-back-history']], function () {
    // For Admin Dashboard
    Route::get('dashboard', [AdminDashboardController::class, 'index'])->name('dashboard');

    Route::get('userView', [UserController::class, 'userView'])->name('user.view');
    Route::post('userAdd', [UserController::class, 'userAdd'])->name('user.add');
    Route::get('userList', [UserController::class, 'userList'])->name('user.list');
    Route::get('userEdit/{id}', [UserController::class, 'userEdit'])->name('user.edit');
    Route::put('userUpdate/{id}', [UserController::class, 'userUpdate'])->name('user.update');
    Route::get('userChangePassword/{id}', [UserController::class, 'userChangePassword'])->name('user.changepassword');
    Route::put('userUpdatePassword/{id}', [UserController::class, 'userUpdatePassword'])->name('user.updatepassword');
    Route::delete('userDestroy/{id}', [UserController::class, 'userDestroy'])->name('user.destroy');

    Route::get('profile', [SettingsController::class, 'index'])->name('profile');
    Route::put('profile-update', [SettingsController::class, 'updateProfile'])->name('profile.update');
    Route::get('changePassword', [SettingsController::class, 'changePassword'])->name('changePassword');
    Route::put('password-update', [SettingsController::class, 'updatePassword'])->name('password.update');

    Route::resource('category', 'CategoryController');
    Route::resource('post', 'PostController');

    Route::get('/pending/post', 'PostController@pending')->name('post.pending');
    Route::put('/post/{id}/approve', 'PostController@approval')->name('post.approve');

    Route::get('/authors', [AuthorController::class, 'index'])->name('author.index');
    Route::delete('/authors/{id}', [AuthorController::class, 'destroy'])->name('author.destroy');
    Route::get('/changeuserstatus', [AuthorController::class, 'changeUserStatus'])->name('author.changeUserStatus');
});

Route::group(['as' => 'user.', 'prefix' => 'user', 'namespace' => 'App\Http\Controllers\User', 'middleware' => ['auth', 'user', 'prevent-back-history']], function () {
    // For User Dashboard
    Route::get('dashboard', [UserDashboardController::class, 'index'])->name('dashboard');

    Route::get('profile', [UserSettingsController::class, 'index'])->name('profile');
    Route::put('profile-update', [UserSettingsController::class, 'updateProfile'])->name('profile.update');
    Route::get('changePassword', [UserSettingsController::class, 'changePassword'])->name('changePassword');
    Route::put('password-update', [UserSettingsController::class, 'updatePassword'])->name('password.update');

    // For Gallery Routes
    Route::get('images', [GalleryController::class, 'create'])->name('images');
    Route::post('images-save', [GalleryController::class, 'store'])->name('images-save');
    Route::delete('images-delete/{id}', [GalleryController::class, 'destroy'])->name('images-delete');
    Route::get('images-show', [GalleryController::class, 'index'])->name('images-show');

    // For Downloads Routes
    Route::get('posters', [DownloadsController::class, 'create'])->name('posters');
    Route::post('posters-save', [DownloadsController::class, 'store'])->name('posters-save');
    Route::delete('posters-delete/{id}', [DownloadsController::class, 'destroy'])->name('posters-delete');
    Route::get('posters-show', [DownloadsController::class, 'index'])->name('posters-show');

    Route::resource('news', 'NewsController');
    Route::resource('event', 'EventController');
    Route::resource('awareness', 'AwarenessController');
});

Route::group(['as' => 'author.', 'prefix' => 'author', 'namespace' => 'App\Http\Controllers\Author', 'middleware' => ['auth', 'author', 'prevent-back-history']], function () {
    // For Author Dashboard
    Route::get('dashboard', [AuthorDashboardController::class, 'index'])->name('dashboard');

    Route::get('profile', [AuthorSettingsController::class, 'index'])->name('profile');
    Route::put('profile-update', [AuthorSettingsController::class, 'updateProfile'])->name('profile.update');
    Route::get('changePassword', [AuthorSettingsController::class, 'changePassword'])->name('changePassword');
    Route::put('password-update', [AuthorSettingsController::class, 'updatePassword'])->name('password.update');

    Route::resource('post', 'PostController');
});

Route::prefix('home')->group(function () {
    Route::get('contact', [WelcomeController::class, 'contact'])->name('home.contact');
    Route::get('gallery', [WelcomeController::class, 'gallery'])->name('home.gallery');
});

Route::prefix('know-more')->group(function () {
    Route::get('about_mptfs', [KnowMoreController::class, 'about_mptfs'])->name('mptfs.about');
    Route::get('governing_body', [KnowMoreController::class, 'governing_body'])->name('mptfs.gbody');
    Route::get('project_tiger', [KnowMoreController::class, 'project_tiger'])->name('mptfs.ptiger');
});

Route::prefix('our-work')->group(function () {
    Route::get('training', [OurWorkController::class, 'training'])->name('training');
    Route::get('bcrlip', [OurWorkController::class, 'bcrlip'])->name('bcrlip');
    Route::get('awareness', [AwarenessController::class, 'awareness'])->name('awareness');
    Route::get('/awareness/{slug}', [AwarenessController::class, 'awarenessdetail'])->name('awareness.detail');
    Route::get('tiger-reserve', [OurWorkController::class, 'tigerReserve'])->name('tiger-reserve');
});

Route::prefix('get-involved')->group(function () {
    Route::get('support', [GetInvolvedController::class, 'support'])->name('support');
    Route::get('our-partners', [GetInvolvedController::class, 'partners'])->name('mptfs.partners');
});

Route::prefix('news-corner')->group(function () {
    Route::get('blog', [NewsController::class, 'blog'])->name('news.blog');
    Route::get('news', [NewsController::class, 'news'])->name('news.news');
    Route::get('/news/{slug}', [NewsController::class, 'newsdetail'])->name('news.detail');
    Route::get('event', [EventController::class, 'event'])->name('event.blog');
    Route::get('/event/{slug}', [EventController::class, 'eventdetail'])->name('event.detail');
    Route::get('/category/{slug}', [PostController::class, 'postByCategory'])->name('category.posts');
    Route::get('/post/{slug}', [PostController::class, 'details'])->name('post.details');
    Route::get('downloads', [WelcomeController::class, 'downloads'])->name('news.downloads');
});
