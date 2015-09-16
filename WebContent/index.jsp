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
						<th>Descripción</th><th>Ver código y resultado</th>
					</tr>
					<tr><td><a href="index.jsp">Recibir <code>Content-Type : text/html</code></a> </td>
						<td><button type="button" onclick="verCodigo('index.jsp')">Ver</button>
					</tr>
					<tr>
						<td><a href="recibirJSON.jsp">Recibir <code>Content-Type : application/json</code></a></td>
						<td><button type="button" onclick="verCodigo('recibirJSON.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirXML.jsp">Recibir <code>Content-Type : application/xml</code></a></td>
						<td><button type="button" onclick="verCodigo('recibirXML.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirContentTypeInventado.jsp">Recibir <code>Content-Type : application/meLoInvento</code></a></td>
						<td><button type="button" onclick="verCodigo('recibirContentTypeInventado.jsp')">Ver</button></td>
					</tr>	
					<tr>
						<td><a href="recibirFalsoPNG.jsp">Recibir <code>Content-Type : img/png</code> (sin que sea una imagen)</a></td>
						<td><button type="button" onclick="verCodigo('recibirFalsoPNG.jsp')">Ver</button></td>
					</tr>		
				</table>
				
				<table border="1">
					<tr><th colspan="3">Requests y Responses</th></tr>
					<tr>
						<th>Fichero</th><th>Descripción</th><th>Ver código y resultado</th>
					</tr>
					<tr>
						<td><a href="sumarSinAJAX.jsp">sumarSinAJAX.jsp</a></td>
						<td>Se escriben 2 números <i>a</i> y <i>b</i>. La info. viaja al servidor en una Request normal, 
						que nos devuelve la página completa recargada con la suma <i>a+b</i>. 
						</td>
						<td><button type="button" onclick="verCodigo('sumarSinAJAX.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td><a href="sumarConAJAX.jsp">sumarConAJAX.jsp</a>
						<td>Se escriben 2 números <i>a</i> y <i>b</i>. La info. viaja al servidor en una XMLHttpRequest, 
						que escribe la suma <i>a+b</i> en un lugar concreto de la página. El resultado lo devuelve 
						<code>sumar.jsp</code> en texto plano.</td>
						<td><button type="button" onclick="verCodigo('sumarConAJAX.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td><a href="sumar.jsp">sumar.jsp</a>
						<td>Script de servidor que recibe los valores <i>a</i> y <i>b</i> de <code>sumarConAjax.jsp</code>.</td>
						<td><button type="button" onclick="verCodigo('sumar.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td style="background:blue" colspan="3">
					</td>
					<tr>
						<td><a href="sumarConAJAXTardando.jsp">sumarConAJAXTardando.jsp</a></td>
						<td>Muy parecido a sumarConAJAX.jsp. En este caso, el servidor devuelve el resultado como application/json y, además, 
						hace una pausa de 3 segundos antes de enviarnos
						el resultado. En la función Javascript <code>suma()</code>, se va mostrando el cambio de estado </td>
						<td><button type="button" onclick="verCodigo('sumarConAJAX.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td><a href="sumarTardando.jsp">sumarTardando.jsp</a></td>
						<td>Script de servidor que recibe los valores <i>a</i> y <i>b</i> de sumarConAJAXTardando.jsp</td>
						<td><button type="button" onclick="verCodigo('sumarTardando.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td style="background:blue" colspan="3">
					</td>
					<tr>
						<td><a href="municipiosSinAJAX.jsp">municipiosSinAJAX.jsp</a></td>
						<td>Se elige una provincia y la info. viaja al servidor en una Request normal, 
						que nos devuelve la página completa recargada</td>
						<td><button type="button" onclick="verCodigo('municipiosSinAJAX.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td><a href="municipiosConAJAX.jsp">municipiosConAJAX.jsp</a></td>
						<td>Se elige una provincia y la info. viaja al servidor en una XMLHttpRequest.
						Cuando llega la respuesta, controlamos que se recargue únicamente el <code>select</code> de los municipios. 
						Observa que el rellenado del <code>select</code> de los municipios se hace concatenando cadenas.</td>
						<td><button type="button" onclick="verCodigo('municipiosConAJAX.jsp')">Ver</button></td>
					</tr>
					<tr>
						<td><a href="getMunicipios.jsp">getMunicipios.jsp</a></td>
						<td>Este Script recibe la petición de cargar los municipios de la provincia indicada en 
							<code>municipiosConAJAX.jsp</code>, los carga y devuelve los resultados en JSON.</td>
						<td><button type="button" onclick="verCodigo('getMunicipios.jsp')">Ver</button></td>
					</tr>	
				</table>
				
				<table border="1">
					<tr><th colspan="2">Elementos HTML5</th></tr>
					<tr>
						<th>Fichero</th><th>Ver código y resultado</th>
					</tr>
					<tr><td><a href="ejemploHTML5.html">Ejemplos variados</code></a> </td>
						<td><button type="button" onclick="verCodigo('ejemploHTML5.html')">Ver</button></td>
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