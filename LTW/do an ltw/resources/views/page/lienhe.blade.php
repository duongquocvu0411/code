	@extends('master')
	@section('content')
        <section class="banner_area">
        	<div class="container">
			@if(session('thongbao'))
	    		<div class="alert alert-success">
	    			{{session('thongbao')}}
	    		</div>
	    	@endif
        		<div class="banner_text">
        			<h3>Liên hệ</h3>
        			<ul>
        				<li><a href="index.html">Home</a></li>
        				<li><a href="single-blog.html">Liên hệ</a></li>
        			</ul>
        		</div>
        	</div>
        </section>
        <section class="contact_form_area p_100">
        	<div class="container">
        		<div class="main_title">
					<h2>>Mẫu liên hệ</h2>
					<h5>Mọi thắc mắc hoặc góp ý, quý khách vui lòng liên hệ trực tiếp với bộ phận chăm sóc khách hàng của chúng tôi bằng cách điền đầy đủ thông tin vào form bên dưới.</h5>
				</div>
       			<div class="row">
       				<div class="col-lg-7">
       					<form class="row contact_us_form" method="post" id="contactForm">
						   <input type="hidden" name="_token" value="{{csrf_token()}}">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="name" name="name" placeholder="Tên bạn">
							</div>
							<div class="form-group col-md-6">
								<input type="email" class="form-control" id="email" name="email" placeholder="Email">
							</div>
							<div class="form-group col-md-12">
								<input type="number" class="form-control" id="subject" name="phone" placeholder="Số điện thoại">
							</div>
							<div class="form-group col-md-12">
								<textarea class="form-control" name="message" id="message" rows="1" placeholder="Nội dung"></textarea>
							</div>
							<div class="form-group col-md-12">
								<button type="submit" value="submit" class="btn order_s_btn form-control">Gửi tin</button>
							</div>
						</form>
       				</div>
       				<div class="col-lg-4 offset-md-1">
       					<div class="contact_details">
       						<div class="contact_d_item">
       							<h3>Địa chỉ :</h3>
       							<p>Trường CDSG, <br>
									Công viên Phần Mềm Quang Trung, Phường Tân Chánh Hiệp,<br>
									TP.HCM</p>
       						</div>
       						<div class="contact_d_item">
       							<h5>Số điện thoại : <a href="tel:123456789">0123.456.789</a></h5>
       							<h5>Email : <a href="mailto:banhngot@gmail.com">nhom9@gmail.com</a></h5>
       						</div>
       						<div class="contact_d_item">
       							<h3>Giờ làm việc :</h3>
       							<p>8:00 AM – 20:00 PM</p>
       							<p>Monday – Sunday</p>
       						</div>
       					</div>
       				</div>
       			</div>
        	</div>
        </section>
        <section class="map_area">
            <div id="mapBox" class="mapBox row m0" 
                data-lat="40.701083" 
                data-lon="-74.1522848" 
                data-zoom="13" 
                data-marker="img/map-marker.png" 
                data-info="54B, Tailstoi Town 5238 La city, IA 522364"
                data-mlat="40.701083"
                data-mlon="-74.1522848">
            </div>
        </section>

        
	@endsection