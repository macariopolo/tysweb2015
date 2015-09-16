<%@ page language="java" contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
String fileName= request.getParameter("fichero");
String contextPath=getServletContext().getContextPath();
String completeFileName=getServletContext().getRealPath(getServletContext().getContextPath());

completeFileName=completeFileName.substring(0, completeFileName.length()-contextPath.length());
completeFileName+= "/" + fileName;

FileInputStream f=new FileInputStream(completeFileName);
int x;
char c;
String codigo="";
while ((x=f.read())!=-1) {
	c=(char) x;
	if (c=='\n')
		codigo+="<br>";
	else if (c=='<')
		codigo+="&#60;";
	else if (c=='>')
		codigo+="&#62;";
	else if (c=='\t')
		codigo+="&nbsp; &nbsp; &nbsp;";
	else if (c=='"')
		codigo+="\\\"";
	else
		codigo+=c;
}
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Se muestra el fichero <i><%= fileName %></i></h1>
	<table border="1" width="100%">
		<tr>
			<th>Resultado visual</th>
			<th>Código</th>
		</tr>
		<tr>
			<td valign="top" style="width:60%">
				<iframe id="resultado" onload="autoResize(this)" frameborder="0" src="<%=fileName %>" width="100%"></iframe>
			</td>
			<td valign="top" style="width:40%" height="100%">
				<code id="codigo"></code>
			</td>
		</tr>
	</table>
</body>

<script>
	var zonaDeCodigo=document.getElementById("codigo");
	var codigo="<%= codigo%>";
	zonaDeCodigo.innerHTML=codigo;
	
	function autoResize(i) {
	     var iframeHeight=
	     (i).contentWindow.document.body.scrollHeight;
	     (i).height=iframeHeight+20;
	   } 
</script>

</html>