function saludar(){
	console.log("Hola mundo");
	alert("Hola mundo");
	}

function mostrarMensaje()
{
	document.write("Cuidado<br>");
	document.write("Ingrese su documento correctamente.<br>");
	var ci = prompt("Ingrese su documento de identidad: ")
	document.write("Su documento es "+ci);
}

function mostrarComprendidos(x1, x2)
{
	for(i=x1; i<x2; i++)
	{
		document.write(i+" ");
	}
}

function convertirArabigos(n)
{
	switch(n)
	{
		case 0: return "cero";
		case 1: return "uno";
		case 2: return "dos";
		case 3: return "tres";
		case 4: return "cuatro";
		case 5: return "cinco";
		case 6: return "seis";
		case 7: return "siete";
		case 8: return "ocho";
		case 9: return "nueve";
		default: return "valor incorrecto";
	}
}

function sumar()
{
	var valor1=parseFloat(document.getElementById("valor1").value);
	var valor2=parseFloat(document.getElementById("valor2").value);

	var resultado = valor1 + valor2

	document.getElementById("resultado").innerText = "El resultado es: "+resultado;
}