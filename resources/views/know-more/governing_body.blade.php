@extends('layouts.frontend.master')

@section('title', 'Governing Body - MPTFS')

@section('content')

    <!-- Page Banner Section -->
    <section class="page-banner">
        <div class="image-layer lazy-image" data-bg="url('../public/assets/images/mptfs-imgs/Governing-Body-Banner.jpg')"></div>
        <div class="bottom-rotten-curve alternate"></div>

        <div class="auto-container">
            <h1>{{__('know.governing_heading')}}</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">{{__('know.home')}}</a></li>
                <li class="active">{{__('know.governing_heading')}}</li>
            </ul>
        </div>

    </section>
    <!--End Banner Section -->

    <!--Team Section-->
    <section class="team-section">
    	<!-- <div class="bottom-rotten-curve"></div> -->
        <div class="bottom-rotten-curve1" style="position: absolute; left: 0; bottom: 0px; width: 100%; height: 20px; background: url(http://localhost:88/mptigerfoundation.org/public/loveus/images/background/rotten-curve-8.png) center bottom no-repeat; background-size: 100% 100%; z-index: 1;"></div>
        <div class="auto-container">

        	<div class="sec-title centered">
                <h4 class="p-1">{{__('know.governing_p1')}}</h4>
                <h4 class="p-1">{{__('know.governing_p2')}}</h4>
                <h4 class="p-1">{{__('know.governing_p3')}}</h4>
            </div>
            <div class="row clearfix">
                <!--Left Column-->
                <div class="left-column col-lg-8 col-md-12 col-sm-12">
                    <div class="sec-title">
                        <ul class="ocean_ul ml-3">
                            <li>{{__('know.governing_li1')}}</li>
                            <li>{{__('know.governing_li2')}}</li>
                            <li>{{__('know.governing_li3')}}</li>
                            <li>{{__('know.governing_li4')}}</li>
                            <li>{{__('know.governing_li5')}}</li>
                            <li>{{__('know.governing_li6')}}</li>
                            <li>{{__('know.governing_li7')}}</li>
                            <li>{{__('know.governing_li8')}}</li>
                            <li>{{__('know.governing_li9')}}</li>
                            <li>{{__('know.governing_li10')}}</li>
                            <li>{{__('know.governing_li11')}}</li>
                            <li>{{__('know.governing_li12')}}</li>
                            <li>{{__('know.governing_li13')}}</li>
                            <li>{{__('know.governing_li14')}}</li>
                        </ul>
                    </div>
                </div>

                <!--Right Column-->
                <div class="right-column col-lg-4 col-md-12 col-sm-12">
                    <div class="inner">
                        <div class="images clearfix">
                            <figure class="wow fadeInRight" data-wow-delay="300ms"><img class="lazy-image" src="{{ asset('public/assets/images/mptfs-imgs/Governing-Body-Side.jpg') }}" data-src="{{ asset('public/assets/images/mptfs-imgs/Governing-Body-Side.jpg') }}" alt="" style="border-radius: 20px;"></figure>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

@endsection
