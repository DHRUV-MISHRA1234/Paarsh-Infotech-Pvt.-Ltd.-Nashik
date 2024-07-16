<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.org.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Info</title>
</head>
<body>
<%
	String pno=request.getParameter("pno");
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/paarsh","root","root");
	ps=conn.prepareStatement("delete from order where pno=?");
	ps.setString(1, pno);
	ps.executeUpdate(); 
	RequestDispatcher rd=request.getRequestDispatcher("/order_data.jsp");
	rd.include(request, response);
%>
</body>
</html>

