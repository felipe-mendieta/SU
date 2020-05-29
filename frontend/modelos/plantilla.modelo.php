<?php

require_once "conexion.php";

class ModeloPlantilla{

	static public function mdlEstiloPlantilla($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt -> execute();
		
		$resultado = $stmt -> fetch();//fetch solo trae la primera fila de los resultados
		 
		$stmt -> closeCursor();//cerramos la conexion a la base de datos

		return $resultado;

		

	}

}