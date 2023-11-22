package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import DAO.dbc;

/**
 * Servlet implementation class UpdateUtilisateur
 */
@WebServlet("/UpdateUtilisateur")
public class UpdateUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUtilisateur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateUtilisateur.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String idUser = request.getParameter("idUser");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {

			Connection connection = dbc.createConnection();

			String updateQuery = "UPDATE user SET name=?, email=?, password=? WHERE idUser=?";
			PreparedStatement statement = connection.prepareStatement(updateQuery);
			statement.setString(1, name);
			statement.setString(2, email);
			statement.setString(3, password);
			statement.setString(4, idUser);

			int rowsAffected = statement.executeUpdate();

			statement.close();
			connection.close();

			response.sendRedirect("usersList");
		} catch (SQLException e) {

			e.printStackTrace();

			/*
			 * String name = request.getParameter("name"); String email =
			 * request.getParameter("email"); int password =
			 * Integer.parseInt(request.getParameter("password"));
			 * 
			 * // int userId = Integer.parseInt(request.getParameter("idUser"));
			 * 
			 * 
			 * Connection conn = null; PreparedStatement pstmt = null;
			 * 
			 * try {
			 * 
			 * conn = dbc.createConnection();
			 * 
			 * 
			 * String sql = "UPDATE user SET name=?, email=? ,password=? WHERE idUser=?";
			 * pstmt = conn.prepareStatement(sql);
			 * 
			 * 
			 * pstmt.setString(1, name); pstmt.setString(2, email); pstmt.setInt(3,
			 * password);
			 * 
			 * 
			 * pstmt.executeUpdate();
			 * 
			 * 
			 * response.sendRedirect("listusers.jsp"); } catch (SQLException e) {
			 * e.printStackTrace(); } finally {
			 * 
			 * try { if (pstmt != null) pstmt.close(); if (conn != null) conn.close(); }
			 * catch (SQLException e) { e.printStackTrace(); } }
			 */

		}
	}
}
