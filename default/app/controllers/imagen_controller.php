<?php 
Load::models("articulo","imagen");
class ImagenController extends AppController{
	public function nuevas($nombre_articulo){
		$articulo = new Articulo();
		$id_articulo = $articulo->getIdByNombre($nombre_articulo);
		if (isset($_FILES['userfile'])) {
			$uploadsClass = new Multiuploads();
			$uploadsClass->upFiles($_FILES['userfile'],$id_articulo);
			Router::redirect("imagen/configurarImagenes/$id_articulo");
		}
	}
	public function configurarImagenes($id_articulo){
		$imagen = new Imagen();

		if (Input::haspost("imagen")) {
			$imagen_editing_por_post = Input::post('imagen');
			$obj = new Imagen();
			$imagen_editando = $obj->find($imagen_editing_por_post["id"]);
			//Util::pre($imagen_editando);
			$imagen_editando->descripcion = $imagen_editing_por_post["descripcion"];
			$imagen_editando->imagen_inicial = isset($imagen_editing_por_post["imagen_inicial"]) ? 1 : 0;

			if ($imagen_editando->update()) {
				Flash::valid("Edición realizada"); 
				if (isset($imagen_editing_por_post["imagen_inicial"])) {
					$articulo_id = $imagen_editando->articulo_id;
					$obj->ponerEnCeroImagenes($articulo_id,$imagen_editing_por_post["id"]);
				}
				Input::delete();
			}else{
				Flash::error("Edición no realizada"); 
			}
		}
		$this->imagenes = $imagen->getImagenesByArticuloId($id_articulo);
	}
	public function eliminar($id,$id_articulo){
		$imagen = new Imagen();
		if ($imagen->eliminarImagen($id)) {
			Flash::valid("Imagen Eliminada");
		}
		Router::toAction("configurarImagenes/{$id_articulo}");
	}
}

 ?>