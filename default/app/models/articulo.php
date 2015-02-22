<?php 
class Articulo extends ActiveRecord{
	protected function initialize(){
		$this->validates_uniqueness_of("nombre");
	}
	public function getByNombreCategoria($nombre){
		return $this->find_all_by_sql("SELECT 
										articulo.nombre, 
										articulo.precio, 
										articulo.descripcion, 
										articulo.fecha,
										categoria.nombre as nombre_categoria, 
										imagen.url_320x150 
										FROM 
										articulo
										left join categoria on articulo.categoria_id = categoria.id
										inner join imagen on articulo.id = imagen.articulo_id
										WHERE imagen.imagen_inicial ='1' and categoria.nombre = '$nombre'");
	}
	public function getArticulos(){
		$query = "SELECT 
					articulo.nombre, 
					articulo.precio, 
					articulo.descripcion, 
					articulo.fecha,
					categoria.nombre as nombre_categoria, 
					imagen.url_320x150 
					FROM 
					articulo
					left join categoria on articulo.categoria_id = categoria.id
					inner join imagen on articulo.id = imagen.articulo_id and imagen.imagen_inicial = 1";
		return $this->find_all_by_sql($query);
	}
	public function getArticuloByNombre($nombre){
		return $this->find(	"columns: articulo.id,articulo.precio,articulo.nombre,articulo.descripcion,imagen.url_320x150,imagen.url,imagen.descripcion",
							"conditions: articulo.nombre='$nombre'",
							"join: left join imagen on articulo.id = imagen.articulo_id");
	}
	public function getUltimoId(){
		return $this->find_first("order: id desc")->id;
	}
	public function getIdByNombre($nombre){
		$articulo = $this->find_first("conditions: nombre= '$nombre'");
		return $articulo->id;
	}
}

?>