package com.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String user="";
		String pass="";
		String mail="";
		
		String username=request.getParameter("name2");
		String password=request.getParameter("pass2");
		String email=request.getParameter("mail2");
		
		out.println("<h1>You are registered successfully!!</h1>");
		
	}
}
