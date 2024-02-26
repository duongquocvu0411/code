<?php

namespace App\Http\Controllers;

use App\Models\Sinhvien;
use Illuminate\Http\Request;

class SinhvienController extends Controller
{
    public function index()
    {
        $sinhvien = Sinhvien::paginate(10);
        return view('sinhvien.index', compact('sinhvien'))->with('i', (request()->input('page', 1) - 1) * 10);
    }
    

    public function create()
    {
        return view('sinhvien.create');
    }

    public function store(Request $request)
    {
        Sinhvien::create($request->all());
        return redirect()->route('sinhvien.index')->with('thongbao', 'Thêm sinh viên thành công');
    }

    public function edit(Sinhvien $sinhvien)
    {
        return view('sinhvien.edit', compact('sinhvien'));
    }

    public function update(Request $request, Sinhvien $sinhvien)
    {
        $sinhvien->update($request->all());
        return redirect()->route('sinhvien.index')->with('thongbao', 'Cập nhật sinh viên thành công!');
    }

    public function destroy(Sinhvien $sinhvien)
    {
        $sinhvien->delete();
        return redirect()->route('sinhvien.index')->with('thongbao', 'Xóa sinh viên thành công!');
    }
}