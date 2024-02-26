@extends('layout')
@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Sửa sinh viên</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{route('sinhvien.index')}}" class=" btn btn-primary float-end">Danh sách sinh viên</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <form action="{{route('sinhvien.update',$sinhvien->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Mã Sinh viên</strong>
                            <input type="text" name="MaSv" value="{{$sinhvien->MaSv}}" class="form-control" placeholder="Nhập mã sinh viên">
                        </div>
                        <div class="form-group">
                            <strong>Họ Tên</strong>
                            <input type="text" name="HoTen" value="{{$sinhvien->HoTen}}" class="form-control" placeholder="Nhập họ tên sinh viên">
                        </div>
                        <div class="form-group">
                            <strong>Ngày sinh</strong>
                            <input type="date" name="NgaySinh" value="{{$sinhvien->NgaySinh}}" class="form-control" >
                        </div>
                        <div class="form-group">
                            <strong>Giới tính</strong>
                           <select name="GioiTinh" class="form-select">
                            <option selected>Chọn giới tính</option>
                            <option value="Nam" {{$sinhvien->GioiTinh == 'Nam'? 'selected': ''}}>Nam</option>
                            <option value="Nữ" {{$sinhvien->GioiTinh == 'Nữ'? 'selected': ''}}>Nữ</option>
                            <option value="Khác">Khác</option>
                           </select>
                        </div>
                        <div class="form-group">
                            <strong>Địa chỉ</strong>
                            <input type="text" name="DiaChi" value="{{$sinhvien->DiaChi}}" class="form-control" placeholder="Nhập  Địa chỉ  sinh viên">
                        </div>
                        <div class="form-group">
                            <strong>Số điện thoại</strong>
                            <input type="number" name="SoDT" value="{{$sinhvien->SoDT}}" class="form-control" placeholder="Nhập Số điện thoại tên sinh viên">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-dark mt-2">Cập nhật</button>
            </form>
        </div>
    </div>
</div>
    
@endsection