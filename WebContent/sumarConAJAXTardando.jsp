<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sumar con AJAX tardando</title>

</head>

<body>
	<h1>Sumar con AJAX tardando</h1>	
	<form>
		a: <input type="text" id="a" value="5"><br>
		b: <input type="text" id="b" value="4"><br>
		<button type="button" onclick="sumar()">Sumar</button>
	</form>
	<div id="resultado"></div>
	
	<script>
	function sumar() {
		var a=document.getElementById("a").value;
		var b=document.getElementById("b").value;
		var request = new XMLHttpRequest();	
		request.open("post", "sumarTardando.jsp");
		request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		var pars="a=" + a + "&b=" + b;
		request.onreadystatechange=function() {
			var divResultado=document.getElementById("resultado");
			if (request.readyState==3) {
				divResultado.innerHTML="Recibiendo datos";				
			}
			if (request.readyState==4 && request.status==200) {
				var resultado=JSON.parse(request.responseText);
				var suma=resultado.resultado;
				divResultado.innerHTML=suma;
			}
		};
		request.send(pars);
	}
	</script>
</body>
</html>