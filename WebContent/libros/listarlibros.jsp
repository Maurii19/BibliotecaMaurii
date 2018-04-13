<%@ page import="modelo.LibroModelo"%>
<%@ page import="modelo.Libros"%>
<%@ page import="modelo.PrestamoModelo"%>
<%@ page import= "java.util.ArrayList"%>
<%@ page import= "java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
LibroModelo libroModelo = new LibroModelo();
ArrayList<Libros> libros = new ArrayList<Libros>();
libros = libroModelo.selectAll();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

(function(){
    'use strict';
	var $ = jQuery;
	$.fn.extend({
		filterTable: function(){
			return this.each(function(){
				$(this).on('keyup', function(e){
					$('.filterTable_no_results').remove();
					var $this = $(this), 
                        search = $this.val().toLowerCase(), 
                        target = $this.attr('data-filters'), 
                        $target = $(target), 
                        $rows = $target.find('tbody tr');
                        
					if(search == '') {
						$rows.show(); 
					} else {
						$rows.each(function(){
							var $this = $(this);
							$this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();
						})
						if($target.find('tbody tr:visible').size() === 0) {
							var col_count = $target.find('tr').first().find('td').size();
							var no_results = $('<tr class="filterTable_no_results"><td colspan="'+col_count+'">No results found</td></tr>')
							$target.find('tbody').append(no_results);
						}
					}
				});
			});
		}
	});
	$('[data-action="filter"]').filterTable();
})(jQuery);
</script>

<script type="text/javascript">
$(function(){
    // attach table filter plugin to inputs
	$('[data-action="filter"]').filterTable();
	
	$('.container').on('click', '.panel-heading span.filter', function(e){
		var $this = $(this), 
			$panel = $this.parents('.panel');
		
		$panel.find('.panel-body').slideToggle();
		if($this.css('display') != 'none') {
			$panel.find('.panel-body input').focus();
		}
	});
	$('[data-toggle="tooltip"]').tooltip();
})

</script>



<script>
function confirmarEliminarLibro(url)
{
	if(confirm('¿Estas seguro de que quieres eliminar el libro?'))
	{
		window.location=url;
	}
	else
	{
		return false;
	}	
}
</script>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<meta http-equiv="Content-Type" content="text/htmL; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/listarlibros.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
crossorigin="anonymous">
<title>Listado de libros</title>


</head>
<body>
<center>
<div class="container">
    	<div class="row">
			<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Libros</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Titulo</th>
								<th>Autor</th>
								<th>Eliminar</th>
								<th>Información</th>
							</tr>
						</thead>
						<tbody>
						
<% 
Iterator<Libros> i = libros.iterator();
Libros libro;
PrestamoModelo prestamoModelo = new PrestamoModelo();
while(i.hasNext()){
	libro = i.next();
	String clase;
	if(prestamoModelo.estaDisponible(libro)){
		clase = "table-success";
	}else{
		clase = "table-danger";
	}
%>
<tr class="<%=clase%>">
<td> <%=libro.getTitulo()%></td>
<td> <%=libro.getAutor() %></td>
<td>  <a href="eliminarlibro.jsp?id=<%=libro.getId()%>" onclick="return confirmarEliminarLibro()">Eliminar</a> 
<td> <a href="paginainfolibro.jsp?id=<%=libro.getId()%>">Ver ficha </a></td>
</tr>
<%
}
%>
</tbody>
</table>
</div>
</div>
</div>
</div>
</center>
</body>

</html>


							


