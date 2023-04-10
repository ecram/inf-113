function validar(formulario){
	if ((formulario.nombre.value.length==0) || (formulario.apellidos.value.length==0)){
		alert("Los campos Nombre y Apellidos son obligatorios");
		return false;
	}	
	if (formulario.dni.value.length==0){
		alert("El campo DNI es obligatorio");
		return false;
	}	
	
	if ((formulario.edad.value<=1) || (isNaN(formulario.edad.value))){
		alert("La edad debe ser mayor de 1");
		return false;
	}
	
	if ( (formulario.dia.options[formulario.dia.selectedIndex].value==0) || (formulario.mes.options[formulario.mes.selectedIndex].value==0) || (formulario.anio.options[formulario.anio.selectedIndex].value==0) ){
		alert("La fecha de nacimiento no es correcta");
		return false;
	}
	
	if ((!formulario.idioma1.checked) && (!formulario.idioma2.checked) && (!formulario.idioma3.checked)){
		alert("Al menos debe seleccionar un idioma");
		return false;
	}
	
	// Si hemos llegado a este punto del script es que el formulario es correcto
	alert("Formulario correcto !!");
	formulario.submit(); //enviamos el formulario al servidor
}
