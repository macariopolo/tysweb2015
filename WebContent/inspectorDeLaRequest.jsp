<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Inspector de request</title>
</head>
<body>
	<h1>Inspector de request</h1>
	
	<h2>Cabeceras recibidas:</h2>
	<ul>
	<%
		Enumeration<String> headerNames=request.getHeaderNames();
		String headerName, headerValue;
		while (headerNames.hasMoreElements()) {
			headerName=headerNames.nextElement();
			headerValue=request.getHeader(headerName);
			out.println("<li>" + headerName + " : " + headerValue + "</li>");
		}
	%>
	</ul>
	
	<h2>Parámetros</h2>
	<ul>
	<%
		Enumeration<String> parNames=request.getParameterNames();
		String parName, parValue;
		while (parNames.hasMoreElements()) {
			parName=parNames.nextElement();
			parValue=request.getParameter(parName);
			out.println("<li>" + parName + " : " + parValue + "</li>");
		}
	%>
	</ul>
	
	<h2>Codificación de caracteres: <%= request.getCharacterEncoding() %></h2>
	<h2>Método (verbo): <%= request.getMethod() %></h2>
	<h2>Protocolo: <%= request.getProtocol() %></h2>
	<h2>Recurso solicitado: <%= request.getRequestURI() %></h2>
</body>
</html>