<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Municipios sin AJAX</title>
<%
	String provincia=request.getParameter("provincia");
%>
</head>
<body>
	<form name="provincias" method="get" action="municipiosSinAJAX.jsp">
		Provincia: <select name="provincia" onchange="submit()">
			<option value="Albacete" <%= provincia!=null && provincia.equals("Albacete") ? "selected" : "" %>>Albacete</option>
			<option value="Ciudad Real" <%= provincia!=null && provincia.equals("Ciudad Real") ? "selected" : "" %>>Ciudad Real</option>
			<option value="Cuenca" <%= provincia!=null && provincia.equals("Cuenca") ? "selected" : "" %>>Cuenca</option>	
			<option value="Guadalajara" <%= provincia!=null && provincia.equals("Guadalajara") ? "selected" : "" %>>Guadalajara</option>
			<option value="Toledo" <%= provincia!=null && provincia.equals("Toledo") ? "selected" : "" %>>Toledo</option>
		</select>
	</form>
	<form name="municipios">
		Municipio: <select name="municipio">
			<%
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
					for (String municipio : municipios) {
						%>
							<option value="<%= municipio %>"><%= municipio %></option>
						<%
					}
				}
			%>
		</select>
	</form>
</body>
</html>