/*=============================================
PLANTILLA
=============================================*/

// Herramienta TOOLTIP
$('[data-toggle="tooltip"]').tooltip(); 

$.ajax({

	url:"ajax/plantilla.ajax.php",
	success:function(respuesta){

		var colorFondo = JSON.parse(respuesta).colorFondo;
		var colorTexto = JSON.parse(respuesta).colorTexto;
		var barraSuperior = JSON.parse(respuesta).barraSuperior;
		var textoSuperior = JSON.parse(respuesta).textoSuperior;
		
		$(".backColor, .backColor a").css({"background": colorFondo,
											"color": colorTexto})

		$(".barraSuperior, .barraSuperior a").css({"background": barraSuperior, 
			                                       "color": textoSuperior})

	}

})

/*=============================================
CUADRÍCULA O LISTA
=============================================*/

var btnList = $(".btnList");

for(var i = 0; i < btnList.length; i++){

	$("#btnGrid"+i).click(function(){

		var numero = $(this).attr("id").substr(-1);			//toma el numero del btnGrid en el cual se hace click

		$(".list"+numero).hide();							//activar vista en grilla desactivar lista
		$(".grid"+numero).show();

		$("#btnGrid"+numero).addClass("backColor");			//agregar o remover la clase backColor para que el boton 
		$("#btnList"+numero).removeClass("backColor");		//de la vista actual contenga el color	

	})

	$("#btnList"+i).click(function(){

		var numero = $(this).attr("id").substr(-1);				//toma el numero del btnGrid en el cual se hace click

		$(".list"+numero).show();								//activar vista en lista desactivar grilla
		$(".grid"+numero).hide();

		$("#btnGrid"+numero).removeClass("backColor");			//agregar o remover la clase backColor para que el boton 
		$("#btnList"+numero).addClass("backColor");				//de la vista actual contenga el color	

	})

}

/*=============================================
EFECTOS CON EL SCROLL
=============================================*/

$(window).scroll(function(){

	var scrollY = window.pageYOffset; //toma posicion del scroll 

	if(window.matchMedia("(min-width:768px)").matches){// en ceculares no se aplica el efecto	

		if(scrollY < ($(".banner").offset().top)-150){

			$(".banner img").css({"margin-top":-scrollY/3+"px"})

		}else{

			scrollY = 0;
		}

	}	
	
})

$.scrollUp({

	scrollText:"",
	scrollSpeed: 2000,
	easingType: "easeOutQuint"

});




