package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ContactDao;
import DAO.UserDao;

/**
 * Servlet implementation class contactlist
 */
@WebServlet("/contactlist")
public class contactlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactDao contactdao=new ContactDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contactlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("contactlist",contactdao.getAll());
		this.getServletContext().getRequestDispatcher("/WEB-INF/contactlist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
