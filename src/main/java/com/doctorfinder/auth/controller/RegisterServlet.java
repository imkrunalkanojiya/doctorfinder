package com.doctorfinder.auth.controller;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorfinder.auth.model.UserDAO;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDAO userDAO = new UserDAO();
		boolean isRegistered = false;
		try {
			isRegistered = userDAO.registerUser(name, email, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (isRegistered) {
			response.getWriter().println(
					"<div class='alert alert-success my-2'>Registration successful! <a href='login.jsp'>Login here</a></div>");
		} else {
			response.getWriter()
					.println("<div class='alert alert-danger my-2'>Registration failed. Please try again.</div>");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}
}