@extends('layouts.backend.portal')

@section('title','Settings - Change Password')

@push('css')

@endpush

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @if (session('locale') == 'en')
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    <h1 class="m-0">Change Password Page</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Change Password</li>
                    </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 offset-lg-3 offset-md-3">
                    <!-- Profile Image -->
                    <div class="card card-success card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                @if (Auth::user()->image)
                                    <img class="profile-user-img img-fluid img-circle"
                                    src="{{asset('public/storage/profile/'.Auth::user()->image)}}"
                                    alt="User profile picture">
                                @else
                                    <img class="profile-user-img img-fluid img-circle"
                                    src="{{asset('public/storage/profile/avatar.jpg')}}"
                                    alt="User profile picture">
                                @endif
                            </div>

                            <h3 class="profile-username text-center">{{ Auth::user()->name }}</h3>

                            <p class="text-muted text-center">{{ Auth::user()->profession }}</p>

                            <form action="{{ route('author.password.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="old_passwprd">Old Password</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('old_password')) ? 'is-invalid' : ''}}" id="old_password" name="old_password" placeholder="Enter Your Old Password">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('old_password')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="password">New Password</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('password')) ? 'is-invalid' : ''}}" id="password" name="password" placeholder="Enter Your New Password">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('password')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="password_confirmation">Confirm Password</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('confirm_password')) ? 'is-invalid' : ''}}" id="password_confirmation" name="password_confirmation" placeholder="Enter Your Confirm Password">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('password_confirmation')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-success float-right"><i class="nav-icon fas fa-upload" style="margin-right: 5px;"></i>UPDATE</button>
                                    <a href="{{route('author.dashboard')}}" class="btn btn-danger"><i class="nav-icon fas fa-arrow-circle-left" style="margin-right: 5px;"></i>BACK</a>
                                </div>
                            </form>

                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col (end) -->
            </div>
            <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    @endif

    @if (session('locale') == 'hi')
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    <h1 class="m-0">???????????? ????????????????????? ?????????</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">??????????????? ?????????</a></li>
                        <li class="breadcrumb-item active">???????????? ?????????????????????</li>
                    </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <div class="content">
            <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 offset-lg-3 offset-md-3">
                    <!-- Profile Image -->
                    <div class="card card-success card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                @if (Auth::user()->image)
                                    <img class="profile-user-img img-fluid img-circle"
                                    src="{{asset('public/storage/profile/'.Auth::user()->image)}}"
                                    alt="User profile picture">
                                @else
                                    <img class="profile-user-img img-fluid img-circle"
                                    src="{{asset('public/storage/profile/avatar.jpg')}}"
                                    alt="User profile picture">
                                @endif
                            </div>

                            <h3 class="profile-username text-center">{{ Auth::user()->name }}</h3>

                            <p class="text-muted text-center">{{ Auth::user()->profession }}</p>

                            <form action="{{ route('author.password.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="old_passwprd">?????????????????? ?????????????????????</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('old_password')) ? 'is-invalid' : ''}}" id="old_password" name="old_password" placeholder="???????????? ?????????????????? ????????????????????? ???????????????">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('old_password')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="password">????????? ?????????????????????</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('password')) ? 'is-invalid' : ''}}" id="password" name="password" placeholder="???????????? ????????? ????????????????????? ???????????? ????????????">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('password')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <label for="password_confirmation">????????????????????? ?????????????????????</label>
                                    <input type="password" class="form-control {{($errors->any() && $errors->first('confirm_password')) ? 'is-invalid' : ''}}" id="password_confirmation" name="password_confirmation" placeholder="???????????? ????????????????????? ????????????????????? ???????????? ????????????">
                                    @if ($errors->any())
                                        <p class="text-danger">{{$errors->first('password_confirmation')}}</p>
                                    @endif
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-success float-right"><i class="nav-icon fas fa-upload" style="margin-right: 5px;"></i>??????????????? ????????????</button>
                                    <a href="{{route('author.dashboard')}}" class="btn btn-danger"><i class="nav-icon fas fa-arrow-circle-left" style="margin-right: 5px;"></i>????????????</a>
                                </div>
                            </form>

                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col (end) -->
            </div>
            <!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content -->
    @endif

</div>
<!-- /.content-wrapper -->

@endsection

@push('js')

@endpush
