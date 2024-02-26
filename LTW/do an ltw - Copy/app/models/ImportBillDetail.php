<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class ImportBillDetail extends Model
{
    protected $table = "import_bill_detail";

    public function import_bill(){
    	return $this->belongsTo('App\models\ImportBill','id_import_bill_detail','id');
    }

   public function product(){
    	return $this->belongsTo('App\models\Product','id_product','id');
    }

     public function category(){
    	return $this->hasMany('App\models\Category','id_category','id');
    }

     public function type_product(){
    	return $this->hasMany('App\models\ProdctType','id_type_product','id');
    }

    public function supplier(){
        return $this->hasMany('App\models\Supplier','id_supplier','id');
    }
}
