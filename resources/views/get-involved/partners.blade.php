@extends('layouts.frontend.master')

@section('title','Our Partners - MPTFS')

@push('css')
    <style>
        .top-right {
            display: none;
        }

        .top-left {
            float: right !important;
        }

        :root {
            --minimum-width: 300px;
            /* --ratio: 16/9; */
        }

        .partners-details .image-box img{
            background-color: #f0f0f0;
            /* aspect-ratio: none; */
            object-fit: contain;
        }

        .sidebar-page-container{
            padding: 50px 0px 50px 0px;
        }

        .sidebar-page-container .image-column .image-box .icon{
            background-color: #Aaeb8d;
        }

        .sidebar-page-container .image-column .image-box .icon{
            top: 80px;
            left: 55px;
        }

        .sidebar-page-container .image-column .image-box .icon:hover{
            background-color: #6bbe47;
        }
    </style>
@endpush

@section('content')

        <!-- Page Banner Section -->
        <section class="page-banner">
            <div class="image-layer lazy-image" data-bg="url('../public/assets/images/mptfs-imgs/Partners-Banner.jpg')"></div>
            <div class="bottom-rotten-curve"></div>

            <div class="auto-container">
                <h1>{{__('involved.partners_heading')}}</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="#">{{__('involved.home')}}</a></li>
                    <li class="active">{{__('involved.partners_heading')}}</li>
                </ul>
            </div>

        </section>
        <!--End Banner Section -->

        <!--Sidebar Page Container-->
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row clearfix">

                    <!--Content Side / Blog Sidebar-->
                    <div class="content-side image-column col-lg-8 col-md-8 col-sm-12 d-flex mx-auto">
                        <!--Event Details-->
                        <div class="partners-details">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image">
                                        <img class="lazy-image loaded" src="{{asset('public/assets/images/mptfs-imgs/Partners.jpg')}}" data-src="{{asset('public/assets/images/mptfs-imgs/Partners.jpg')}}" alt="">
                                    </figure>
                                    <a href="{{asset('public/assets/images/mptfs-imgs/Partners.jpg')}}" class="lightbox-image icon"><span class="fa fa-search"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- End Sidebar Page Container -->

        <!--Team Carousel Section-->
    <section class="team-carousel-section no-padding-top">

        <div class="auto-container">

            <div class="title-box clearfix">
                <div class="sec-title">
                    {{-- <div class="sub-title">Our Partners</div> --}}
                    <h2>Our Partners</h2>
                </div>
            </div>

            <!--Team Carousel-->
            <div class="team-carousel love-carousel owl-theme owl-carousel" data-options='{"loop": true, "margin": 30, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 500, "responsive":{ "0" :{ "items": "1" },"600" :{ "items": "1" }, "800" :{ "items" : "2" }, "1024":{ "items" : "3" }, "1366":{ "items" : "3" }}}'>
                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (3).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Catherine Jones</a></h3>
                                    <div class="designation">Engineer</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (7).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Lauren Davis</a></h3>
                                    <div class="designation">Photographer</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (8).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Susan hardson</a></h3>
                                    <div class="designation">Reporter</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (3).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Catherine Jones</a></h3>
                                    <div class="designation">Engineer</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (7).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Lauren Davis</a></h3>
                                    <div class="designation">Photographer</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide-item">
                    <!--Team Block-->
                    <div class="team-block">
                        <div class="inner-box">
                            <figure class="image-box"><a href="#"><img src="{{asset('public/assets/images/main-slider/devendra (8).jpg')}}" alt=""></a></figure>
                            <div class="lower-box">
                                <div class="content">
                                    <h3><a href="#">Susan hardson</a></h3>
                                    <div class="designation">Reporter</div>
                                    <div class="social-links">
                                        <ul class="clearfix">
                                            <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                            <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                            <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div><!--End Team Carousel-->

        </div>
    </section>

@endsection

@push('js')

@endpush
