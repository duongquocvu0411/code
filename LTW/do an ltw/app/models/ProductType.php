<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class ProductType extends Model
{
    protected $table = "type_products";

    public function product(){
    	return $this->hasMany('App\models\Product','id_type','id');
    }

    public function category(){
    	return $this->hasMany('App\models\Category','id_type','id');
    }
}
