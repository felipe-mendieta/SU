/*=============================================
CABEZOTE
=============================================*/
//Control de visibilidad del boton categorias
$("#btnCategorias").click(function(){

	if(window.matchMedia("(max-width:767px)").matches){ //preguntamos que ancho tiene el dipositivo en el que estamos
		//si es un celular hacer

		//Vista categorias se muestra debajo de boton categorias
		$("#btnCategorias").after($("#categorias").slideToggle("fast"))
		
	}else{ //mientras no este sucediendo en un celu que aparezca normalmente
		
		//Vista categorias se muestra debajo de cabezote
		$("#cabezote").after($("#categorias").slideToggle("fast"))
		
	}

		
})