<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class BillDetail extends Model
{
    protected $table = "bill_detail";

    public function product(){
    	return $this->belongsTo('App\models\Product','id_product','id');
    }

    public function bill(){
    	return $this->belongsTo('App\models\Bill','id_bill','id');
    }
}
