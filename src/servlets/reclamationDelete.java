package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;

/**
 * Servlet implementation class reclamationDelete
 */
@WebServlet("/reclamationDelete")
public class reclamationDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserDao recDAO = new UserDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reclamationDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int Id = Integer.parseInt(request.getParameter("Id"));
        boolean deleted = recDAO.DeleteReclamation(Id);
        if (deleted) {
            response.setStatus(HttpServletResponse.SC_OK);
        } 
        else 
        {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
        response.sendRedirect("admin");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
