@extends('admin.layout.index')
@section('content')
    <section class="content-header">
      <h1>
        DANH SÁCH
        <small>Sản phẩm đã xóa </small>
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
									<th>Tên</th>
									<th>giá gốc</th>
									<th>giá KM</th>
									<th>imge</th>
								</tr>
							</thead>
							<tbody>
								@foreach($product as $pr )
								<tr style="border: 1px">
									<td>{{$pr->id}}</td>
									<td>{{$pr->name}}</td>
									<!-- <td>{{$pr->id_type}}</td>
									<td>{{$pr->id_category}}</td> -->
									<!-- <td>{{$pr->origin}}</td> -->
									<td>{{$pr->unit_price}}</td>
									<td>{{$pr->promotion_price}}</td>
									<td><img src="source/image/product/{{$pr->image}}" width="50px" height="50px;"></td>
									<!-- <td class="center"><a href="admin/sanpham/edit/{{$pr->id}}"><i class="icon icon-pencil"></i> Edit</a></td>
									<td class="center"><a href="admin/sanpham/delete/{{$pr->id}}"><i class="icon icon-bin"></i> Delete</a></td> -->
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
                  </div>
                </div>
                <div class="row">
                  			
                  			<div class="col-sm-7">{{$product->links()}}</div>
                  		</div>
		

			</div>
	

		</div>
	</div>
</div>
</section>

@endsection