<!-- resources/views/giangvien/index.blade.php -->

@extends('layout')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Quản lý giảng viên</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{ route('giangvien.create') }}" class="btn btn-primary float-end">Thêm mới</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            @if (Session::has('thongbao'))
                <div class="alert alert-success">
                    {{ Session::get('thongbao') }}
                </div>
            @endif

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã giảng viên</th>
                        <th>Họ Tên</th>
                        <th>Ngày Sinh</th>
                        <th>Giới tính</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @php $i = ($giangvien->currentPage() - 1) * $giangvien->perPage() + 1 @endphp
                    @foreach ($giangvien as $gv)
                        <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $gv->MaGV }}</td>
                            <td>{{ $gv->HoTen }}</td>
                            <td>{{ $gv->NgaySinh }}</td>
                            <td>{{ $gv->GioiTinh }}</td>
                            <td>{{ $gv->DiaChi }}</td>
                            <td>{{ $gv->SoDT }}</td>
                            <td>
                                <form action="{{ route('giangvien.destroy', $gv->id) }}" method="POST">
                                    <a href="{{ route('giangvien.edit', $gv->id) }}" class="btn btn-info">Sửa thông tin</a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Xóa</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <!-- Hiển thị phân trang -->
            <div class="pagination">
                @if ($giangvien->lastPage() > 1)
                    <ul class="pagination">
                        @for ($i = 1; $i <= $giangvien->lastPage(); $i++)
                            <li class="{{ ($giangvien->currentPage() == $i) ? 'active' : '' }}">
                                <a href="{{ $giangvien->url($i) }}">{{ $i }}</a>
                            </li>
                        @endfor
                    </ul>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
