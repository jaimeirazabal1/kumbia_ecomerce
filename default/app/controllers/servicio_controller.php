<?php 
Load::model("servicio");
class ServicioController extends AppController{
	public function index(){
		$servicio = new Servicio();
		$this->servicio = $servicio->getServicio();
	}
	public function nuevo(){
		if (Input::haspost("servicio")) {
			$servicio = new Servicio(Input::post("servicio"));
			if ($servicio->save()) {
				Flash::valid("Servicio Agregado");
				Router::toAction("index");
			}else{
				Flash::error("Servicio no Agregado");
			}
		}
	}
	public function editar($id){
		View::select("nuevo");
		if (Input::haspost("servicio")) {
			$servicio = new Servicio(Input::post("servicio"));
			if ($servicio->save()) {
				Flash::valid("Servicio Agregado");
				Router::toAction("index");
			}else{
				Flash::error("Servicio no Agregado");
			}
		}
		$service = new Servicio();
		$this->servicio = $service->find($id);
	}
}

 ?>