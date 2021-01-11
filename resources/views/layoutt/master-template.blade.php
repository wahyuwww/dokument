<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Reference Learning</title>
    <style>
        i .tekan {
            i:hover {
                blue;
            }
        }
        i.{
            tahun:hover
                #eee
            }
        }
    .ini{
        a:hover {
        wihte;
        }
    }
    .uppercase{
        text-transform: uppercase;
    }
    </style>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="{{asset('admin/plugins/fontawesome-free/css/all.min.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('admin/dist/css/adminlte.min.css')}}">
 <link rel="stylesheet" href="{{asset('admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{asset('admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
  
    <!-- Jquery -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="Stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script> -->

    <!-- Select2 -->
<link rel="stylesheet" href="{{asset('admin/plugins/select2/css/select2.min.css')}}">
<link rel="stylesheet" href="{{asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <!-- Google Font: Source Sans Pro -->
   
    <script src="{{asset('admin/plugins/jquery/jquery.min.js')}}">
    </script>

    <script src="{{asset('admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    
    <script src="{{asset('admin/plugins/select2/js/select2.full.min.js')}}"></script>
    <script src="{{asset('admin/dist/js/adminlte.min.js')}}"></script>
    <script src="{{asset('admin/dist/js/demo.js')}}"></script>
    
   
</head>

<body class="hold-transition sidebar-collapse layout-top-nav">
    <div class="wrapper">

        <!-- Navbar -->
        @include('layoutt.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('layoutt.sidebar')
        <div class="container">
            <div class="row mb-4">
                <div class="col-sm-12">
                    <!-- Content Wrapper. Contains page content -->
                    <div class="content-wrapper">
                        <!-- Content Header (Page header) -->
                        <section class="content-header">
                            <div class="container">
                                <div class="row mb-4">
                                    <div class="col-sm-12">
                                        <h1 class="uppercase">
                                            @yield('title')
                                        </h1>
                                        <ol class="breadcrumb">
                                            <li><a href="{{route('dashboard')}}"><i class="fa fa-dashboard"></i> Home</a></li>
                                            <li class="active uppercase"> / @yield('title')</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <!-- Main content -->
                        <section class="content">
                            @yield('content')
                            <!-- Small boxes (Stat box) -->

                            <!-- /.row -->
                            <!-- Main row -->

                            <!-- /.row (main row) -->

                        </section>
                        <!-- /.content-header -->


                        <!-- Main content -->

                        <!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->

                    <!-- Control Sidebar -->

                    <!-- /.control-sidebar -->

                    <!-- Main Footer -->
                   <footer class="main-footer">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto ">
                                <span>Copyright &copy; Reference 2020</span>
                            </div>
                        </div>
                    </footer>
                </div>
                <!-- ./wrapper -->

                <!-- REQUIRED SCRIPTS -->

                <!-- jQuery -->

</body>

</html>