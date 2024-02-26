@extends('layout')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Quản lý sinh viên</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{ route('sinhvien.create') }}" class="btn btn-primary float-end">Thêm mới</a>
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
                        <th>Mã sinh viên</th>
                        <th>Họ Tên</th>
                        <th>Ngày Sinh</th>
                        <th>Giới tính</th>
                        <th>Địa chỉ</th>
                        <th>Số điện thoại</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @php $i = ($sinhvien->currentPage() - 1) * $sinhvien->perPage() + 1 @endphp
                    @foreach ($sinhvien as $sv)
                        <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $sv->MaSv }}</td>
                            <td>{{ $sv->HoTen }}</td>
                            <td>{{ $sv->NgaySinh }}</td>
                            <td>{{ $sv->GioiTinh }}</td>
                            <td>{{ $sv->DiaChi }}</td>
                            <td>{{ $sv->SoDT }}</td>
                            <td>
                                <form action="{{ route('sinhvien.destroy', $sv->id) }}" method="POST">
                                    <a href="{{ route('sinhvien.edit', $sv->id) }}" class="btn btn-info">Sửa thông tin</a>
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
                @if ($sinhvien->lastPage() > 1)
                    <ul class="pagination">
                        @for ($i = 1; $i <= $sinhvien->lastPage(); $i++)
                            <li class="{{ ($sinhvien->currentPage() == $i) ? 'active' : '' }}">
                                <a href="{{ $sinhvien->url($i) }}">{{ $i }}</a>
                            </li>
                        @endfor
                    </ul>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
