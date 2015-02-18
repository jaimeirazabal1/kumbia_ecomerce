<?php

/**
 * Controller por defecto si no se usa el routes
 * 
 */
Load::model("articulo");
class IndexController extends AppController
{

    public function index()
    {
    	$articulo = new Articulo();
    	if (Input::get("buscarpor")) {
    		$this->articulos = $articulo->getByNombreCategoria(Input::get("buscarpor"));
    	}

    }

}
