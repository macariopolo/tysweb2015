<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sumar sin AJAX</title>
</head>
<body>
	<h1>Sumar sin AJAX</h1>	
	<%
	String sA=request.getParameter("a");
	String sB=request.getParameter("b");
	%>
	<form method="POST" action="sumarSinAJAX.jsp">
		a: <input type="text" name="a"><br>
		b: <input type="text" name="b"><br>
		<button onclick="submit">Sumar</button>
		<%
		int a, b;
		if (sA!=null && sB!=null) {
			a=Integer.parseInt(sA);
			b=Integer.parseInt(sB);
			out.println(a + " + " + b + " = " + (a+b));
		}
		%>
	</form>
	
</body>
</html>