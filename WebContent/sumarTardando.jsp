<%@ page language="java" contentType="application/json" pageEncoding="ISO-8859-1"%>
<%
String sA=request.getParameter("a");
String sB=request.getParameter("b");
int a=0, b=0;
if (sA!=null && sB!=null) {
	a=Integer.parseInt(sA);
	b=Integer.parseInt(sB);
}
out.flush();
Thread.sleep(3000);
%>

{"resultado" : "a+b=<%= (a+b) %>" }