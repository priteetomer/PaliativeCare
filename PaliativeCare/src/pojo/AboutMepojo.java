package pojo;

public class AboutMepojo implements java.io.Serializable {
	
	private int id;
	private String mystory;
	private String mystrength;
	private String mostlove;
	private String mostlike;
	private String skills;
	private String myhealth;
	private String mostimp;
	private String myhope;
	private String anyelse;
	
	public AboutMepojo( String mystory,  String mystrength,
			String mostlove, String mostlike,  String skills,
			String myhealth, String mostimp, String myhope, String anyelse) {
		
		this.mystory = mystory;
		this.mystrength = mystrength;
		this.mostlove = mostlove;
		this.mostlike = mostlike;
		this.skills = skills;
		this.myhealth = myhealth;
		this.mostimp = mostimp;
		this.myhope = myhope;
		this.anyelse = anyelse;
		
	}

	public AboutMepojo() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMystory() {
		return mystory;
	}

	public void setMystory(String mystory) {
		this.mystory = mystory;
	}

	public String getMystrength() {
		return mystrength;
	}

	public void setMystrength(String mystrength) {
		this.mystrength = mystrength;
	}

	public String getMostlove() {
		return mostlove;
	}

	public void setMostlove(String mostlove) {
		this.mostlove = mostlove;
	}

	public String getMostlike() {
		return mostlike;
	}

	public void setMostlike(String mostlike) {
		this.mostlike = mostlike;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getMyhealth() {
		return myhealth;
	}

	public void setMyhealth(String myhealth) {
		this.myhealth = myhealth;
	}

	public String getMostimp() {
		return mostimp;
	}

	public void setMostimp(String mostimp) {
		this.mostimp = mostimp;
	}

	public String getMyhope() {
		return myhope;
	}

	public void setMyhope(String myhope) {
		this.myhope = myhope;
	}

	public String getAnyelse() {
		return anyelse;
	}

	public void setAnyelse(String anyelse) {
		this.anyelse = anyelse;
	}
	
}
