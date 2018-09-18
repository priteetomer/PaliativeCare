package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BLmanager;
import pojo.FormalCarepojo;

/**
 * Servlet implementation class Formalcare
 */
@WebServlet("/formalCareServlet")
public class FormalCare extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormalCare() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname = request.getParameter("pname");
		String email = request.getParameter("email");
		String pcp = request.getParameter("pcp");
		String location = request.getParameter("location");
		String hrfec = request.getParameter("hrfec");
		String infoacc = request.getParameter("infoacc");
		BLmanager bl = new BLmanager();
		FormalCarepojo fc = new FormalCarepojo();
		fc.setPname(pname);
		fc.setEmail(email);
		fc.setPcp(pcp);
		fc.setLocation(location);
		fc.setHrfec(hrfec);
		fc.setInfoacc(infoacc);
		bl.insert(fc);
		
		response.sendRedirect("Health/FormalRes.jsp");
	}

}
