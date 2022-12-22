<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rodrigo Pereyra</title>
</head>
<body>



<%

	String nombre = request.getParameter("nombre");
	String apellido =request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_final","root","");
		Statement stm = cn.createStatement();
		
		stm.executeUpdate("INSERT INTO ticket(nombre,apellido,mail,cantidad,categoria) VALUES ('"+ nombre +"','"+ apellido +"','"+ mail +"','"+ cantidad +"','"+ categoria +"')");
		
	}catch(Exception e){
		out.print("ERROR AL CARGAR LA BASE DE DATOS");
	}



%>

<jsp:include page ="ticket.jsp"></jsp:include>

</body>
</html>