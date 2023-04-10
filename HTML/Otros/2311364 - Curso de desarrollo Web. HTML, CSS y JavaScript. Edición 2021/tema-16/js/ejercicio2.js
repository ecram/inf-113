function activarEstadoCivil(){
	var valorSexo=datosPersonales.sexo.options[datosPersonales.sexo.selectedIndex].value;
	
	if (valorSexo==2)
		document.getElementById("estadoCivil").disabled = false;
	else
		document.getElementById("estadoCivil").disabled = true;	
}

function calcularTasas(){
	var valorProfesion="";
	var encontrado=false;
		
	for (var i = 0; i < datosPersonales.profesion.length && !encontrado; i++) {
		  if (datosPersonales.profesion[i].checked){
			valorProfesion=datosPersonales.profesion[i].value;
			encontrado=true;
		  }	
	}

	switch (valorProfesion){
		case "autonomo": datosPersonales.tasas.value="15€";
		break;	
		case "ajena": datosPersonales.tasas.value="20€";
		break;	
		case "desempleado": datosPersonales.tasas.value="2€";
		break;	
		case "jubilado": datosPersonales.tasas.value="5€";
		break;	
	}
	
}

function mostrarMensaje(){	
	var nombreyApellidos="NOMBRE: "+datosPersonales.nombre.value+"\n";
	nombreyApellidos +="APELLIDOS: "+datosPersonales.apellidos.value;
	var mensajeFinal=nombreyApellidos+"\nTASAS: "+datosPersonales.tasas.value;
	
	alert(mensajeFinal);
}
