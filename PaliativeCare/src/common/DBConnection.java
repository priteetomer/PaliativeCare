package common;



import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public Connection getCOnnectivity() {
		
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paliative","root","");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
return con;		
	}

	
}
