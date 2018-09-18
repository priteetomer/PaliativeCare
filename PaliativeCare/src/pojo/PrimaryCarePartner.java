package pojo;

public class PrimaryCarePartner {
	
	private Integer primaryCareId;
	private Integer patientId;
	private String ppname;
	private String ppaddress;
	private String levelOfInvolvement;
	
	public PrimaryCarePartner() {
		}
	
	public String getPpname() {
		return ppname;
	}

	public void setPpname(String ppname) {
		this.ppname = ppname;
	}

	public String getPpaddress() {
		return ppaddress;
	}

	public void setPpaddress(String ppaddress) {
		this.ppaddress = ppaddress;
	}

	public String getLevelOfInvolvement() {
		return levelOfInvolvement;
	}

	public void setLevelOfInvolvement(String levelOfInvolvement) {
		this.levelOfInvolvement = levelOfInvolvement;
	}

	public Integer getPrimaryCareId() {
		return primaryCareId;
	}

	public void setPrimaryCareId(Integer primaryCareId) {
		this.primaryCareId = primaryCareId;
	}

	public Integer getPatientId() {
		return patientId;
	}

	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}

}
