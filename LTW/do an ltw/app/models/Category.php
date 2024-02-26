<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = "category";

    public function product(){
    	return $this->hasMany('App\models\Product','id_category','id');
    }

    public function product_type(){
    	return $this->belongsTo('App\models\ProductType','id_type','id');
    }
}
