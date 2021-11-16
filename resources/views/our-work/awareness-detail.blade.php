@extends('layouts.frontend.master')

@section('title','Awareness Detail')

@push('css')
    <style>
        .top-right {
            display: none;
        }

        .top-left {
            float: right !important;
        }
    </style>
@endpush

@section('content')

    @if (session('locale') == 'en')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../../public/assets/images/mptfs-imgs/Tiger_Initiative.webp')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{$awareness->title}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="{{ route('mptfs.home') }}">{{__('work.home')}}</a></li>
                    <li class="active">{{$awareness->title}}</li>
                </ul>
            </div>

        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container pb-0">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side image-column col-lg-12 col-md-12 col-sm-12">
                        <!--Event Details-->
                        <div class="event-details">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image">
                                        <img class="lazy-image loaded" data-src="{{asset('public/storage/awareness-english/'. $awareness->image)}}" alt="">
                                    </figure>
                                    <a href="{{asset('public/storage/awareness-english/'. $awareness->image)}}" class="lightbox-image icon"><span class="fa fa-search"></span></a>
                                </div>

                                <div class="lower-content">
                                    <h2>{{$awareness->title}}</h2>
                                    <ul class="info clearfix">
                                        <li><span class="icon far fa-calendar"></span>{{ date('d-m-Y', strtotime($awareness->date)) }}</li>
                                        <li><span class="icon far fa-clock"></span>{{ date('h:i A', strtotime($awareness->time)) }}</li>
                                        <li><span class="icon fa fa-map-marker-alt"></span>{{$awareness->place}}</li>
                                    </ul>
                                    <div class="text-content">
                                        <p>{!! html_entity_decode($awareness->discription) !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->

        <!-- Related Images -->
        <section class="related-products">
            <div class="auto-container">
                @foreach(explode(',', $awareness->m_image) as $aware)
                @endforeach
                @if (file_exists('public/storage/awareness-m-english/'.$aware))
                    <div class="sec-title">
                        <h2>{{__('work.aware_rel_images')}}</h2>
                    </div>

                    <div class="related-products-carousel love-carousel owl-theme owl-carousel" data-options='{"loop": false, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
                        <!--Shop Item-->
                        @foreach(explode(',', $awareness->m_image) as $aware)
                        <div class="shop-item">
                            <div class="inner-box">
                                <div class="image">
                                    <img class="lazy-image owl-lazy" src="{{asset('public/storage/awareness-m-english/'. $aware)}}" data-src="{{asset('public/storage/awareness-m-english/'. $aware)}}" alt="" />
                                    <div class="overlay-box">
                                        <ul class="option-box">
                                            <li><a href="{{asset('public/storage/awareness-m-english/'. $aware)}}" class="lightbox-image" data-fancybox="products"><span class="fa fa-search"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                @endif


            </div>
        </section>
        <!--End Related Images -->
    @endif

    @if (session('locale') == 'hi')
        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../../public/assets/images/mptfs-imgs/Tiger_Initiative.webp')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{$awareness->title}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="{{ route('mptfs.home') }}">{{__('work.home')}} </a></li>
                    <li class="active">{{$awareness->title}}</li>
                </ul>
            </div>

        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side col-lg-12 col-md-12 col-sm-12">
                        <!--Event Details-->
                        <div class="event-details">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image"><img class="lazy-image" data-src="{{asset('public/storage/awareness-hindi/'. $awareness->image)}}" alt=""></figure>
                                </div>
                                <div class="lower-content">
                                    <h2>{{$awareness->title}}</h2>
                                    <ul class="info clearfix">
                                        <li><span class="icon far fa-calendar"></span>{{ date('d-m-Y', strtotime($awareness->date)) }}</li>
                                        <li><span class="icon far fa-clock"></span>{{ date('h:i A', strtotime($awareness->time)) }}</li>
                                        <li><span class="icon fa fa-map-marker-alt"></span>{{$awareness->place}}</li>
                                    </ul>
                                    <div class="text-content">
                                        <p>{!! html_entity_decode($awareness->discription) !!}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->

        <!-- Related Products -->
        <section class="related-products">
            <div class="auto-container">
                <div class="sec-title">
                    <h2>{{__('work.aware_rel_images')}}</h2>
                </div>

                <div class="related-products-carousel love-carousel owl-theme owl-carousel" data-options='{"loop": false, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
                    <!--Shop Item-->
                    @foreach(explode(',', $awareness->m_image) as $aware)
                    <div class="shop-item">
                        <div class="inner-box">
                            <div class="image">
                                <img class="lazy-image owl-lazy" src="{{asset('public/storage/awareness-m-hindi/'. $aware)}}" data-src="{{asset('public/storage/awareness-m-hindi/'. $aware)}}" alt="" />
                                <div class="overlay-box">
                                    <ul class="option-box">
                                        <li><a href="{{asset('public/storage/awareness-m-hindi/'. $aware)}}" class="lightbox-image" data-fancybox="products"><span class="fa fa-search"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!--End Related Products -->
    @endif

@endsection

@push('js')

@endpush
