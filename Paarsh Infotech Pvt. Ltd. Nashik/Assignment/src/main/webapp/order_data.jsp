<%@ page import="com.org.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<style>
.order {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

.order td, .customer th {
  border: 1px solid #ddd;
  padding: 8px;
}

.order tr:nth-child(even){background-color: #f2f2f2;}

.order tr:hover {background-color: #ddd;}

.order th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<center>
<table class="order">
<tr>
<th>Order Number</th>
<th>Name</th>
<th>City</th>
<th>Phone Number</th>
<th>Email</th>
<th>Payment Status</th>
<th>Delete</th>
</tr>
<%
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
    try {
        conn = ConnectionProvider.getCon();
        st = conn.createStatement();
        rs = st.executeQuery("SELECT * FROM order");
        while(rs.next()) {
%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><a href="deleteOrder.jsp?pno=<%= rs.getString(1) %>" class="btn">Delete</a></td>
</tr>
<%
        }
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>
