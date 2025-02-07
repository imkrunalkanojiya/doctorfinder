package com.doctorfinder.auth.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorfinder.auth.model.UserDAO;

public class UpdatePasswordServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");
        String newPassword = request.getParameter("password");

        if (isValidToken(token)) {
            
            UserDAO user = new UserDAO();
            
            // Update the password in the database
            try {
				if (user.updatePassword(token, newPassword)) {
				    response.getWriter().write("<div class='alert alert-success my-2'>Password Update Successful!</div>");
				} else {
				    response.getWriter().write("<div class='alert alert-danger my-2'>Failed to Update!</div>");
				}
			} catch (ClassNotFoundException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } else {
            response.getWriter().write("<div class='alert alert-danger my-2'>Invalid Token!</div>");
        }
    }


    // Token validation (should be improved with expiration checks)
    private boolean isValidToken(String token) {
        return ForgotPasswordServlet.userTokens.containsKey(token);
    }
}
