<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = "customer";	

    public function bill(){
    	return $this->hasMany('App\models\Bill','id_customer','id');
    }
}
