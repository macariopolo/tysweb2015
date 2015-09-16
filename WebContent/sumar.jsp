<%@ page language="java" contentType="text/plain" pageEncoding="ISO-8859-1"%>
<%
String sA=request.getParameter("a");
String sB=request.getParameter("b");
int a=0, b=0;
if (sA!=null && sB!=null) {
	a=Integer.parseInt(sA);
	b=Integer.parseInt(sB);
}
%>

<%= (a+b) %>