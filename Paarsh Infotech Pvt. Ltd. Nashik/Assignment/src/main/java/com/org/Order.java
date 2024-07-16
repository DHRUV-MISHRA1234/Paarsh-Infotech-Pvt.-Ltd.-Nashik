package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Order extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		int ono = Integer.parseInt(request.getParameter("input1"));
		String name = request.getParameter("input2");
		String city = request.getParameter("input3");
		String pno = request.getParameter("input4");
		String mail = request.getParameter("input5");
		String ostatus = request.getParameter("input6");

		try {
//			Register the Driver Class
			Class.forName("com.mysql.cj.jdbc.Driver");

//			Establish Connection
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/paarsh", "root", "root");

//			Create Statement
			Statement stat = conn.createStatement();

//			Execute Query
			stat.executeUpdate("insert into order(ono,name,city,pno,mail,ostatus) values (" + ono + ",'" + name + "', '" + city + "','" + pno + "','" + mail + "','" + ostatus + "')");
			
			response.sendRedirect("order_data.jsp");
			
//			Close the Connection
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

