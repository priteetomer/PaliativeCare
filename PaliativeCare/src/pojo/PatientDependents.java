package pojo;

public class PatientDependents {
	
	private Integer dependentId;
	private Integer patientId;
	private String dname;
	private String drelation;
	private String dcontactDetails;
	
	public Integer getDependentId() {
		return dependentId;
	}
	public void setDependentId(Integer dependentId) {
		this.dependentId = dependentId;
	}
	public Integer getPatientId() {
		return patientId;
	}
	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDrelation() {
		return drelation;
	}
	public void setDrelation(String drelation) {
		this.drelation = drelation;
	}
	public String getDcontactDetails() {
		return dcontactDetails;
	}
	public void setDcontactDetails(String dcontactDetails) {
		this.dcontactDetails = dcontactDetails;
	}
	

}
