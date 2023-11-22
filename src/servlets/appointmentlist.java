package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.appointmentDAO;


@WebServlet(name = "appointmentlist",urlPatterns = {"/appointmentlist"})
public class appointmentlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   appointmentDAO appDao=new appointmentDAO();
    public appointmentlist() {
        super();
        // TODO Auto-generated constructor stub
    }

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setAttribute("listapp", appDao.getAll());
		RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/appointmentList.jsp");
		rd .forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
