@extends('admin.layout.index')
@section('content')
    <section class="content-header">
      <h1>
        DANH SÁCH
        <small>Slide</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> silde</a></li>
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
									<th>Name</th>
									<th>Link</th>
									<th>Image</th>
									<th>Mô Tả</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								@foreach($slide as $sl )	
								<tr>
									<td>{{$sl->id}}</td>
									<td>{{$sl->name}}</td>
									<td>{{$sl->link}}</td>
									<td><img src="source/image/slide/{{$sl->image}}" width="100px" height="50px;"></td>
									<td>{{$sl->description}}</td>
									<td class="center"><a href="admin/slide/edit/{{$sl->id}}"><i class="icon icon-pencil"></i> Edit</a></td>
									<td class="center"><a href="admin/slide/delete/{{$sl->id}}"><i class="icon icon-bin"></i> Delete</a></td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
              </div>
              <div class="row">
	      			
	      			<div class="col-sm-7">{{$slide->links()}}</div>
               </div>


			</div>


		</div>
	</div>
</div>
</section>

@endsection