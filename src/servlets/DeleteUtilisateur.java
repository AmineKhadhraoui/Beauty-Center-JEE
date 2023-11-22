package servlets;

import DAO.dbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DeleteUtilisateur")
public class DeleteUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 public DeleteUtilisateur() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUser = request.getParameter("idUser");
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = dbc.createConnection();
            String query = "DELETE FROM user WHERE idUser=?";
            ps = con.prepareStatement(query);
            ps.setString(1, idUser);
            int rowsDeleted = ps.executeUpdate();
            if (rowsDeleted > 0) {
            	response.sendRedirect("usersList");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    
}
