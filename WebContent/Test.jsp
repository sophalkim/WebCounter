<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
</head>
<body>

<% 
	System.out.println("Evaluating Date Now"); 
	java.util.Date date = new java.util.Date();
%>
Hello! The time is now <%= date %>
<h2>The operating system installed on this computer is <%= System.getProperty("os.name") %></h2>
</body>
</html>