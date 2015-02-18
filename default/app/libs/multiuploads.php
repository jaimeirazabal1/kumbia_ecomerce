<?php 
class Multiuploads
{
 
    /**
    *sube archivos al servidor a través de un formulario
    *@access public
    *@param array $files estructura de array con todos los archivos a subir
    */
    public function upFiles($files,$articulo_id)
    {
    
 
        //si no existe la carpeta files la creamos
        $path_carpeta = getcwd()."/img/uploads/";
        if(!is_dir($path_carpeta)){ 
            mkdir($path_carpeta, 0777);
            chmod($path_carpeta, 0777);
        }
        //recorremos los input files del formulario
        for ($i=0; $i < count($files['name']) ; $i++) { 
     
            //si se está subiendo algún archivo en ese indice
            if($_FILES['userfile']['tmp_name'][$i])
            {
                //separamos los trozos del archivo, nombre extension
                $aux_name = $_FILES["userfile"]["name"][$i];
                $_FILES["userfile"]["name"][$i] = date("Y-m-d_H-i-s_").$_FILES["userfile"]["name"][$i];
                $trozos[$i] = explode(".", $_FILES["userfile"]["name"][$i]);
 
                //obtenemos la extension
                $extension[$i] = end($trozos[$i]);
 
                //si la extensión es una de las permitidas
                if($this->checkExtension($extension[$i]) === TRUE)
                {
 
                    //comprobamos si el archivo existe o no, si existe renombramos 
                    //para evitar que sean eliminados
                    //$_FILES['userfile']['name'][$i] = $this->checkExists($trozos[$i]);           
 
                    //comprobamos si el archivo ha subido
                    if(move_uploaded_file($_FILES['userfile']['tmp_name'][$i],$path_carpeta.$_FILES['userfile']['name'][$i]))
                    {
                        $origen=$path_carpeta.$_FILES['userfile']['name'][$i];
                        $destino_320x150=$path_carpeta."_320x150_".$_FILES['userfile']['name'][$i];
                        $destino_temporal=tempnam("tmp/","tmp");
                        
                        $this->redimensionar_jpeg($origen, $destino_temporal, 320, 150, 100);
                        $fp=fopen($destino_320x150,"w");
                        fputs($fp,fread(fopen($destino_temporal,"r"),filesize($destino_temporal)));
                        fclose($fp);

                        $destino_800x300=$path_carpeta."_800x300_".$_FILES['userfile']['name'][$i];
                        $destino_temporal=tempnam("tmp/","tmp");
                        $this->redimensionar_jpeg($origen, $destino_temporal, 800, 300, 100);
                        // guardamos la imagen
                        $fp=fopen($destino_800x300,"w");
                        fputs($fp,fread(fopen($destino_temporal,"r"),filesize($destino_temporal)));
                        fclose($fp);


                        Load::model("imagen")->guardarImagen("uploads/".$_FILES['userfile']['name'][$i],
                                                            "uploads/"."_320x150_".$_FILES['userfile']['name'][$i],
                                                            "uploads/"."_800x300_".$_FILES['userfile']['name'][$i],
                                                            $articulo_id);
                        $imagenes[] = $aux_name;
                        //aqui podemos procesar info de la bd referente a este archivo
                    }else{
                        $imagenes_error[] = $aux_name;
                    }
                //si la extension no es una de las permitidas
                }else{
                    Flash::error("La extension del archivo $aux_name, no esta permitia ({$extension[$i]})");
                }
            //si ese input file no ha sido cargado con un archivo
            }

              
        }   
        if (isset($imagenes) and count($imagenes)) {
            Flash::valid("La siguientes imagenes fueron subidas con exito!");
            echo implode(",", $imagenes);
        }
        if (isset($imagenes_error) and count($imagenes_error)) {
            Flash::error("La siguientes imagenes no fueron subidas con exito!");
            echo implode(",", $imagenes_error);
        }
    }
 
    /**
    *funcion privada que devuelve true o false dependiendo de la extension
    *@access private
    *@param string 
    *@return boolean - si esta o no permitido el tipo de archivo
    */
    private function checkExtension($extension)
    {
        //aqui podemos añadir las extensiones que deseemos permitir
        $extensiones = array("jpg","png","gif","pdf");
        if(in_array(strtolower($extension), $extensiones))
        {
            return TRUE;
        }else{
            return FALSE;
        }
    }
 
    /**
    *funcion que comprueba si el archivo existe, si es asi, iteramos en un loop 
    *y conseguimos un nuevo nombre para el, finalmente lo retornamos
    *@access private
    *@param array 
    *@return array - archivo con el nuevo nombre
    */
    private function checkExists($file)
    {
        //asignamos de nuevo el nombre al archivo
        $archivo = $file[0] . '.' . end($file);
        $i = 0;
        //mientras el archivo exista entramos
        while(file_exists('files/'.$archivo))
        {
            $i++;
            $archivo = $file[0]."(".$i.")".".".end($file);       
        }
        //devolvemos el nuevo nombre de la imagen, si es que ha 
        //entrado alguna vez en el loop, en otro caso devolvemos el que
        //ya tenia
        return $archivo;
    }
    

    public function redimensionar_jpeg($img_original, $img_nueva, $img_nueva_anchura, $img_nueva_altura, $img_nueva_calidad)
    { 
        // crear una imagen desde el original 
        $img = ImageCreateFromJPEG($img_original); 
        // crear una imagen nueva 
        $thumb = imagecreatetruecolor($img_nueva_anchura,$img_nueva_altura); 
        // redimensiona la imagen original copiandola en la imagen 
        ImageCopyResized($thumb,$img,0,0,0,0,$img_nueva_anchura,$img_nueva_altura,ImageSX($img),ImageSY($img)); 
        // guardar la nueva imagen redimensionada donde indicia $img_nueva 
        ImageJPEG($thumb,$img_nueva,$img_nueva_calidad);
        ImageDestroy($img);
    }
}
 ?>