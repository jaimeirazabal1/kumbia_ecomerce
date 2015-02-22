<?php 
class Servicio extends ActiveRecord{
	public function getServicio(){
		return $this->find_first();
	}
}
 ?>