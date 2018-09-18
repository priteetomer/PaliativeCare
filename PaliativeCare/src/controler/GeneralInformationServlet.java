package controler;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BLmanager;
import pojo.PatientDependents;
import pojo.PatientHousemates;
import pojo.PatientInfo;
import pojo.PrimaryCarePartner;

@WebServlet("/generalInfoServlet")
public class GeneralInformationServlet extends HttpServlet {
	
	public GeneralInformationServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("patientName");
		name = name==null ? "" : name;
		String nickName=request.getParameter("nickName");
		nickName = nickName==null ? "" : nickName;
		String address=request.getParameter("address");
		String dOB=request.getParameter("dob");
		System.out.println("date from req"+dOB);
		Date dob = Date.valueOf(dOB);
		System.out.println("date from req"+dob);
		String phoneNum=request.getParameter("phoneNum");
		String email=request.getParameter("email");
		
		String uName=request.getParameter("uName");
		String password=request.getParameter("password");
		String rePassword=request.getParameter("rePassword");
		
		String relativeName=request.getParameter("relativeName");
		String relativeRelation=request.getParameter("relativeRelation");
		String relativeContact=request.getParameter("relativeContact");
		String dependentName=request.getParameter("dependentName");
		String dependentRelation=request.getParameter("dependentRelation");
		String dependentContact=request.getParameter("dependentContact");
		
		if(rePassword.equals(password)) {
			
			PatientInfo pinfo = new PatientInfo();
			BLmanager blm = new BLmanager();
			pinfo.setName(name);
			pinfo.setNickName(nickName);
			pinfo.setPhoneNum(phoneNum);
			pinfo.setAddress(address);
			pinfo.setDob(dob);
			pinfo.setEmail(email);
			pinfo.setuName(uName);
			pinfo.setPassword(password);
			blm.insert(pinfo);
			Integer patientId=blm.getPatientInfoByUname(uName, email);
			System.out.println("Patient Id:"+patientId);
			
			String pcpTable = (String)request.getParameter("hiddenPcpTableValue");
			System.out.println("------->>>>>>"+pcpTable);
			
			String[] tablerows = pcpTable.split(":::::");
			for(int i=0 ; i<tablerows.length ; i++) {
				String[] rowValues = tablerows[i].split("----");
				System.out.println(rowValues[0]+" "+rowValues[1]+" "+rowValues[2]);
				PrimaryCarePartner pcp = new PrimaryCarePartner();
				pcp.setPatientId(patientId);
				pcp.setPpname(rowValues[0]);
				pcp.setPpaddress(rowValues[1]);
				pcp.setLevelOfInvolvement(rowValues[2]);
				System.out.println("pcp data :"+rowValues[2]);
				blm.insert(pcp);
			}
			
			
			String phmTable = (String)request.getParameter("hiddenPhmTableValue");
			System.out.println("------->>>>>>"+pcpTable);
			
			String[] phmtablerows = phmTable.split(":::::");
			for(int i=0 ; i<phmtablerows.length ; i++) {
				String[] rowValues = phmtablerows[i].split("----");
				System.out.println(rowValues[0]+" "+rowValues[1]+" "+rowValues[2]);
				PatientHousemates mates = new PatientHousemates();
				mates.setPatientId(patientId);
				mates.setName(rowValues[0]);
				mates.setRelation(rowValues[1]);
				mates.setContactDetails(rowValues[2]);
				System.out.println("pcp data :"+rowValues[2]);
				blm.insert(mates);
			}
			
			
			String pdepTable = (String)request.getParameter("hiddenPdepTableValue");
			System.out.println("------->>>>>>"+pcpTable);
			
			String[] pdepTablerows = pdepTable.split(":::::");
			for(int i=0 ; i<pdepTablerows.length ; i++) {
				String[] rowValues = pdepTablerows [i].split("----");
				System.out.println(rowValues[0]+" "+rowValues[1]+" "+rowValues[2]);
				PatientDependents dep = new PatientDependents();
				dep.setPatientId(patientId);
				dep.setDname(rowValues[0]);
				dep.setDrelation(rowValues[1]);
				dep.setDcontactDetails(rowValues[2]);
				System.out.println("pcp data :"+rowValues[2]);
				blm.insert(dep);
			}
			
			
			response.sendRedirect("Health/generalInfo.jsp?msg=1");
		}
		else {
			response.sendRedirect("Health/generalInfo.jsp?msg=2");
		}
		
	}

}
