package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BLmanager;
import pojo.AboutMepojo;

/**
 * Servlet implementation class AboutMe
 */
@WebServlet("/AboutMe")
public class AboutMe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AboutMe() {
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
		// TODO Auto-generated method stub
		
		String mystory = request.getParameter("mystory");
		String anyelse = request.getParameter("anyelse");
		String mostimp = request.getParameter("mostimp");
		String mostlike = request.getParameter("mostlike");
		String mostlove = request.getParameter("mostlove");
		String myhealth = request.getParameter("myhealth");
		String myhope = request.getParameter("myhope");
		String mystrength = request.getParameter("mystrength");
		String skills = request.getParameter("skills");
		
		BLmanager bl = new BLmanager();
		AboutMepojo am = new AboutMepojo();
		am.setMystory(mystory);
		am.setAnyelse(anyelse);
		am.setMostimp(mostimp);
		am.setMostlike(mostlike);
		am.setMostlove(mostlove);
		am.setMyhealth(myhealth);
		am.setMyhope(myhope);
		am.setMystrength(mystrength);
		am.setSkills(skills);
		bl.insert(am);
		
		response.sendRedirect("Health/AboutMe.jsp");
		
	}

}
