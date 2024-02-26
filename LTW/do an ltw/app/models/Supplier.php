<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    //
    protected $table = "supplier";

    public function product(){
        return $this->hasMany('App\models\Product','id_supplier','id');
    }
}
