@extends('admin.layout.index')
@section('content')
    <section class="content-header">
      <h1>
        DANH SÁCH
        <small>Slide</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Nhà cung cấp</a></li>
        <li class="active">danh sách</li>
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
									<th>Tên hãng sản xuất</th>
									<th>Hình ảnh</th>
									<th>Mô tả</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								@foreach($supplier as $ncc )	
								<tr>
									<td>{{$ncc->id}}</td>
									<td>{{$ncc->name_supplier}}</td>
									<td><img src="images/hangsanxuat/{{$ncc->image}}" width="50px" height="50px;"></td>
									<td><?php echo substr($ncc['description'],0,150)?>...</td>
									<td class="center"><a href="admin/hangsanxuat/edit/{{$ncc->id}}"><i class="icon icon-pencil"></i> Edit</a></td>
									<td class="center"><a href="admin/hangsanxuat/delete/{{$ncc->id}}"><i class="icon icon-bin"></i> Delete</a></td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
              </div>
              <div class="row">
	      			
	      			<div class="col-sm-7">{{$supplier->links()}}</div>
               </div>
	

			</div>
		

		</div>
	</div>
</div>
</section>

@endsection