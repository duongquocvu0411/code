<?php

namespace App\Http\Controllers;

use App\Models\Giangvien;
use Illuminate\Http\Request;

class GiangvienController extends Controller
{
    public function index()
    {
        $giangvien = Giangvien::paginate(10);
        return view('giangvien.index', compact('giangvien'))->with('i', (request()->input('page', 1) - 1) * 10);
    }
    

    public function create()
    {
        return view('giangvien.create');
    }

    public function store(Request $request)
    {
        Giangvien::create($request->all());
        return redirect()->route('giangvien.index')->with('thongbao', 'Thêm sinh viên thành công');
    }
    

    public function edit(Giangvien $giangvien)
    {
        return view('giangvien.edit', compact('giangvien'));
    }

    public function update(Request $request, Giangvien $giangvien)
    {
        $giangvien->update($request->all());
        return redirect()->route('giangvien.index')->with('thongbao', 'Cập nhật giảng viên thành công!');
    }

    public function destroy(Giangvien $giangvien)
    {
        $giangvien->delete();
        return redirect()->route('giangvien.index')->with('thongbao', 'Xóa giảng viên thành công!');
    }
}