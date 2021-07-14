@extends('layouts.frontend.master')

@section('title', 'Tiger Reserves of MP - MPTFS')

@push('css')

@endpush

@section('content')

    <!-- Page Banner Section -->
    <section class="page-banner">
        <div class="image-layer lazy-image" data-bg="url('../public/assets/images/mptfs-imgs/Tiger-Reserve-Banner.jpg')"></div>
        {{-- <div class="bottom-rotten-curve alternate"></div> --}}

        <div class="auto-container">
            <h1>{{__('work.tiger_heading')}}</h1>
            <ul class="bread-crumb clearfix">
                <li><a href="index.html">{{__('work.home')}}</a></li>
                <li class="active">{{__('work.tiger_heading')}}</li>
            </ul>
        </div>
    </section>
    <!--End Banner Section -->

	<!--About Section-->
    <section class="about-section style-two alternate">
        <div class="top-rotten-curve"></div>
        <div class="circle-two"></div>
        <div class="auto-container">
            <div class="row clearfix">
                <!--Left Column-->
                <div class="left-column col-lg-6 col-md-12 col-sm-12">
                    <div class="inner">
                        <div class="sec-title">
                            <h2>{{__('work.tiger_heading')}}</h2>
                            <ul>
                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li1')}}
                                </li>

                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li2')}}
                                </li>

                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li3')}}
                                </li>

                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li4')}}
                                </li>

                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li5')}}
                                </li>

                                <li class="text text-justify">
                                    <img src="{{asset('public/assets/images/mptfs-favicon.png')}}" alt="" style="margin-right: 5px;">{{__('work.tiger_li6')}}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--Right Column-->
                <div class="right-column col-lg-6 col-md-12 col-sm-12">
                    <div class="inner">
                        <div class="images clearfix">
                            <figure class="wow fadeInRight" data-wow-delay="300ms"><img class="lazy-image" src="{{ asset('public/assets/images/mptfs-imgs/Tiger-Reserves-Side.jpg') }}" data-src="{{ asset('public/assets/images/mptfs-imgs/Tiger-Reserves-Side.jpg') }}" alt=""></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
