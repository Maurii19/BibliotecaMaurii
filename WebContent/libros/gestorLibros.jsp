<!DOCTYPE html>
<html>
<head>
<%
Object objeto = session.getAttribute("usuario");
if (objeto == null) {
	response.sendRedirect("../usuarios/loginForm.jsp");
}
%>
<meta charset="ISO-8859-1">
<title>Gestor de Biblioteca</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="../css/gestorlibros.css">
</head>
<br>
<body>
<div  class="container">
	<br>
    <div class="card flex-row flex-wrap">
    <br>
        <div class="card-header border-0">
            <img src="http://sanpedroysanfelices.es/sites/sanpedroysanfelices.es/files/libros1.jpg" height=200px; width=200px;>
        </div>
        <br>
        <div class="card-block px-2">
            <h4 class="card-title">LISTAR LIBROS</h4>
            <p class="card-text">Nos muestra la lista de los libros</p>
            <a href="listarlibros.jsp" class="btn btn-primary">Listar Libros</a>
        </div>
        <div class="w-100"></div>
    </div>
    <br>
    <div class="card flex-row flex-wrap">
        <div class="card-header border-0">
            <img src="https://i2.wp.com/www.comunidadbaratz.com/wp-content/uploads/A%C3%BAn-sin-sacar-el-listado-de-libros-m%C3%A1s-prestados-en-tu-biblioteca.jpg" height=200px; width=200px;>
        </div>
        <div class="card-block px-2">
            <h4 class="card-title">INSERTAR LIBROS</h4>
            <p class="card-text">Nos permite insertar libros</p>
            <a href="insertarlibro.jsp" class="btn btn-primary">Insertar Libros</a>
        </div>
        <div class="w-100"></div>
    </div>
    </div>
    

</body>
</html>