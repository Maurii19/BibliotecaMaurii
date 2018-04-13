<%@ page import="modelo.LibroModelo"%>
<%@ page import="modelo.Libros"%>
<%@ page import="modelo.UsuarioModelo"%>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/htmL; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/insertarlibro.css">
<title>Insertar Libro</title>
</head>
<center><body>
<div class="container">
	<div class="col-md-offset-5 col-md-3">
	<h4>Insertar Libro</h4>
	<div class="form-login">
 <form action="insertar.jsp" method="post">
             
             
             <input type="text" name="titulo" class="form-control input-sm chat-input" placeholder="Titulo" />
            </br>
            <input type="text" name="autor" class="form-control input-sm chat-input" placeholder="Autor" />
            </br>
            <div class="wrapper">
            <span class="group-btn">     
              <input type="submit" value="insertar">
  <a href="insertar.jsp?titulo=&autor="></a>
    </span>
            </div>
            </form>
            </div>
</div>
</div>

</body></center>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>