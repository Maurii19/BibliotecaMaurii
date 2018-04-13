<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.*"%>
<%
	String dni = request.getParameter("dni");
	String password = request.getParameter("password");
	UsuarioModelo modeloUsuario = new UsuarioModelo();
	Usuario usuario = modeloUsuario.selectPorDni(dni);
	if (usuario != null && password.equals(usuario.getPassword())) {
		session.setAttribute("dni", usuario.getDni());
		response.sendRedirect("../index.html");
	} else {
		response.sendRedirect("loginForm.jsp");
	}
%>