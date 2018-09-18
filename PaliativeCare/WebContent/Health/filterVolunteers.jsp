<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="controler.filteringVols"%>
<%@page import="com.google.gson.Gson"%>
<%
	filteringVols db = new filteringVols();

	String query = request.getParameter("term");
	System.out.println(query);
	
	List<String> countries = db.getData(query);
	
	String jsonStr = new Gson().toJson(countries);
	
	System.out.println(jsonStr);
	Iterator<String> iterator = countries.iterator();
	while(iterator.hasNext()) {
		String country = (String)iterator.next();
		out.println(country);
		System.out.println(country);
	}
	response.getWriter().write(jsonStr);
	
%>
