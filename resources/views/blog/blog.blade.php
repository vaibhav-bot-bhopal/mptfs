@extends('layouts.frontend.master')

@section('title', 'Blog - MPTFS')

@push('css')
    <style>
        .news-post .post-thumb img {
            background-color: #f0f0f0; /* To visualize empty space */
            aspect-ratio: var(--ratio);
            object-fit: contain;
            width: 100%;
            height: 100%;
        }
    </style>
@endpush

@section('content')

    <!-- Display Blog For English Language -->
    @if (session('locale') == 'en')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../public/assets/images/mptfs-imgs/Blog - Banner.jpg')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{__('news.blog_heading')}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="index.html">{{__('news.home')}}</a></li>
                    <li class="active">{{__('news.blog_heading')}}</li>
                </ul>
            </div>

        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side col-lg-8 col-md-12 col-sm-12">
                        <!--Blog Posts-->
                        <div class="blog-posts">
                            <div class="row clearfix">

                                @forelse ($posts as $post)
                                    <!--News Block-->
                                    <div class="news-block col-lg-6 col-md-6 col-sm-12">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><a href="{{ route('post.details', $post->slug) }}"><img class="lazy-image" src="{{asset('public/storage/post/'.$post->image)}}" alt="{{ $post->title }}"></a></figure>
                                            </div>
                                            <div class="lower-content">
                                                <div class="date">{{ $post->created_at->format('d') }} <span class="month">{{ $post->created_at->format('M') }}</span></div>
                                                <h3><a href="{{ route('post.details', $post->slug) }}">{{ Str::limit($post->title, '25') }}</a></h3>
                                                <div class="text">{!! Str::limit($post->body, '40') !!}</div>
                                                <div class="post-meta">
                                                    <ul class="clearfix">
                                                        <li><span class="icon fa fa-user"></span>{{ $post->user->name }}</li>
                                                        <li><span class="icon fa fa-comments"></span> {{ $post->comments->count() }}</li>
                                                        <li><span class="icon fa fa-eye"></span> {{ $post->view_count }}</li>
                                                        {{-- <li><span class="icon fa fa-share-alt"></span></li> --}}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <div class="col-lg-12 col-md-12 pb-4">
                                        <div class="card h-100">
                                            <div class="p-2 text-center">
                                                <h2>{{__('news.post_not_found')}}</h2>
                                            </div><!-- single-post -->
                                        </div><!-- card -->
                                    </div><!-- col-lg-4 col-md-6 -->
                                @endforelse
                            </div>
                        </div>

                        <div class="pagination-box">
                            @if ($posts->lastPage() > 1)
                                <ul class="styled-pagination text-center">

                                    @if ($posts->onFirstPage())
                                        <li><a class="{{ ($posts->currentPage() == 1) ? 'disabled' : '' }}"><span class="fa fa-angle-left"></span></a></li>
                                    @else
                                        <li><a href="{{$posts->previousPageUrl()}}"><span class="fa fa-angle-left"></span></a></li>
                                    @endif

                                    @for ($i = 1; $i <= $posts->lastPage(); $i++)
                                        <li>
                                            <a class="{{ ($posts->currentPage() == $i) ? ' active' : '' }}" href="{{ $posts->url($i) }}">{{ $i }}</a>
                                        </li>
                                    @endfor

                                    @if ($posts->hasMorePages())
                                        <li><a class="{{ ($posts->currentPage() == $posts->lastPage()) ? ' disabled' : '' }}" href="{{$posts->nextPageUrl()}}"><span class="fa fa-angle-right"></span></a></li>
                                    @else
                                        <li><a><span class="fa fa-angle-right"></span></a></li>
                                    @endif

                                </ul>
                            @endif
                        </div>
                    </div>

                    <!--Sidebar Side-->
                    <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                        <aside class="sidebar">

                            <!-- Search -->
                            <div class="sidebar-widget search-box">
                                <h3 class="sidebar-title">{{__('news.side_search')}}</h3>
                                <form method="post" action="contact.html">
                                    <div class="form-group">
                                        <input type="search" name="search-field" value="" placeholder="Search..." required>
                                        <button type="submit"><span class="icon flaticon-search-1"></span></button>
                                    </div>
                                </form>
                            </div>

                            <!-- Category Widget -->
                            <div class="sidebar-widget categories">
                                <h3 class="sidebar-title">{{__('news.side_category')}}</h3>
                                @foreach ($categories as $category)
                                    <div class="widget-content">
                                        <ul>
                                            <li><a href="{{ route('category.posts',$category->slug) }}">{{ $category->name }}</a></li>
                                        </ul>
                                    </div>
                                @endforeach
                            </div>

                            <!-- Post Widget -->
                            <div class="sidebar-widget popular-posts">
                                <h3 class="sidebar-title">{{__('news.side_latest')}}</h3>
                                <div class="widget-content">

                                    @foreach ($randomposts as $randompost)
                                        <!--News Post-->
                                        <div class="news-post">
                                            <div class="post-thumb"><a href="#"><img class="lazy-image" src="images/resource/image-spacer-for-validation.png" data-src="{{ asset('public/storage/latest-news/'. $randompost->image) }}" alt=""></a></div>
                                            <div class="date"><span class="fa fa-calendar-alt"></span>{{ $randompost->created_at->diffForHumans() }}</div>
                                            <h4><a href="{{ route('post.details', $randompost->slug) }}">{{ Str::limit($randompost->title, '25') }}</a></h4>
                                        </div>
                                    @endforeach
                                </div>
                            </div>

                        </aside>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->
    @endif

    <!-- Display Blog For Hindi Language -->
    @if (session('locale') == 'hi')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../public/assets/images/mptfs-imgs/Blog - Banner.jpg')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{__('news.blog_heading')}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="#">{{__('news.home')}}</a></li>
                    <li class="active">{{__('news.blog_heading')}}</li>
                </ul>
            </div>

        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side col-lg-8 col-md-12 col-sm-12">
                        <!--Blog Posts-->
                        <div class="blog-posts">
                            <div class="row clearfix">

                                @forelse ($posts as $post)
                                    <!--News Block-->
                                    <div class="news-block col-lg-6 col-md-6 col-sm-12">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><a href="{{ route('post.details', $post->slug) }}"><img class="lazy-image" src="{{asset('public/storage/post-hindi/'.$post->image)}}" alt="{{ $post->title }}"></a></figure>
                                            </div>
                                            <div class="lower-content">
                                                <div class="date">{{ $post->created_at->format('d') }} <span class="month">{{ $post->created_at->format('M') }}</span></div>
                                                <h3><a href="{{ route('post.details', $post->slug) }}">{{ Str::limit($post->title, '25') }}</a></h3>
                                                <div class="text">{!! Str::limit($post->body, '40') !!}</div>
                                                <div class="post-meta">
                                                    <ul class="clearfix">
                                                        <li><span class="icon fa fa-user"></span>{{ $post->user->name }}</li>
                                                        <li><span class="icon fa fa-comments"></span> {{ $post->comments->count() }}</li>
                                                        <li><span class="icon fa fa-eye"></span> {{ $post->view_count }}</li>
                                                        {{-- <li><span class="icon fa fa-share-alt"></span></li> --}}
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @empty
                                    <div class="col-lg-12 col-md-12 pb-4">
                                        <div class="card h-100">
                                            <div class="p-2 text-center">
                                                <h2>{{__('news.post_not_found')}}</h2>
                                            </div><!-- single-post -->
                                        </div><!-- card -->
                                    </div><!-- col-lg-4 col-md-6 -->
                                @endforelse
                            </div>
                        </div>

                        <div class="pagination-box">
                            @if ($posts->lastPage() > 1)
                                <ul class="styled-pagination text-center">

                                    @if ($posts->onFirstPage())
                                        <li><a class="{{ ($posts->currentPage() == 1) ? 'disabled' : '' }}"><span class="fa fa-angle-left"></span></a></li>
                                    @else
                                        <li><a href="{{$posts->previousPageUrl()}}"><span class="fa fa-angle-left"></span></a></li>
                                    @endif

                                    @for ($i = 1; $i <= $posts->lastPage(); $i++)
                                        <li>
                                            <a class="{{ ($posts->currentPage() == $i) ? ' active' : '' }}" href="{{ $posts->url($i) }}">{{ $i }}</a>
                                        </li>
                                    @endfor

                                    @if ($posts->hasMorePages())
                                        <li><a class="{{ ($posts->currentPage() == $posts->lastPage()) ? ' disabled' : '' }}" href="{{$posts->nextPageUrl()}}"><span class="fa fa-angle-right"></span></a></li>
                                    @else
                                        <li><a><span class="fa fa-angle-right"></span></a></li>
                                    @endif

                                </ul>
                            @endif
                        </div>
                    </div>

                    <!--Sidebar Side-->
                    <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                        <aside class="sidebar">

                            <!-- Search -->
                            <div class="sidebar-widget search-box">
                                <h3 class="sidebar-title">{{__('news.side_search')}}</h3>
                                <form method="post" action="#">
                                    <div class="form-group">
                                        <input type="search" name="search-field" value="" placeholder="सर्च....." required>
                                        <button type="submit"><span class="icon flaticon-search-1"></span></button>
                                    </div>
                                </form>
                            </div>

                            <!-- Category Widget -->
                            {{-- <div class="sidebar-widget categories">
                                <h3 class="sidebar-title">Categories</h3>
                                @foreach ($categories as $category)
                                    <div class="widget-content">
                                        <ul>
                                            <li><a href="{{ route('category.posts',$category->slug) }}">{{ $category->name }}</a></li>
                                        </ul>
                                    </div>
                                @endforeach
                            </div> --}}

                            <!-- Post Widget -->
                            <div class="sidebar-widget popular-posts">
                                <h3 class="sidebar-title">{{__('news.side_latest')}}</h3>
                                <div class="widget-content">

                                    @foreach ($randomposts as $randompost)
                                        <!--News Post-->
                                        <div class="news-post">
                                            <div class="post-thumb"><a href="#"><img class="lazy-image" src="images/resource/image-spacer-for-validation.png" data-src="{{ asset('public/storage/latest-news-hindi/'. $randompost->image) }}" alt=""></a></div>
                                            <div class="date"><span class="fa fa-calendar-alt"></span>{{ $randompost->created_at->diffForHumans() }}</div>
                                            <h4><a href="{{ route('post.details', $randompost->slug) }}">{{ Str::limit($randompost->title, '25') }}</a></h4>
                                        </div>
                                    @endforeach
                                </div>
                            </div>

                        </aside>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->
    @endif

@endsection
