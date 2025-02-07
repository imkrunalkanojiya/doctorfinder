package com.doctorfinder.auth.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResetPasswordServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");

        // Simulate token validation
        if (isValidToken(token)) {
            // If the token is valid, show the reset password form
            request.setAttribute("token", token);
            request.getRequestDispatcher("/reset-password.jsp").forward(request, response);
        } else {
            response.getWriter().write("<p>Invalid or expired token.</p>");
        }
    }

    // Simulate token validation (this should be replaced with real database logic)
    private boolean isValidToken(String token) {
        return ForgotPasswordServlet.userTokens.containsKey(token);
    }
}