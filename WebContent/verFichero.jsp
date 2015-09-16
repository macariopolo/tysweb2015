<%@ page language="java" contentType="text/plain" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%
String fileName= request.getParameter("fichero");
String contextPath=getServletContext().getContextPath();
String completeFileName=getServletContext().getRealPath(getServletContext().getContextPath());

completeFileName=completeFileName.substring(0, completeFileName.length()-contextPath.length());
completeFileName+= "/" + fileName;

FileInputStream f=new FileInputStream(completeFileName);
int x;
char c;
while ((x=f.read())!=-1) {
	c=(char) x;
	if (c=='\n')
		out.print("<br>");
	else if (c=='<')
		out.print("&#60;");
	else if (c=='>')
		out.print("&#62;");
	else if (c=='\t')
		out.print("&nbsp; &nbsp; &nbsp;");
	else
		out.print(c);
}
%>
