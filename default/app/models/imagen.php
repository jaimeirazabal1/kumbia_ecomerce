<?php 
class Imagen extends ActiveRecord{
	public function guardarImagen($path,$path2,$path3,$articulo_id){
		$this->url = $path;
		$this->url_320x150 = $path2;
		$this->url_800x300 = $path3;
		$this->articulo_id = $articulo_id;	
		return $this->save();
	}
	public function getImagenesByArticuloId($id){
		return $this->find("conditions: articulo_id = '$id'",
							"columns: articulo.nombre,
									  articulo.precio,
									  	imagen.id,
										imagen.url,
										imagen.url_320x150,
										imagen.url_800x300,
										imagen.descripcion,
										imagen.imagen_inicial,
										imagen.fecha,
										imagen.articulo_id",
							"join: inner join articulo on articulo.id = imagen.articulo_id");
	}
	public function getImagenesOrderByFechaDesc(){
		return $this->find("order: fecha desc");
	}
	public function ponerEnCeroImagenes($articulo_id,$menos_esta){

		$this->sql("update imagen set imagen_inicial='0' where articulo_id = '$articulo_id' and id != '$menos_esta'");
	}
	public function eliminarImagen($id){
		$imagen = $this->find($id);
		if (!unlink(getcwd()."/img/{$imagen->url}")) {
			Flash::error("Error Eliminando de la ruta ".getcwd()."img/{$imagen->url}");
			return;
		}
		if (!unlink(getcwd()."/img/{$imagen->url_320x150}")) {
			Flash::error("Error Eliminando de la ruta ".getcwd()."img/{$imagen->url_320x150}");
			return;
		}
		if (!unlink(getcwd()."/img/{$imagen->url_800x300}")) {
			Flash::error("Error Eliminando de la ruta ".getcwd()."img/{$imagen->url_800x300}");
			return;
		}
		/*para asegurarme de que una se va a mostrar despues que borre esta*/
		$imagenes = $this->find("conditions: articulo_id='$imagen->articulo_id' and id != '$id'");
		foreach ($imagenes as $key => $value) {
			if ($value->imagen_inicial) {
				$semuestrauna=1;
			}
		}
		if (!isset($semuestrauna)) {
			$imagenes[0]->imagen_inicial= 1;
			$imagenes[0]->update();
		}
		
		return $imagen->delete();
	}
	
}

 ?>