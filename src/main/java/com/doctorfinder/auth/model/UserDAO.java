package com.doctorfinder.auth.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.doctorfinder.auth.controller.ForgotPasswordServlet;

public class UserDAO {

	// DB Connectivity
	public Connection connect() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/doctorfinder";
		String username = "root";
		String password = "";

		return DriverManager.getConnection(url, username, password);
	}

	// Register Patients
	public boolean registerUser(String name, String email, String password) throws ClassNotFoundException {
		try (Connection con = connect()) {
			String query = "INSERT INTO patients (name, email, password) VALUES (?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	// Login Patients
	public boolean loginUser(String email, String password) throws ClassNotFoundException {

		try (Connection con = connect()) {

			String query = "SELECT * FROM patients WHERE email = ? AND password = ?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			return rs.next();

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

		}
	}

	// Forgot Password User Check

	public boolean isPatientExistsCheck(String email) throws ClassNotFoundException, SQLException {

		try (Connection con = connect()) {

			String query = "SELECT * FROM patients WHERE email = ?";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();

			System.out.println(rs);

			return rs.next();

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

		}

	}

	// Update Password

	public boolean updatePassword(String token, String hashedPassword) throws ClassNotFoundException {
		String email = ForgotPasswordServlet.userTokens.get(token);
		if (email != null) {
			// Create the SQL query to update the password
			try (Connection connection = connect()) {
				String sql = "UPDATE patients SET password = ? WHERE email = ?";
				PreparedStatement statement = connection.prepareStatement(sql);

				// Set the hashed password and the user's email
				statement.setString(1, hashedPassword);
				statement.setString(2, email);

				int rowsUpdated = statement.executeUpdate();
				if (rowsUpdated > 0) {
					// Remove the token after the password is updated
					ForgotPasswordServlet.userTokens.remove(token);
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}