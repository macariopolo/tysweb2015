<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inspector DOM</title>
</head>
<body>
	<h1>Inspector DOM</h1>
	
	<label for="listaFicheros">Selecciona un fichero</label>
	<select id="listaFicheros">
		<%
		String contextPath=getServletContext().getContextPath();
		String completeFileName=getServletContext().getRealPath(getServletContext().getContextPath());
		completeFileName=completeFileName.substring(0, completeFileName.length()-contextPath.length());
		
		String url=request.getRequestURL().toString();
		url=url.substring(0, url.lastIndexOf('/'));

		String[] lista=new java.io.File(completeFileName).list();
		for (String s : lista)
			if (s.endsWith(".jsp") || s.endsWith(".html")) {
				%>
					<option value="<%= url + "/" + s %>"><%= s %></option>
				<%
			}
		
		%>		
	</select>
	<button type="button" onclick="mostrarDOM()">Cargar fichero y mostrar estructura</button>

	<iframe id="paginaRemota" width="100%" height="500"></iframe>

	<iframe id="resultados" width="100%" height="500"></iframe>
	
	<script>

	function mostrarDOM() {
		var ficheroSeleccionado=document.getElementById("listaFicheros").value;
		document.getElementById("paginaRemota").src=ficheroSeleccionado;
		var origen=document.getElementById("paginaRemota").contentDocument;
		var destino=document.getElementById("resultados").contentDocument;
		destino.write("<h1>Objeto Document:</h1>");
		destino.write("<ul>");
		destino.write("<li>document.doctype=" + origen.doctype + "</li>");
		destino.write("<li>document.documentURI=" + origen.documentURI + "</li>");
		destino.write("<li>document.implementation=" + origen.implementation + "</li>");
		destino.write("<li>document.lastStyleSheetSet=" + origen.lastStyleSheetSet + "</li>");
		destino.write("<li>document.styleSheets=" + origen.styleSheets + "</li>");
		destino.write("<li>document.children=" + origen.children + "</li>");
		destino.write("<li>document.childElementCount=" + origen.childElementCount + "</li>");
		destino.write("<li>document.children[0].nodeName=" + origen.children[0].nodeName + "</li>");
		destino.write("</ul>");
		
		destino.write("<h1>Algunas adiciones como objeto de tipo HTMLDocument:</h1>");
		destino.write("<ul>");
		destino.write("<li>Enlaces (document.links)=" + origen.links + "</li>");
		destino.write("<li>Nº de enlaces (document.links.length)=" + origen.links.length + "</li>");
		destino.write("</ul>");
		destino.write("<ul>");
		var enlaces=origen.links;
		for (var i=0; i<enlaces.length; i++) {
			var enlace=enlaces[i];
			destino.write("<li>" + enlace.href + "</li>");
		}
		destino.write("</ul>");
		
		destino.write("<h1>Inspección recursiva del document</h1>");
		destino.write("<ul>");
		var nodoRaiz=origen.children[0];
		inspeccionar(destino, nodoRaiz, 0);
		destino.write("</ul>");
		destino.close();
	}
	
	function inspeccionar(destino, nodo, profundidad) {
		if (nodo.nodeName!=undefined) {
			destino.write("<li>" + nodo.nodeName + " : " + nodo.nodeValue + "</li>");
			for (var i = 0; i < nodo.childNodes.length; i++) {
				var child = nodo.childNodes[i];
				destino.write("<ul>");
				inspeccionar(destino, child, profundidad+1);
				destino.write("</ul>");
			}
		}
	}
	</script>
</body>
</html>