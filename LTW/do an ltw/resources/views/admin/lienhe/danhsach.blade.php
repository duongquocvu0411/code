@extends('admin.layout.index')
@section('content')
    <section class="content-header">
      <h1>
        DANH SÁCH
        <small>Liên Hệ </small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>
    <br>

 <section class="content">
      <div class="row">
        <div class="col-xs-12">
        <div class="box">

                  <div class="box-body">
                  	
                  		<div class="row">
                  			<div class="col-sm-12">

				<div class="panel panel-flat" style="width: 100%; border: 1px solid grey;">
					@if(session('thongbao'))
	    		<div class="alert alert-success">
	    			{{session('thongbao')}}
	    		</div>
	    	@endif
					<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>Họ tên</th>
									<th>Địa chỉ Email</th>
									<th>Số điện thoại</th>
									<th>Nội dung</th>
									<th>Xóa</th>
									<th>Chi tiết</th>
								</tr>
							</thead>
							<tbody>
								@foreach($lienhe as $lh )
								<tr>
									<td>{{$lh->id}}</td>
									<td>{{$lh->name}}</td>
									<td>{{$lh->email}}</td>
									<td>{{$lh->phone}}</td>
									<td>{{substr($lh['message'],0,120)}}</td>
									<td class="center"><a href="admin/lienhe/delete/{{$lh->id}}"><i class="icon icon-bin"></i> Delete</a></td>
									<td class="center"><a href="admin/lienhe/chitietlienhe/{{$lh->id}}"><i class="icon icon"></i> Chi tiết</a></td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
              </div>
              <div class="row">
	      			
	      			<div class="col-sm-7">{{$lienhe->links()}}</div>
               </div>
			

			</div>
		

		</div>
	</div>
</div>
</section>

@endsection