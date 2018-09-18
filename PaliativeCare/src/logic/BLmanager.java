package logic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import pojo.AboutMepojo;
import pojo.Attendancemaster;
import pojo.FormalCarepojo;
import pojo.Leavemaster;
import pojo.PatientDependents;
import pojo.PatientHousemates;
import pojo.PatientInfo;
import pojo.PrimaryCarePartner;
import pojo.Volunteer;



import pojo.Registration;
import pojo.Role;



import common.HibernateUtil;

public class BLmanager 
{
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	Session s = sf.openSession();
	public void insert(Registration r)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(r);
		t.commit();
	}
	public void insert(Volunteer pa)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(pa);
		t.commit();
	}
	
	public void insert(AboutMepojo am)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(am);
		t.commit();
	}
	
	public void insert(FormalCarepojo fc)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(fc);
		t.commit();
	}
	
	
	
	
	
	public void leaveinsert(Leavemaster lm)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(lm);
		t.commit();
	}
	public void attendanceinsert(Attendancemaster dv)
	{
		Transaction t = s.beginTransaction();
		
		s.save(dv);
		t.commit();
	}
	
	public Role SearchbyName(String rid)
	{
       
		
		Criteria crt=s.createCriteria(Role.class);
		
		crt.add(Restrictions.eq("role",rid));
		
		Role r =(Role)crt.uniqueResult();
		
		
		return r;
	}
	public boolean validate(String email,String pass)
	{
		Registration r = getUserByUserId(email);
		
		if(r!=null && r.getEmail().equals(email)&&r.getPassword().equals(pass))
		{
			
			return true;
		
		}
		else
		{
			return false;
		}
	}
	public Registration getUserByUserId(String email)
	{
		
			
			Transaction t  = null;
			Registration r = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from Registration where email = '"+email+"'");
				r = (Registration)qry.uniqueResult();
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}finally{
				
				//s.close();
			}
		
		return r;
	}
	
	
	
	public List<Leavemaster> Searchleaves()
	{
		Criteria crt=s.createCriteria(Leavemaster.class);
		
		@SuppressWarnings("unchecked")
		List<Leavemaster> ls=crt.list();
		
		return ls;
	}
	
	public List<Registration> SearchAllDetail()
	{
        Criteria crt=s.createCriteria(Registration.class);
		
		@SuppressWarnings("unchecked")
		List<Registration> ls=crt.list();
		
		return ls;
	}
	
	public List<Volunteer> getAllVolunteers()
	{
        Criteria crt=s.createCriteria(Volunteer.class);
		
		@SuppressWarnings("unchecked")
		List<Volunteer> ls=crt.list();
		
		return ls;
	}
	
	public List<PatientInfo> getAllPatients()
	{
        Criteria crt=s.createCriteria(PatientInfo.class);
		
		@SuppressWarnings("unchecked")
		List<PatientInfo> ls=crt.list();
		
		return ls;
	}
	
	public List<Registration> getOnlyVolunteers()
	{
		Transaction t  = null;
		Registration r = null;
		List<Registration> ls = null;
		try
		{
			t = s.getTransaction();
			t.begin();
			Query qry = s.createQuery("from Registration where RolID = 2");
			 ls = qry.list();
			t.commit();
		}
		catch(Exception e)
		{
			if(t!=null)
			{
				t.rollback();
			}
			e.printStackTrace();
		}finally{
			
			//s.close();
		}
	
	return ls;
	}
	
	public Registration SearchbyId(int id)
	{
        Criteria crt=s.createCriteria(Registration.class);
		
		crt.add(Restrictions.eq("regId",id));
		
		Registration rg =(Registration)crt.uniqueResult();
		
	
		return rg;
	}
	
	public List<Attendancemaster> AttendReport(String email , int month)
	{
		Criteria crt=s.createCriteria(Attendancemaster.class);
		crt.add(Restrictions.eq("email",email));
		crt.add(Restrictions.eq("month",month));
		//crt.setProjection(Projection.rowCount());
		@SuppressWarnings("unchecked")
		List<Attendancemaster> dv = crt.list();

		for(Attendancemaster t:dv)
		{
			System.out.println(t.getDay());
		}
		
		return dv;
	}
	
	
	public Leavemaster SearchLeave(int id)
	{
        Criteria crt=s.createCriteria(Leavemaster.class);
		
		crt.add(Restrictions.eq("id",id));
		
		Leavemaster lm =(Leavemaster)crt.uniqueResult();
		
		
		return lm;
	}
	
	public void delete(Registration rg)
	{
		Transaction t = s.beginTransaction();
		
		s.delete(rg);
		t.commit();
	}
	
	public void update(Registration r)
	{
		Transaction t = s.beginTransaction();
		
		s.update(r);
		t.commit();
	}
	
	public void updateleave(Leavemaster l)
	{
		
		Transaction t = s.beginTransaction();
		s.update(l);
		t.commit();
	}
	
	public static String getSingleValue(String q)
	{
		String ans="";
		
		try
		{
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/paliative","root","");
			
			st = con.createStatement();
			
			rs= st.executeQuery(q);
		
			if(rs.next())
			{
				ans = rs.getString(1);
			}
			rs.close();
			con.close();
		}catch(Exception E)
		{
			E.printStackTrace();
		}
if(ans==null)
	ans="0";
		
		return ans;
	}
	public void insert(PatientInfo p)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(p);
		t.commit();
	}
	
	public Integer getPatientInfoByUname(String uname,String email)
	{
			
			Transaction t  = null;
			PatientInfo pi = null;
			Integer patientId=null;
			List samplelist = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from PatientInfo where uName = '"+uname+"' and email='"+email+"'");
				samplelist = qry.list();
				pi=(PatientInfo)samplelist.get(0);
				patientId = pi.getPatientId();
				System.out.println("Patient id of the jus inserted value is :"+patientId);
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}finally{
				
				//s.close();
			}
		
		return patientId;
	}
	
	public void insert(PrimaryCarePartner p)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(p);
		t.commit();
	}
	
	public void insert(PatientHousemates p)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(p);
		t.commit();
	}
	
	public void insert(PatientDependents p)
	{
		
		Transaction t = s.beginTransaction();
		
		s.save(p);
		t.commit();
	}
	
	public PatientInfo getPatientInfoByPiD(Integer pid)
	{
			
			Transaction t  = null;
			PatientInfo pi = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from PatientInfo where patientId = '"+pid+"'");
				System.out.println("The query that is executed is: "+qry.toString());
				pi = (PatientInfo)qry.uniqueResult();
				System.out.println("The query that is executed is sdfs: "+pi.getName());
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}
		
		return pi;
	}
	
	public PrimaryCarePartner getPrimaryCarePartnerByPiD(Integer pid)
	{
			
			Transaction t  = null;
			PrimaryCarePartner pi = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from PrimaryCarePartner where patientId = "+pid);
				pi = (PrimaryCarePartner)qry.uniqueResult();
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}
		return pi;
	}
	
	public PatientHousemates getPatientHousematesByPiD(Integer pid)
	{
			
			Transaction t  = null;
			PatientHousemates pi = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from PatientHousemates where patientId = "+pid);
				pi = (PatientHousemates)qry.uniqueResult();
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}
		return pi;
	}
	
	public PatientDependents getPatientDependentsByPiD(Integer pid)
	{
			
			Transaction t  = null;
			PatientDependents pi = null;
			try
			{
				t = s.getTransaction();
				t.begin();
				Query qry = s.createQuery("from PatientDependents where patientId = "+pid);
				pi = (PatientDependents)qry.uniqueResult();
				t.commit();
			}
			catch(Exception e)
			{
				if(t!=null)
				{
					t.rollback();
				}
				e.printStackTrace();
			}
		return pi;
	}
	
	public List<PatientInfo> getAllPatientDetails()
	{
        Criteria crt=s.createCriteria(PatientInfo.class);
		
		@SuppressWarnings("unchecked")
		List<PatientInfo> ls=crt.list();
		
		return ls;
	}
	
	public void assignVolunteer(String VolName, String PatientId) {
		Transaction t=null;
		PatientDependents pi = null;
		System.out.println("values in blmanager patientId="+PatientId+" volname= "+VolName);
		String updateQuery ="update PatientInfo set assignedVol= :newVol where PatientId = :patientId";
		try
		{
			t = s.getTransaction();
			t.begin();
			
			int value = s.createQuery(updateQuery).setString("newVol", VolName).setString("patientId", PatientId).executeUpdate();
			t.commit();
		}
		catch(Exception e)
		{
			if(t!=null)
			{
				t.rollback();
			}
			e.printStackTrace();
		}
		
	}

}
