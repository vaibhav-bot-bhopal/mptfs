@extends('layouts.frontend.master')

@section('title')
{{ $post->title }}
@endsection

@push('css')
    <style>
        .top-right {
            display: none;
        }

        .top-left {
            float: right !important;
        }

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

    @if (session('locale') == 'en')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../../public/assets/images/mptfs-imgs/Blog-Banner.webp')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{__('news.blog_detail_heading')}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="{{ route('mptfs.home') }}">{{__('news.home')}}</a></li>
                    <li class="active">{{__('news.blog_detail_heading')}}</li>
                </ul>
            </div>
        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side col-lg-8 col-md-12 col-sm-12 offset-lg-2">

                        <!--Blog Posts-->
                        <div class="blog-post-detail">
                            <div class="inner">
                                <div class="post-meta">
                                    <ul class="clearfix">
                                        <li><span class="icon fa fa-user"></span> {{ $post->user->name }}</li>
                                        <li><span class="fa fa-calendar-alt"></span> on {{ $post->created_at->diffForHumans() }}</li>
                                        <li><span class="icon fa fa-comments"></span> {{ $post->comments->count() }}</li>
                                        <li><span class="icon fa fa-eye"></span> {{ $post->view_count }}</li>
                                    </ul>
                                </div>
                                <h2>{{ $post->title }}</h2>

                                <div class="content text-justify">
                                    <div class="image-box">
                                        <figure class="image"><img class="lazy-image" data-src="{{ asset('public/storage/post/'. $post->image) }}" alt=""></figure>
                                    </div>
                                    <p>{!! html_entity_decode($post->body) !!}</p>
                                </div>
                            </div>

                            {{-- <div class="post-share-options clearfix">
                                <div class="social-links pull-right">
                                    <p>{{__('news.share')}}</p>
                                    <ul class="social-icons">
                                        <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                        <li><a href="#"><span class="fab fa-vimeo-v"></span></a></li>
                                        <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                    </ul>
                                </div>
                            </div> --}}
                        </div>

                        <!-- Comments Area -->
                        <div class="comments-area">
                            <div class="group-title"><h3>{{__('news.comments')}} ( {{ $post->comments()->count() }} ) </h3></div>
                            @if ($post->comments->count() > 0)
                                @foreach($post->comments as $comment)
                                    <div class="comment-box">
                                        <div class="comment">
                                            <div class="author-thumb"><img class="lazy-image" data-src="{{ asset('public/storage/profile/'. $comment->user->image)}}" alt=""></div>
                                            <div class="comment-info">
                                                <h4 class="name">{{ $comment->user->name }}</h4>
                                                <div class="time">on {{ $comment->created_at->diffForHumans() }}</div>
                                            </div>
                                            <div class="text">{{ $comment->comment }}</div>
                                            <a href="#" class="reply-btn"><span class="arrow_back"></span> {{__('news.btn_reply')}}</a>
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                    <p>{{__('news.comment_not_found')}}</p>
                            @endif
                        </div>

                        <!--Comment Form-->
                        <div class="comment-form default-form">
                            <div class="group-title"><h4>{{__('news.leave_comment')}}</h4></div>

                            @guest
                                <p>{{__('news.msg')}} <a href="{{ route('login') }}" target="_blank" style="color: #f42a2a;">{{__('news.btn_login')}}</a></p>
                            @else
                                <form method="POST" action="{{ route('comment.store', $post->id) }}">
                                    @csrf
                                    <div class="row clearfix">
                                        <div class="col-md-12 col-sm-12 form-group">
                                            <textarea name="comment" placeholder="Your Comments *" class="form-control {{($errors->any() && $errors->first('tname')) ? 'is-invalid' : ''}}"></textarea>
                                            @if ($errors->any())
                                                <p class="text-danger">{{$errors->first('comment')}}</p>
                                            @endif
                                        </div>

                                        <div class="col-md-12 col-sm-12 form-group">
                                            <button class="theme-btn btn-style-one" type="submit" name="submit-form"><span class="btn-title">{{__('news.btn_post_comment')}}</span></button>
                                        </div>
                                    </div>
                                </form>
                            @endguest

                        </div>

                    </div>

                    <!--Sidebar Side-->
                    {{-- <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
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
                                            <div class="post-thumb"><a href="#"><img class="lazy-image" src="images/resource/image-spacer-for-validation.png" data-src="{{ asset('public/storage/post/'. $randompost->image) }}" alt="" width="90" height="90"></a></div>
                                            <div class="date"><span class="fa fa-calendar-alt"></span>{{ $randompost->created_at->diffForHumans() }}</div>
                                            <h4><a href="{{ route('post.details', $randompost->slug) }}">{{ Str::limit($randompost->title, '25') }}</a></h4>
                                        </div>
                                    @endforeach

                                </div>
                            </div>

                        </aside>
                    </div> --}}

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->
    @endif

    @if (session('locale') == 'hi')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../../public/assets/images/mptfs-imgs/Blog-Banner.webp')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{__('news.blog_detail_heading')}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="{{ route('mptfs.home') }}">{{__('news.home')}}</a></li>
                    <li class="active">{{__('news.blog_detail_heading')}}</li>
                </ul>
            </div>
        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side col-lg-8 col-md-12 col-sm-12 offset-lg-2">

                        <!--Blog Posts-->
                        <div class="blog-post-detail">
                            <div class="inner">
                                <div class="post-meta">
                                    <ul class="clearfix">
                                        <li><span class="icon fa fa-user"></span> {{ $post->user->name }}</li>
                                        <li><span class="fa fa-calendar-alt"></span> on {{ $post->created_at->diffForHumans() }}</li>
                                        <li><span class="icon fa fa-comments"></span> {{ $post->comments->count() }}</li>
                                        <li><span class="icon fa fa-eye"></span> {{ $post->view_count }}</li>
                                    </ul>
                                </div>
                                <h2>{{ $post->title }}</h2>

                                <div class="content">
                                    <figure class="image"><img class="lazy-image" data-src="{{ asset('public/storage/post-hindi/'. $post->image) }}" alt=""></figure>
                                    <br>
                                    <p>{!! html_entity_decode($post->body) !!}</p>
                                </div>
                            </div>

                            {{-- <div class="post-share-options clearfix">
                                <div class="social-links pull-right">
                                    <p>{{__('news.share')}}</p>
                                    <ul class="social-icons">
                                        <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                        <li><a href="#"><span class="fab fa-vimeo-v"></span></a></li>
                                        <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                    </ul>
                                </div>
                            </div> --}}
                        </div>

                        <!-- Comments Area -->
                        <div class="comments-area">
                            <div class="group-title"><h3>{{__('news.comments')}} ( {{ $post->comments()->count() }} ) </h3></div>
                            @if ($post->comments->count() > 0)
                                @foreach($post->comments as $comment)
                                    <div class="comment-box">
                                        <div class="comment">
                                            <div class="author-thumb"><img class="lazy-image" data-src="{{ asset('public/storage/profile/'. $comment->user->image)}}" alt=""></div>
                                            <div class="comment-info">
                                                <h4 class="name">{{ $comment->user->name }}</h4>
                                                <div class="time">on {{ $comment->created_at->diffForHumans() }}</div>
                                            </div>
                                            <div class="text">{{ $comment->comment }}</div>
                                            <a href="#" class="reply-btn"><span class="arrow_back"></span>{{__('news.btn_reply')}}</a>
                                        </div>
                                    </div>
                                @endforeach
                            @else
                                    <p></p>
                            @endif
                        </div>

                        <!--Comment Form-->
                        <div class="comment-form default-form">
                            <div class="group-title"><h4>{{__('news.leave_comment')}}</h4></div>

                            @guest
                                <p>{{__('news.msg')}} <a href="{{ route('login') }}" target="_blank" style="color: #f42a2a;">{{__('news.btn_login')}}</a></p>
                            @else
                                <form method="POST" action="{{ route('comment.store', $post->id) }}">
                                    @csrf
                                    <div class="row clearfix">
                                        <div class="col-md-12 col-sm-12 form-group">
                                            <textarea name="comment" placeholder="Your Comments *" class="form-control {{($errors->any() && $errors->first('tname')) ? 'is-invalid' : ''}}"></textarea>
                                            @if ($errors->any())
                                                <p class="text-danger">{{$errors->first('comment')}}</p>
                                            @endif
                                        </div>

                                        <div class="col-md-12 col-sm-12 form-group">
                                            <button class="theme-btn btn-style-one" type="submit" name="submit-form"><span class="btn-title">{{__('news.btn_post_comment')}}</span></button>
                                        </div>
                                    </div>
                                </form>
                            @endguest

                        </div>

                    </div>

                    <!--Sidebar Side-->
                    {{-- <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
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
                            <div class="sidebar-widget categories">
                                <h3 class="sidebar-title">Categories</h3>
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
                                            <div class="post-thumb"><a href="#"><img class="lazy-image" src="images/resource/image-spacer-for-validation.png" data-src="{{ asset('public/storage/post-hindi/'. $randompost->image) }}" alt=""></a></div>
                                            <div class="date"><span class="fa fa-calendar-alt"></span>{{ $randompost->created_at->diffForHumans() }}</div>
                                            <h4><a href="{{ route('post.details', $randompost->slug) }}">{{ Str::limit($randompost->title, '25') }}</a></h4>
                                        </div>
                                    @endforeach

                                </div>
                            </div>

                        </aside>
                    </div> --}}

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->
    @endif

@endsection

@push('js')

@endpush
