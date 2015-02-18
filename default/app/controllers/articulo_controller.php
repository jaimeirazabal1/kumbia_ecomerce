<?php 
Load::models("articulo");
class ArticuloController extends AppController{
	public function nuevo(){
		if (Input::haspost("articulo")) {
			$articulo = new Articulo(Input::post("articulo"));
			if ($articulo->save()) {
				Flash::valid("Articulo Agregado");
				Input::delete();
				Router::redirect("imagen/nuevas/".$articulo->nombre);
			}else{
				Flash::error("Error No se Agrego el articulo");
			}
		}
	}
	public function ver($nombre){
		$articulo = new Articulo();
		$this->articulo = $articulo->getArticuloByNombre($nombre);
	}
}

 ?>