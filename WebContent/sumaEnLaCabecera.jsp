<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calcula una suma y la devuelve en la cabecera</title>
</head>
<body>

	<%
	String sA=request.getParameter("a");
	String sB=request.getParameter("b");
	%>
	<form method="POST" action="sumaEnLaCabecera.jsp">
		a: <input type="text" name="a"><br>
		b: <input type="text" name="b"><br>
		<button onclick="submit">Sumar</button>
		<%
		int a, b, r;
		if (sA!=null && sB!=null) {
			a=Integer.parseInt(sA);
			b=Integer.parseInt(sB);
			r=a+b;
			response.addHeader("resultado", "" + a + " + " + b + " = "+ r);
		}
		%>
	</form>
	
	<%
		if (response.getHeader("resultado")!=null)
			out.println(response.getHeader("resultado"));
	%>
</body>
</html>