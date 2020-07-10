<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tomcat Test Page</title>
</head>
<body>
	<h1>Tomcat is running fine!</h1>
	<%!
		int a = 10;
		int cube(int num){
		return num * num * num;	}
	%>
	<%
		int a=30,b=40,c;
		c=a+b;
		out.println("Result is"+c);
		out.println("Cube of a is"+cube(a));
	%>
	
	<%= ("The value is"+b) %>
	
	
	
</body>
</html>