<?php 
Load::models("contacto");
class ContactoController extends AppController{
	public function index(){
		$contacto = new Contacto();
		$this->contacto = $contacto->getContactos();
	}
	public function nuevo(){
		if (Input::haspost("contacto")) {
			$contacto = new Contacto(Input::post("contacto"));
			if ($contacto->save()) {
				Flash::valid("Contacto Agregado");
				Router::toAction("index");
			}else{
				Flash::error("Contacto no Agregado");
			}
		}
	}
}

 ?>