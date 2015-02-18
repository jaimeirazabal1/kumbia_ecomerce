<?php 
Load::models("categoria");
class CategoriaController extends AppController{
	public function nueva(){
		if (Input::isAjax()) {
			View::select(null,'json');
		}
		if (Input::haspost("categoria")) {
			$categoria = new Categoria(Input::post("categoria"));
			if ($categoria->save()) {
				$this->data = array("correcto"=>true,
									"htmldeategorias"=>Form::dbselect("articulo.categoria_id",null,null,"Seleccione una Categoria","class='form-control'"));
			}else{
				$this->data = array("correcto"=>false);
			}
		}
	}
}

 ?>