package pojo;

import java.sql.Date;

public class PatientInfo implements java.io.Serializable {
	
	Integer patientId;
	String name;
	String nickName;
	String address;
	Date dob;
	String phoneNum;
	String email;
	String uName;
	String password;
	String percentComplete;
	String assignedVol;
	
	public PatientInfo() {
		
	}
	
	public PatientInfo(String name,String nickName,String address,Date dob,String phoneNum,String email, String uName, String password, String percentComplete, String assignedVol) {
		this.name = name;
		this.nickName = nickName;
		this.address = address;
		this.dob = dob;
		this.phoneNum = phoneNum;
		this.email = email;
		this.uName = uName;
		this.password = password;
		this.percentComplete = percentComplete;
		this.assignedVol = assignedVol;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getPatientId() {
		return patientId;
	}

	public void setPatientId(Integer patientId) {
		this.patientId = patientId;
	}

	public String getPercentComplete() {
		return percentComplete;
	}

	public void setPercentComplete(String percentComplete) {
		this.percentComplete = percentComplete;
	}

	public String getAssignedVol() {
		return assignedVol;
	}

	public void setAssignedVol(String assignedVol) {
		this.assignedVol = assignedVol;
	}

}
