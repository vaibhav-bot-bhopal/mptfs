<!-- Preloader -->
<div class="preloader">
    <div class="icon"></div>
</div>

<!-- Main Header -->
<header class="main-header">
    <!-- Header Top -->
    <div class="header-top">
        <div class="auto-container">
            <div class="inner clearfix">
                <div class="top-left">
                    <ul class="social-links clearfix">
                        <li class="social-title">{{__('navbar.topbar_follow')}}</li>
                        <li><a href="https://www.facebook.com/mptigerfoundationsociety" target="_blank"><span class="fab fa-facebook-f"></span></a></li>
                        <li><a href="https://www.twitter.com/mptfs" target="_blank"><span class="fab fa-twitter"></span></a></li>
                        <li><a href="https://www.youtube.com/channel/UCt7TIvdCEW4iUsxUqmSqswA" target="_blank"><span class="fab fa-youtube"></span></a></li>
                        {{-- <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                        <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li> --}}
                    </ul>
                </div>

                <div class="top-right">
                    <ul class="info clearfix">
                        <li class="nav-item dropdown" style="margin-right: 20px;">
                            <a class="nav-link dropdown-toggle p-0" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            @if(Session::has('locale'))
                                @if(session('locale') == 'hi')
                                    {{ 'Choose Language / भाषा चुनें :- हिंदी' }}
                                @else
                                    {{ 'Choose Language / भाषा चुनें :- English' }}
                                @endif
                            @else
                                {{Config::get('app.locale')}}
                            @endif
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{url('language/en')}}">{{__('navbar.topbar_english')}}</a>
                            <a class="dropdown-item" href="{{url('language/hi')}}">{{__('navbar.topbar_hindi')}}</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Upper -->
    <div class="header-upper">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <!--Logo-->
                <div class="logo-box">
                    <div class="logo"><a href="{{ url('/') }}"><img src="{{asset('public/assets/images/logo.png')}}" alt="MPTFS Logo" title="MPTFS Logo"></a></div>
                </div>

                <!--Nav Box-->
                <div class="nav-outer clearfix">
                    <!--Mobile Navigation Toggler-->
                    <div class="mobile-nav-toggler"><span class="icon flaticon-menu-1"></span></div>

                    <!-- Main Menu -->
                    <nav class="main-menu navbar-expand-md navbar-light">
                        <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                            <ul class="navigation clearfix">
                                <li class="{{ '/' == request()->path() ? 'current ' : '' }}"><a href="{{ url('/') }}">{{__('navbar.menu_home')}}</a> </li>
                                <li class="{{ '/contact' == request()->path() ? 'current ' : '' }} dropdown"><a>{{__('navbar.menu_know_more')}}</a>
                                    <ul>
                                        <li><a href="{{ url('know-more/about_mptfs') }}">{{__('navbar.menu_about_mptfs')}}</a></li>
                                        <li><a href="{{ url('know-more/governing_body') }}">{{__('navbar.menu_governing_body')}}</a></li>
                                        <li><a href="{{ url('know-more/project_tiger') }}">{{__('navbar.menu_tiger_state')}}</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a>{{__('navbar.menu_our_works')}}</a>
                                    <ul>
                                        <li><a href="{{ url('our-work/training') }}">{{__('navbar.menu_training_and_research')}}</a></li>
                                        {{-- <li><a href="{{ url('our-work/bcrlip') }}">{{__('navbar.menu_bcrlip')}}</a></li> --}}
                                        <li><a href="{{ url('our-work/awareness') }}">{{__('navbar.menu_awareness_initiatives')}}</a></li>
                                        <li><a href="{{ url('our-work/tiger-reserve') }}">{{__('navbar.menu_tiger_reserve_of_mp')}}</a></li>
                                        {{-- <li><a href="{{ url('/') }}">{{__('navbar.menu_other_pa_of_mp')}}</a></li> --}}
                                    </ul>
                                </li>
                                <li class="dropdown"><a>{{__('navbar.menu_get_involved')}}</a>
                                    <ul>
                                        <li><a href="{{ url('get-involved/support') }}">{{__('navbar.menu_support')}}</a></li>
                                        <li><a href="https://mptiger.mponline.gov.in/" target="_blank">{{__('navbar.menu_donate')}}</a></li>
                                        {{-- <li><a href="{{ url('/') }}">{{__('navbar.menu_volunteer')}}</a></li> --}}
                                        <li><a href="{{ url('get-involved/our-partners') }}">{{__('navbar.menu_partners')}}</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a>{{__('navbar.menu_news_corner')}}</a>
                                    <ul>
                                        <li><a href="{{ url('news-corner/blog') }}">{{__('navbar.menu_our_blog')}}</a></li>
                                        <li><a href="{{ url('news-corner/news') }}">{{__('navbar.menu_latest_news')}}</a></li>
                                        <li><a href="{{ url('news-corner/event') }}">{{__('navbar.menu_latest_events')}}</a></li>
                                        <li><a href="{{ url('news-corner/downloads') }}">{{__('navbar.menu_downloads')}}</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a>{{__('navbar.menu_gallery')}}</a>
                                    <ul>
                                        <li><a href="{{ url('home/gallery') }}">{{__('navbar.menu_photos')}}</a></li>
                                        {{-- <li><a href="{{ url('/') }}">{{__('navbar.menu_video')}}</a></li> --}}
                                    </ul>
                                </li>
                                <li class="{{ 'home/contact' == request()->path() ? 'current ' : '' }}"><a href="{{ url('home/contact') }}">{{__('navbar.menu_contact_us')}}</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!-- Main Menu End-->
                </div>
            </div>
        </div>
    </div>
    <!--End Header Upper-->

    <!-- Sticky Header  -->
    <div class="sticky-header">
        <div class="auto-container clearfix">
            <!--Logo-->
            <div class="logo pull-left">
                <a href="#" title=""><img src="{{asset('public/assets/images/sticky-logo.png')}}" alt="" title=""></a>
            </div>
            <!--Right Col-->
            <div class="pull-right">
                <!-- Main Menu -->
                <nav class="main-menu clearfix">
                    <!--Keep This Empty / Menu will come through Javascript-->
                </nav><!-- Main Menu End-->
            </div>
        </div>
    </div><!-- End Sticky Menu -->

    <!-- Mobile Menu  -->
    <div class="mobile-menu">
        <div class="menu-backdrop"></div>
        <div class="close-btn"><span class="icon flaticon-cancel"></span></div>

        <nav class="menu-box">
            <div class="nav-logo"><a href="{{route('mptfs.home')}}"><img src="{{asset('public/assets/images/logo.png')}}" alt="" title=""></a></div>
            <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header--></div>
            <!--Social Links-->
            <div class="social-links">
                <ul class="clearfix">
                    <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                    <li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
                    <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
                    <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                    <li><a href="#"><span class="fab fa-youtube"></span></a></li>
                </ul>
            </div>
        </nav>
    </div><!-- End Mobile Menu -->
</header>
<!-- End Main Header -->
