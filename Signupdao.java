package jav;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class Signupdao {
	
	String name = null ;
	String passw = null ;

	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root" ;
	String password = "mysql" ;	
	
//	PrintWriter out = response.getWriter(); 
	
	public void set(String uname,String mob,String email,String pass,String name,String dob,String add ){
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		String sql = "insert into userdata values('" + uname + "','" + pass + "','" + name + "','" + mob + "','" + email + "','" + dob + "','" + dob + "','" + add + "') ";	
//		String sql = "insert into loginn values('?','?') ";	
		PreparedStatement ps1 = con.prepareStatement(sql);	// inserting
		int k = ps1.executeUpdate(sql);				   //  inserting

		
		

//		stmt.executeUpdate(sql);
//		rs.next();
		
		 if(k > 0)
		    {
		    System.out.print("Record Updated Successfully");
//		    System.out.print("" );
		    }
		    else
		    {
		    System.out.print("There is a problem in updating Record.");
		    }
		 
		}
		catch (Exception e) {
		
		e.printStackTrace();
		}
	}
	
}
