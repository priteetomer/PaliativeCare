package pojo;

public class PatientHousemates {
	
	private Integer housemateId;
	private Integer patientId;
	private String name;
	private String relation;
	private String contactDetails;
	
	public PatientHousemates() {
		
	}

	public Integer getHousemateId() {
		return housemateId;
	}

	public void setHousemateId(Integer housemateId) {
		this.housemateId = housemateId;
	}

	public Integer getPatientId() {
		return patientId;
	}

	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getContactDetails() {
		return contactDetails;
	}

	public void setContactDetails(String contactDetails) {
		this.contactDetails = contactDetails;
	}

}
