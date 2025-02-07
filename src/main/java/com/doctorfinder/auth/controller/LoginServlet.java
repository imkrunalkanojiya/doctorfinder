package com.doctorfinder.auth.controller;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doctorfinder.auth.model.UserDAO;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDAO userDAO = new UserDAO();
		boolean isValidUser = false;
		
		try {
			isValidUser = userDAO.loginUser(email, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isValidUser) {
			
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.setHeader("HX-Redirect", "index.jsp");
			
		}else {
			
			response.getWriter().println("Invalid Email or Password");
			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		
		response.sendRedirect("login.jsp");
		
	}
	
}