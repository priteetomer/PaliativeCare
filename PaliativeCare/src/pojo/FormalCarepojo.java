package pojo;

public class FormalCarepojo implements java.io.Serializable{
	private int id;
	private String pname;
	private String email;
	private String pcp;
	private String location;
	private String hrfec;
	private String infoacc;
	public FormalCarepojo( String pname, String email, String pcp, String location, String hrfec,
			String infoacc) {
		this.pname = pname;
		this.email = email;
		this.pcp = pcp;
		this.location = location;
		this.hrfec = hrfec;
		this.infoacc = infoacc;
	}

	public FormalCarepojo()
	{
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPcp() {
		return pcp;
	}

	public void setPcp(String pcp) {
		this.pcp = pcp;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getHrfec() {
		return hrfec;
	}

	public void setHrfec(String hrfec) {
		this.hrfec = hrfec;
	}

	public String getInfoacc() {
		return infoacc;
	}

	public void setInfoacc(String infoacc) {
		this.infoacc = infoacc;
	}
	
	

}
