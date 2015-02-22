<?php 
class Acerca extends ActiveRecord{
	public function getAcerca(){
		return $this->find_first();
	}
}
 ?>