package jav;

//import com.mysql.jdbc.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

public class Logindao {

	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root" ;
	String password = "mysql" ;
	public boolean check(String uname,String pass)
	{		
		String sql = "select * from userdata where uname=? and pass=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1,uname);
			pst.setString(2,pass);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				System.out.println("asasasas");
				 
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return false;
		
	}	
}
