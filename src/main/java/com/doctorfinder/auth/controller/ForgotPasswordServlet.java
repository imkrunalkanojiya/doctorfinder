package com.doctorfinder.auth.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorfinder.auth.model.UserDAO;
import com.doctorfinder.auth.utils.SendEmail;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class ForgotPasswordServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	// Simulated in-memory database to store tokens
    public static final Map<String, String> userTokens = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");

        // Simulate checking if the email exists
        try {
			if (emailExists(email)) {
			    // Generate a unique token
			    String token = UUID.randomUUID().toString();
			    // Save the token with the associated email
			    saveResetToken(email, token);
			    // Send the reset email with the token
			    sendResetEmail(email, token);
			    response.getWriter().write("<div class='alert alert-success my-2'>Reset link sent to your email</div>");
			} else {
			    response.getWriter().write("<div class='alert alert-danger my-2'>Invalid Email</div>");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    // Simulate email existence check (this should be replaced by a real database check)
    private boolean emailExists(String email) throws ClassNotFoundException, SQLException {

    	UserDAO userDAO = new UserDAO();
    	
        return userDAO.isPatientExistsCheck(email);
    }

    // Simulate saving the reset token (this should be replaced with real database logic)
    private void saveResetToken(String email, String token) {
        userTokens.put(token, email);
    }

    // Simulate sending a reset email (replace with real email sending logic)
    private void sendResetEmail(String email, String token) {
        String resetLink = "http://localhost:8080/doctorfinder/reset-password?token=" + token;
        
        SendEmail mail = new SendEmail();
        
        boolean isMailSent = false;
        
        isMailSent = mail.resetPassword(email, resetLink);
        if(isMailSent) {        	
        	System.out.println("Sending email to " + email + " with reset link: " + resetLink);
        	
        }else {
        	System.out.println("Mail not send error");
        }
        
        // Actual email logic can be implemented using libraries like JavaMail
    }
}