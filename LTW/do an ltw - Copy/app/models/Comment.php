<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = "comment";
    public $timestamps = true;
    public function product(){
    	return $this->belongsTo('App\models\Product','id_product','id');
    }

    public function user(){
    	return $this->belongsTo('App\models\User','id_user','id');
    }
}
