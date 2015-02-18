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
										imagen.fecha",
							"join: inner join articulo on articulo.id = imagen.articulo_id");
	}
	public function getImagenesOrderByFechaDesc(){
		return $this->find("order: fecha desc");
	}
	public function ponerEnCeroImagenes($articulo_id,$menos_esta){

		$this->sql("update imagen set imagen_inicial='0' where articulo_id = '$articulo_id' and id != '$menos_esta'");
	}
}

 ?>