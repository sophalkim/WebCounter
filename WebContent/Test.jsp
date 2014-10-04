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
	// System.out.println("Evaluating Date Now"); 
	java.util.Date date = new java.util.Date();
%>
Hello! The time is now <%= date %>
<h2>The operating system installed on this computer is <%= System.getProperty("os.name") %></h2>
<h3><% out.println("Using the out variable."); %></h3>

<h4>
	<% out.println("Your machine address is " + request.getRemoteHost()); %>
</h4>

<br>
<hr>

<table BORDER=2>
	<%
		int n = 5;
		for (int i = 0; i < n; i++) {
			%>
			<tr>
			<td>Number</td>
			<td><%= i + 1 %></td>
			</tr>
			<%
		}
	 %>
</table>


<br>
<hr>

<h2>Link to FileCounter</h2>
<a href="FileCounter">FileCounter</a>

<br>
<hr>

<h2>Link to jQuery</h2>
<a href="jQuery/practice.html">FileCounter</a>


</body>
</html>