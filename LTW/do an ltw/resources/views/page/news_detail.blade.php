@extends('master')
@section('content')
        <section class="banner_area">
        	<div class="container">
        		<div class="banner_text">
        			<h3>Blog Details</h3>
        			<ul>
        				<li><a href="{{route('trang-chu')}}">Home</a></li>
        				<li><a href="single-blog.html">Chi tiết Blog</a></li>
        			</ul>
        		</div>
        	</div>
        </section>
        <section class="main_blog_area p_100">
        	<div class="container">
        		<div class="row blog_area_inner">
        			<div class="col-lg-9">
        				<div class="main_blog_inner single_blog_inner">
							<div class="blog_item">
								<div class="blog_img">
									<img class="img-fluid" src="images/tintuc/{{$tintuc->image}}" alt="">
								</div>
								<div class="blog_text">
									<div class="blog_time">
										<div class="float-left">
											<a href="#">{{$tintuc->created_at}}</a>
										</div>
										<div class="float-right">
											<ul class="list_style">
												<li><a href="#">By :  Admin</a></li>

											</ul>
										</div>
									</div>
									<a href="#"><h4><?php echo $tintuc['title'] ?></h4></a>
									<?php echo $tintuc['summary'] ?>
									<?php echo $tintuc['content'] ?>
								</div>
							</div>

        				</div>
        			</div>
        			<div class="col-lg-3">
        				<div class="right_sidebar_area">
        					
        					<aside class="r_widget categories_widget">
								<div class="r_title">
									<h3>danh mục</h3>
								</div>
       							<ul class="list_style">
       								@foreach($danhmuc as $dm)
       								<li><a href="{{route('loaisanpham',$dm->id)}}">{{$dm->name}}<i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
       								@endforeach
       							</ul>
        					</aside>
        					<aside class="r_widget recent_widget">
								<div class="r_title">
									<h3>Blog khác</h3>
								</div>
       							<div class="recent_w_inner">
       								@foreach($tintuc_khac as $ttk)
       								<div class="media">
										<div class="d-flex">
											<img src="images/tintuc/{{$ttk->image}}" width="100px" height="70px" alt="">
										</div>
										<div class="media-body">
											<a href="{{route('chitiettin',$ttk->id)}}"><h4><?php echo substr($ttk['title'],0,50)?>...</h4></a>
											<a href="{{route('chitiettin',$ttk->id)}}"><p>{{$ttk->created_at}}</p></a>
										</div>
									</div>
									@endforeach
       							</div>
        					</aside>
        					<aside class="r_widget tags_widget">
								<div class="r_title">
									<h3>Tags</h3>
								</div>
       							<ul class="list_style">
       								<li><a href="#">Baking Tips</a></li>
       								<li><a href="#">Bakery</a></li>
       								<li><a href="#">Recipe</a></li>
       								<li><a href="#">Baking Tool</a></li>
       								<li><a href="#">Cakes</a></li>
       								<li><a href="#">Chocolates</a></li>
       							</ul>
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
       
			
@endsection