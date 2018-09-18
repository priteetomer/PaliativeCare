package controler;

import java.io.IOException;
import java.util.List;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AutoCompleteServlet", urlPatterns = {"/AutoCompleteServlet"})
public class AutoCompleteServlet extends HttpServlet {
	
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");

	        String term = request.getParameter("term");
	        String q = term.toLowerCase();

	        filteringVols db = new filteringVols();

	    	List<String> countries = db.getData(q);
	    	
	    	String jsonStr = new Gson().toJson(countries);
	    	
	    	System.out.println(jsonStr);
	    	
	        response.getWriter().write(jsonStr);
	    }
	    
	   

}
