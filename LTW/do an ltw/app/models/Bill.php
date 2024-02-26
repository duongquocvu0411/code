<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    protected $table = "bills";

    public function bill_detail(){
    	return $this->hasMany('App\models\BillDetail','id_bill','id');
    }

    public function customer(){
    	return $this->belongsTo('App\models\Customer','id_customer','id');
    }
}
