<?php 
class Contacto extends ActiveRecord{
	protected function initialize(){
		$this->validates_uniqueness_of("direccion");
	}
	public function getContactos(){
		return $this->find();
	}
}

 ?>
