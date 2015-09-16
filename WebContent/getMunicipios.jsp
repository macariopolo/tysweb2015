<%@ page language="java" contentType="application/json" pageEncoding="ISO-8859-1"%>

[
<%
String provincia=request.getParameter("provincia");

String[] municipios=new String[3];
if (provincia!=null) {
	if (provincia.equals("Albacete")) {
		municipios[0]="Hellín"; municipios[1]="La Roda"; municipios[2]="Chinchilla";
	} else if (provincia.equals("Ciudad Real")) {
		municipios[0]="Alcubillas"; municipios[1]="Ruidera"; municipios[2]="Santa Cruz de Mudela";
	} else if (provincia.equals("Cuenca")) {
		municipios[0]="Mota del Cuervo"; municipios[1]="Tarancón"; municipios[2]="Tragacete";
	} else if (provincia.equals("Guadalajara")) {
		municipios[0]="Clares"; municipios[1]="Madrigal"; municipios[2]="Setiles";
	} else if (provincia.equals("Toledo")) {
		municipios[0]="Madridejos"; municipios[1]="Orgaz"; municipios[2]="Tembleque";
	}
	
	for (int i=0; i<municipios.length; i++) {
		String municipio=municipios[i];
		out.print("\"" + municipio + "\"");
		if (i<municipios.length-1)
			out.print(", ");
	}
}
%>
]