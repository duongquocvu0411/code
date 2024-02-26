@extends('layout')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Thêm giảng viên</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{ route('giangvien.index') }}" class="btn btn-primary float-end">Danh sách giảng viên</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <form action="{{ route('giangvien.store') }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Mã giảng viên</strong>
                            <input type="text" name="MaGV" class="form-control" placeholder="Nhập mã giảng viên">
                        </div>
                        <div class="form-group">
                            <strong>Họ Tên</strong>
                            <input type="text" name="HoTen" class="form-control" placeholder="Nhập họ tên giảng viên">
                        </div>
                        <div class="form-group">
                            <strong>Ngày sinh</strong>
                            <input type="date" name="NgaySinh" class="form-control">
                        </div>
                        <div class="form-group">
                            <strong>Giới tính</strong>
                            <select name="GioiTinh" class="form-select">
                                <option selected>Chọn giới tính</option>
                                <option value="Nam">Nam</option>
                                <option value="Nữ">Nữ</option>
                                <option value="Khác">Khác</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <strong>Địa chỉ</strong>
                            <input type="text" name="DiaChi" class="form-control" placeholder="Nhập Địa chỉ giảng viên">
                        </div>
                        <div class="form-group">
                            <strong>Số điện thoại</strong>
                            <input type="number" name="SoDT" class="form-control" placeholder="Nhập Số điện thoại giảng viên">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-dark mt-2">Lưu</button>
            </form>
        </div>
    </div>
</div>
@endsection
