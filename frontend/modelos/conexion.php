<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql://s839akgyq33n6gxq:pvm6taidfej560l5@d9c88q3e09w6fdb2.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/zqk6c8f9tna2rz6k;dbname=zqk6c8f9tna2rz6k",
						"s839akgyq33n6gxq",
						"pvm6taidfej560l5",
						array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
		                      PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
						);

		return $link;

	}


}



