<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ejemplos de Tecnologías y Sistemas Web</title>
</head>
<body>
	<h1>Ejemplos de Tecnologías y Sistemas Web</h1>
	
	<table>
		<tr>
			<td valign="top">
				<table border="1">
					<tr><th colspan="2">Content-Type</th></tr>
					<tr>
						<th>Fichero</th><th>Ver código y resultado</th>
					</tr>
					<tr><td><a href="index.jsp">Recibir <code>Content-Type : text/html</code></a> </td>
						<td><button onclick="verCodigo('index.jsp')">Ver</button>
					</tr>
					<tr>
						<td><a href="recibirJSON.jsp">Recibir <code>Content-Type : application/json</code></a></td>
						<td><button onclick="verCodigo('recibirJSON.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirXML.jsp">Recibir <code>Content-Type : application/xml</code></a></td>
						<td><button onclick="verCodigo('recibirXML.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirContentTypeInventado.jsp">Recibir <code>Content-Type : application/meLoInvento</code></a></td>
						<td><button onclick="verCodigo('recibirContentTypeInventado.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirFalsoPNG.jsp">Recibir <code>Content-Type : img/png</code> (sin que sea una imagen)</a></td>
						<td><button onclick="verCodigo('recibirFalsoPNG.jsp')">Ver</button></td>
					</tr>		
				</table>
				
				<table border="1">
					<tr><th colspan="2">Requests y Responses</th></tr>
					<tr>
						<th>Fichero</th><th>Ver código y resultado</th>
					</tr>
					<tr><td><a href="municipiosSinAJAX.jsp">Se elige una provincia y la info. viaja al servidor en una Request normal, 
						que nos devuelve la página completa recargada</code></a> </td>
						<td><button onclick="verCodigo('municipiosSinAJAX.jsp')">Ver</button></td>
					</tr>
					<tr><td><a href="municipiosConAJAX.jsp">Se elige una provincia y la info. viaja al servidor en una XMLHttpRequest (AJAX).
						Cuando llega la respuesta, controlamos que se recargue únicamente el <code>select</code> de los municipios</a> </td>
						<td><button onclick="verCodigo('municipiosConAJAX.jsp')">Ver</button></td>
					</tr>	
				</table>
				
				<table border="1">
					<tr><th colspan="2">Elementos HTML5</th></tr>
					<tr>
						<th>Fichero</th><th>Ver código y resultado</th>
					</tr>
					<tr><td><a href="ejemploHTML5.html">Ejemplos variados</code></a> </td>
						<td><button onclick="verCodigo('ejemploHTML5.html')">Ver</button></td>
					</tr>	
				</table>
			</td>
			<td>
				<code id="zonaDeCodigo"></code>
			</td>
		</tr>
	</table>
</body>

<script>
function verCodigo(fichero) {
	window.location.href="cargarFichero.jsp?fichero=" + fichero;
}

</script>
</html>