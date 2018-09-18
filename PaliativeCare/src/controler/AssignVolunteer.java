package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BLmanager;

/**
 * Servlet implementation class AssignVolunteer
 */
@WebServlet("/AssignVolunteer")
public class AssignVolunteer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignVolunteer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url= request.getContextPath();
		String urls = request.getQueryString();
		System.out.println("this is the input url "+url+" urls "+urls);
		String patientId = request.getParameter("id");
		String volName = request.getParameter("name");
		BLmanager obj = new BLmanager();
		obj.assignVolunteer(volName,patientId);
		response.sendRedirect("Health/listOfPatients.jsp");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
