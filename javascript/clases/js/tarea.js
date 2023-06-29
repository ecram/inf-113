function menor()
{
	var n1=parseFloat(prompt("Ingrese el 1er número: ", "1.12"))
	var n2=parseFloat(prompt("Ingrese el 2do número: ", "1.14"))
	var n3=parseFloat(prompt("Ingrese el 3er número: ", "1.13"))
	if (n1<=n2 && n1<=n3) {return n1}
	if (n2<=n1 && n2<=n3) {return n2}
	if (n3<=n2 && n3<=n1) {return n3}
}

function perimetro(valor) {return valor*4;}