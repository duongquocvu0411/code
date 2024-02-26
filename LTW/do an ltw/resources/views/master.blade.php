<!DOCTYPE html>
<html lang="en">
	<head>
        <meta charset="utf-8">

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="{{asset('')}}">
        
        <link rel="icon" href="source/assets/img/fav-icon.png" type="image/x-icon" />

        <title>Báo Cáo Đồ Án nhóm 9</title>

        <!-- Icon css link -->
        <link href="source/assets/css/font-awesome.min.css" rel="stylesheet">
        <link href="source/assets/vendors/linearicons/style.css" rel="stylesheet">
        <link href="source/assets/vendors/flat-icon/flaticon.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="source/assets/css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="source/assets/vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="source/assets/vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="source/assets/vendors/revolution/css/navigation.css" rel="stylesheet">
        <link href="source/assets/vendors/animate-css/animate.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="source/assets/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="source/assets/vendors/magnifc-popup/magnific-popup.css" rel="stylesheet">
        
        <link href="source/assets/css/style.css" rel="stylesheet">
        <link href="source/assets/css/responsive.css" rel="stylesheet">

     
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@700&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/AlertifyJS/1.13.1/css/alertify.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/AlertifyJS/1.13.1/css/alertify.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/AlertifyJS/1.13.1/css/themes/default.min.css">
    </head>

		<body>
            <style type="text/css">
                .cake_feature_item .cake_text h4{
                    width: 125px;
                }
                .banner_text h3{
                    padding-top: 200px;
                }
            </style>
		 <div class="body-wrapper">
			@include('header')
			
				@yield('content')
			@include('footer')
			
		</div>

        <script src="source/assets/js/vendor/jquery-1.12.4.min.js"></script>

        <script src="source/assets/js/jquery-3.2.1.min.js"></script>

        <script src="source/assets/js/popper.min.js"></script>
        <script src="source/assets/js/bootstrap.min.js"></script>

        <script src="source/assets/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="source/assets/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="source/assets/vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="source/assets/vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="source/assets/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="source/assets/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="source/assets/vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>

        <script src="source/assets/vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="source/assets/vendors/magnifc-popup/jquery.magnific-popup.min.js"></script>
        <script src="source/assets/vendors/datetime-picker/js/moment.min.js"></script>
        <script src="source/assets/vendors/datetime-picker/js/bootstrap-datetimepicker.min.js"></script>
        <script src="source/assets/vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="source/assets/vendors/jquery-ui/jquery-ui.min.js"></script>
        <script src="source/assets/vendors/lightbox/simpleLightbox.min.js"></script>
        
        <script src="source/assets/js/theme.js"></script>
        
    </body>
</html>
