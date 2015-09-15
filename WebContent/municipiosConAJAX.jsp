<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Municipios sin AJAX</title>
<%
	String provincia=request.getParameter("provincia");
%>
<script>
function cargarMunicipios() {
	var request = new XMLHttpRequest();	
	request.open("post", "getMunicipios.jsp");
	request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	var pars="provincia=" + document.getElementById("provincia").value;
	request.onreadystatechange=function() {
		if (request.readyState==4 && request.status==200) {
			var municipios=JSON.parse(request.responseText);
			var textoOptions="";
			for (var i=0; i<municipios.length; i++) {
				textoOptions=textoOptions + "<option value='" + municipios[i] + "'>" + municipios[i] + "</option>";
			}
			var select=document.getElementById("municipio");
			select.innerHTML=textoOptions;
		}
	};
	request.send(pars);
}
</script>

</head>
<body>
	<form name="provincias" method="get">
		Provincia: <select name="provincia" id="provincia" onchange="cargarMunicipios()">
			<option value="Albacete" <%= provincia!=null && provincia.equals("Albacete") ? "selected" : "" %>>Albacete</option>
			<option value="Ciudad Real" <%= provincia!=null && provincia.equals("Ciudad Real") ? "selected" : "" %>>Ciudad Real</option>
			<option value="Cuenca" <%= provincia!=null && provincia.equals("Cuenca") ? "selected" : "" %>>Cuenca</option>	
			<option value="Guadalajara" <%= provincia!=null && provincia.equals("Guadalajara") ? "selected" : "" %>>Guadalajara</option>
			<option value="Toledo" <%= provincia!=null && provincia.equals("Toledo") ? "selected" : "" %>>Toledo</option>
		</select>
	</form>
	<form name="municipios">
		Municipio: <select id="municipio" name="municipio"></select>
	</form>
</body>
</html>