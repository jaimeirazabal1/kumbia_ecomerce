<?php 
Load::model("acerca");
class AcercaController extends AppController{
	public function index(){
		$acerca = new Acerca();
		$this->acerca = $acerca->getacerca();
	}
	public function nuevo(){
		if (Input::haspost("acerca")) {
			$acerca = new Acerca(Input::post("acerca"));
			if ($acerca->save()) {
				Flash::valid("'Acerca de' Agregado");
				Router::toAction("index");
			}else{
				Flash::error("'Acerca de' no Agregado");
			}
		}
	}
	public function editar($id){
		View::select("nuevo");
		if (Input::haspost("acerca")) {
			$acerca = new acerca(Input::post("acerca"));
			if ($acerca->save()) {
				Flash::valid("'Acerca de' Editado");
				Router::toAction("index");
			}else{
				Flash::error("'Acerca de' no Editado");
			}
		}
		$acerca = new Acerca();
		$this->acerca = $acerca->find($id);
	}
}

 ?>