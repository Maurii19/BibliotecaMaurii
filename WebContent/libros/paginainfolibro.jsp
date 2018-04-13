<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="modelo.LibroModelo"%>
 <%@page import = "java.lang.*" %>
<%@ page import="modelo.*"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
LibroModelo libroModelo = new LibroModelo();
Libros libro = libroModelo.select(id);
%>

<%
Object objeto = session.getAttribute("dni");
if(objeto == null){
	response.sendRedirect("loginForm.jsp");
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Informacion de libros</title>
</head>
<body>

	<div class="container">
	<center><h2>Informacion del libro</h2></center>
	<table class="table">
	<%
	out.print("<tr><td><p class=bg-primary text-white>Titulo: " +  libro.getTitulo() + "</p></td></tr><tr><td><p class=bg-info text-white>Autor: " + libro.getAutor() + "</p></td></tr>");
	%>
</table>
	</div>
	
</body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>