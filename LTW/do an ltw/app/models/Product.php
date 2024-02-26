<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "products";

    // public function product_type(){
    // 	return $this->belongsTo('App\ProductType','id_type','id');
    // }

    public function category(){
    	return $this->belongsTo('App\models\Category','id_category','id');
    }

    public function bill_detail(){
    	return $this->hasMany('App\models\BillDetail','id_product','id');
    }

    public function comment(){
        return $this->hasMany('App\models\Comment','id_product','id');
    }

    public function supplier(){
        return $this->belongsTo('App\models\Supplier','id_supplier','id');
    }

    public function import_bill_detail(){
        return $this->hasMany('App\models\ImportBillDeatil','id_import_bill_detail','id');
    }
}
