@extends('layouts.backend.portal')

@section('title','Create - Event')

@push('css')

@endpush

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    @if (session('locale') == 'en')
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    <h1>Create Event Page</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Add Event</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- form start -->
                <form action="{{route('user.event.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    @csrf
                    <div class="row">
                        <!-- right column -->
                        <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1">
                            <!-- Horizontal Form -->
                            <div class="card card-info">
                                <div class="card-header">
                                <h3 class="card-title">ADD EVENT</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body pb-2 mt-2">
                                    <div class="form-group">
                                        <label for="inputTitle">Event Title</label>
                                        <input type="text" class="form-control {{($errors->any() && $errors->first('title')) ? 'is-invalid' : ''}}" id="title" name="title" value="{{old('title')}}" placeholder="Enter Event Title Here">
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('title')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                    <label>Event Date</label>
                                        <div class="input-group date" id="date" data-target-input="nearest">
                                            <input type="text" name="edate" value="{{old('edate')}}" class="form-control datetimepicker-input {{($errors->any() && $errors->first('edate')) ? 'is-invalid' : ''}}" data-target="#date" placeholder="Select Event Date Here"/>
                                            <div class="input-group-append" data-target="#date" data-toggle="datetimepicker">
                                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                            </div>
                                        </div>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('edate')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label>Event Time</label>

                                        <div class="input-group date" id="time" data-target-input="nearest">
                                        <input type="text" name="etime" value="{{old('etime')}}" class="form-control datetimepicker-input {{($errors->any() && $errors->first('etime')) ? 'is-invalid' : ''}}" data-target="#time" placeholder="Select Event Time Here"/>
                                        <div class="input-group-append" data-target="#time" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="far fa-clock"></i></div>
                                        </div>
                                        </div>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('etime')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputTitle">Event Place</label>
                                        <input type="text" class="form-control {{($errors->any() && $errors->first('place')) ? 'is-invalid' : ''}}" id="place" name="place" value="{{old('place')}}" placeholder="Enter Event Place Here">
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('place')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPbody">Event Description</label>
                                    <textarea class="ckeditor form-control {{($errors->any() && $errors->first('pbody')) ? 'is-invalid' : ''}}" id="pbody" name="pbody">{{old('pbody')}}</textarea>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('pbody')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputImage">Featured Image</label>
                                        <input type="file" class="form-control-file" id="image" name="image">
                                        @if ($errors->any())
                                            <p class="text-danger pl-2">{{$errors->first('image')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputmImage">Event Images</label>
                                        <input type="file" class="form-control-file" id="m_image" name="m_image[]" multiple>
                                        @if ($errors->any())
                                            <p class="text-danger pl-2">{{$errors->first('m_image')}}</p>
                                        @endif
                                    </div>

                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-success float-right"><i class="nav-icon fas fa-save" style="margin-right: 5px;"></i>SAVE</button>
                                    <a href="{{route('user.event.index')}}" class="btn btn-danger"><i class="nav-icon fas fa-arrow-circle-left" style="margin-right: 5px;"></i>BACK</a>
                                </div>
                                <!-- /.card-footer -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!--/.col (right) -->
                    </div>
                    <!-- /.row -->
                </form>
                <!-- /.form end-->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    @endif

    @if (session('locale') == 'hi')
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    <h1>?????????????????? ??????????????? ?????????</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">??????????????? ?????????</a></li>
                            <li class="breadcrumb-item active">?????????????????? ???????????????</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- form start -->
                <form action="{{route('user.event.store')}}" method="POST" enctype="multipart/form-data" class="form-horizontal">
                    @csrf
                    <div class="row">
                        <!-- right column -->
                        <div class="col-lg-10 col-md-10 offset-lg-1 offset-md-1">
                            <!-- Horizontal Form -->
                            <div class="card card-info">
                                <div class="card-header">
                                <h3 class="card-title">?????????????????? ???????????????</h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body pb-2 mt-2">
                                    <div class="form-group">
                                        <label for="inputTitle">??????????????? ??????????????????</label>
                                        <input type="text" class="form-control {{($errors->any() && $errors->first('title')) ? 'is-invalid' : ''}}" id="title" name="title" value="{{old('title')}}" placeholder="???????????? ??????????????? ?????????????????? ???????????? ????????????">
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('title')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                    <label>??????????????? ?????????</label>
                                        <div class="input-group date" id="date" data-target-input="nearest">
                                            <input type="text" name="edate" value="{{old('edate')}}" class="form-control datetimepicker-input {{($errors->any() && $errors->first('edate')) ? 'is-invalid' : ''}}" data-target="#date" placeholder="???????????? ??????????????? ??????????????? ????????????????????? ????????????"/>
                                            <div class="input-group-append" data-target="#date" data-toggle="datetimepicker">
                                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                            </div>
                                        </div>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('edate')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label>??????????????? ????????????</label>

                                        <div class="input-group date" id="time" data-target-input="nearest">
                                        <input type="text" name="etime" value="{{old('etime')}}" class="form-control datetimepicker-input {{($errors->any() && $errors->first('etime')) ? 'is-invalid' : ''}}" data-target="#time" placeholder="???????????? ??????????????? ???????????? ????????????????????? ????????????"/>
                                        <div class="input-group-append" data-target="#time" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="far fa-clock"></i></div>
                                        </div>
                                        </div>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('etime')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputTitle">??????????????? ???????????????</label>
                                        <input type="text" class="form-control {{($errors->any() && $errors->first('place')) ? 'is-invalid' : ''}}" id="place" name="place" value="{{old('place')}}" placeholder="???????????? ??????????????? ??????????????? ???????????????">
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('place')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputPbody">??????????????? ???????????????</label>
                                    <textarea class="ckeditor form-control {{($errors->any() && $errors->first('pbody')) ? 'is-invalid' : ''}}" id="pbody" name="pbody">{{old('pbody')}}</textarea>
                                        @if ($errors->any())
                                            <p class="text-danger">{{$errors->first('pbody')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputImage">?????????????????? ????????????</label>
                                        <input type="file" class="form-control-file" id="image" name="image">
                                        @if ($errors->any())
                                            <p class="text-danger pl-2">{{$errors->first('image')}}</p>
                                        @endif
                                    </div>

                                    <div class="form-group">
                                        <label for="inputmImage">??????????????? ??????????????????</label>
                                        <input type="file" class="form-control-file" id="m_image" name="m_image[]" multiple>
                                        @if ($errors->any())
                                            <p class="text-danger pl-2">{{$errors->first('m_image')}}</p>
                                        @endif
                                    </div>

                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-success float-right"><i class="nav-icon fas fa-save" style="margin-right: 5px;"></i>?????????</button>
                                    <a href="{{route('user.event.index')}}" class="btn btn-danger"><i class="nav-icon fas fa-arrow-circle-left" style="margin-right: 5px;"></i>????????????</a>
                                </div>
                                <!-- /.card-footer -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!--/.col (right) -->
                    </div>
                    <!-- /.row -->
                </form>
                <!-- /.form end-->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    @endif

</div>
<!-- /.content-wrapper -->
@endsection

@push('js')
<script>
    $(function(){
        //Date range picker
        $('#date').datetimepicker({
            format: 'YYYY-MM-DD'
        });

        //Timepicker
        $('#time').datetimepicker({
            use24hours: true,
            format: 'HH:mm'
            // format: 'LT'
        })
    });
</script>
@endpush
