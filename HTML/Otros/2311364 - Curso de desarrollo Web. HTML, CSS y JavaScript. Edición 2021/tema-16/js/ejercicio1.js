function mostrarDatos(){
	var nombreyApellidos="NOMBRE: "+datosPersonales.nombre.value+"\n";
	nombreyApellidos +="APELLIDOS: "+datosPersonales.apellidos.value;
	
	var estadoCivil="ESTADO CIVIL: "+datosPersonales.estadoCivil.options[datosPersonales.estadoCivil.selectedIndex].text;

	var idiomas="IDIOMAS: ";
	if (datosPersonales.idioma1.checked)
		idiomas +=datosPersonales.idioma1.value+", ";
	if (datosPersonales.idioma2.checked)
		idiomas +=datosPersonales.idioma2.value+", ";
	if (datosPersonales.idioma3.checked)
		idiomas +=datosPersonales.idioma3.value;
	
	var profesion="PROFESIÓN: ";
	var encontrado=false;
	for (var i = 0; i < datosPersonales.profesion.length && !encontrado; i++) {
		  if (datosPersonales.profesion[i].checked){
			profesion +=datosPersonales.profesion[i].value;
			encontrado=true;
		  }	
	}
	var comentarios="COMENTARIOS :"+datosPersonales.comentarios.value;
	var mensajeFinal=nombreyApellidos+"\n"+estadoCivil+"\n"+idiomas+"\n"+profesion+"\n"+comentarios;
	
	alert(mensajeFinal);
}
