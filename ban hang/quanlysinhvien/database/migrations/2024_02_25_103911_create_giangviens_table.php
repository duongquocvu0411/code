<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('giangviens', function (Blueprint $table) {
            $table->id();
            $table->string('MaGV')->change();
            $table->string('HoTen');
            $table->date('NgaySinh');
            $table->string('GioiTinh');
            $table->string('DiaChi');
            $table->string('SoDT');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(Blueprint $table): void
    {
        Schema::dropIfExists('giangviens');
        $table->string('MaGV')->change(); // Nếu muốn rollback, bạn có thể sử dụng kiểu dữ liệu ban đầu của trường MaGV
    }
};