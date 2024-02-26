<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Trang Quản Trị của nhóm 9</title>
	<base href="{{asset('')}}">
	  <link rel="stylesheet" href="admin_asset/assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin_asset/assets/bower_components/bootstrap/dist/js/bootstrap.min.js">
  <link rel="stylesheet" href="admin_asset/assets/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="admin_asset/assets/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="admin_asset/assets/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="admin_asset/assets/dist/css/dinhdangadmin.css">
  <link rel="stylesheet" href="admin_asset/assets/dist/css/skins/_all-skins.min.css">
  <link href="admin_asset/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">


  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">


</head>

<body class="hold-transition skin-blue sidebar-mini">
		@include('admin.layout.header')
			@include('admin.layout.menu')

  <div class="content-wrapper">


    <section class="content container-fluid">

      @yield('content')

    </section>

  </div>

	@include('admin.layout.footer')
<script src="admin_asset/assets/bower_components/jquery/dist/jquery.min.js"></script>
<script src="admin_asset/assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="admin_asset/assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="admin_asset/assets/bower_components/fastclick/lib/fastclick.js"></script>
<script src="admin_asset/assets/dist/js/adminlte.min.js"></script>
<script src="admin_asset/assets/dist/js/demo.js"></script>
<script type="text/javascript" language="javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	CKEDITOR.replace( 'ckeditor', {
        filebrowserBrowseUrl: '{{ asset('ckfinder/ckfinder.html') }}',
        filebrowserImageBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Images') }}',
        filebrowserFlashBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Flash') }}',
        filebrowserUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files') }}',
        filebrowserImageUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images') }}',
        filebrowserFlashUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash') }}'
    } );
</script>
 <script type="text/javascript">
            {$(document).ready(function($) {    
                $('button.print-bill').click(function(){
                    window.print();
                });
            })}
        </script>
	@yield('script')
</body>
</html>
