
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.appointmentDAO;
import Model.Appointment;


/**
 * Servlet implementation class appointmentupdate
 */
@WebServlet("/appointmentupdate")
public class appointmentupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       appointmentDAO appDAO=new appointmentDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public appointmentupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  Appointment app = appDAO.findAppointment(id);
    	  request.setAttribute("app", app);
    	  this.getServletContext().getRequestDispatcher("/WEB-INF/updatepopup.jsp").forward(request, response);
    	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	  int id = Integer.parseInt(request.getParameter("id"));
    	  String name = request.getParameter("name");
    	  String email = request.getParameter("email");
    	  String date = request.getParameter("date");
    	  String time = request.getParameter("time");
    	  String service = request.getParameter("service");
    	  Appointment app = new Appointment(id, name, email, service, date, time);
    	  boolean updated = appDAO.editAppointment(app);

    	  if (updated) {
    	    response.setStatus(HttpServletResponse.SC_OK);
    	    response.getWriter().println("success"); // Send a response indicating success
    	  } else {
    	    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    	    response.getWriter().println("error"); // Send a response indicating error
    	  }
    	}


}
