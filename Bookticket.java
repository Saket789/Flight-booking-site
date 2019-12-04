package newair;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Bookticket")
public class Bookticket extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fltno = request.getParameter("flightno");
		
		PrintWriter out = response.getWriter(); 
		HttpSession session = request.getSession();
		String seats = (String)session.getAttribute("seats");
		String fromm = (String)session.getAttribute("fromm");
		String too = (String)session.getAttribute("too");
		String dat = (String)session.getAttribute("dat");
		String cls = (String)session.getAttribute("pass-cls");
		String adults = (String)session.getAttribute("adult");
		String children = (String)session.getAttribute("children");
		String infants = (String)session.getAttribute("infants");
		String passcls = null ;

		
		
		session.setAttribute("fltno", fltno);
		
		System.out.println(fromm +" "+too+" "+dat+" "+cls+" "+fltno+ " kuch nhi aaya ");
		
		// convert string to int
		int adt = Integer.parseInt(adults);
		int child = Integer.parseInt(children);
		int infant = Integer.parseInt(infants);
				
		System.out.println("seeat--> "+adults + " " + children+" "+infants );
		int j=0;
		
		System.out.println(fltno+" "+" "+cls);
		
		try {
			System.out.println(" try ");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println(" try 1 ");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");	
	    System.out.println(" try 2 ");
	    	
	    PreparedStatement ps=con.prepareStatement("select * from airline");
	    PreparedStatement ps1=con.prepareStatement("select * from airline");
	    System.out.println(" try 3 ");
	    
	    
	    // Getting value and modify it
	    String sql1 = "select * from airline where fromm=? and too=? and dat=? and fltno=? ";
	    System.out.println(" try 4 ");
	    ps1 = con.prepareStatement(sql1);
	    System.out.println(" try 5 ");
//	    ps1.setString(1, seats);
//	    ps1.setString(2, cls);
	    ps1.setString(1, fromm);
	    ps1.setString(2, too);
	    ps1.setString(3, dat);
	    ps1.setString(4, fltno);
	    
	    System.out.println(" try 6 ");
	    ResultSet rs = ps1.executeQuery();
	    System.out.println(" try 7 ");
		rs.next();
		System.out.println(" try 8 ");
		String seat = rs.getString("seat"); // to know seat
		System.out.println(" try 9 ");
				
		String price = rs.getString("price"); // to know seat
		String toff = rs.getString("toff"); // to know seat
		String tld = rs.getString("tld"); // to know seat
		
		System.out.println(" try 7 ");
		System.out.println("1 "+seat+" "+price+" "+tld+" "+toff+" llll");
		System.out.println(" try 6 ");
		
		session.setAttribute("price", price);
		session.setAttribute("tld", tld);
		session.setAttribute("toff", toff);
		
		
		
		String clsseat = rs.getString(cls);
//		String 
		
		int seat1 = Integer.parseInt(seat);	
		System.out.println("2 "+seat1);

//		int seat2 = Integer.parseInt(seats);
	    
		seat1 = seat1 - child - infant - adt ;
		seat = seat1 + "" ;
		System.out.println("3 "+seat);
//		seat = "250" ;
	    
		int clsseat1 = Integer.parseInt(clsseat);
		clsseat1 = clsseat1 - child - infant - adt ;
		passcls = clsseat1 + "" ;
		
		System.out.println(passcls + " "+ cls+" "+clsseat1);
		
		String sql,sql2 ;
		
		if(cls.equals("bisscls")) {
			sql = "Update airline set seat=? where fromm=? and too=? and dat=? and fltno=? " ;
			sql2 = "Update airline set bisscls=? where fromm=? and too=? and dat=? and fltno=? " ;
			System.out.println("bissssss");
			
		}
		else {
		    sql = "Update airline set seat=? where fromm=? and too=? and dat=? and fltno=? " ;
		    sql2 = "Update airline set ecocls=? where fromm=? and too=? and dat=? and fltno=? " ;
		    System.out.println("eccooo");
		   
		}
			
	    // Update values of seat
	    ps = con.prepareStatement(sql);
	    ps.setString(1, seat);
	    ps.setString(2, fromm);
	    ps.setString(3, too);
	    ps.setString(4, dat);
	    ps.setString(5, fltno);
	    
	    System.out.println(" asaaa ");
	    int i = ps.executeUpdate();
	    
	 // Update values of pass class
	    ps1 = con.prepareStatement(sql2);
	    ps1.setString(1, passcls);
	    ps1.setString(2, fromm);
	    ps1.setString(3, too);
	    ps1.setString(4, dat);
	    ps1.setString(5, fltno);
	    
	    System.out.println(" bbbbbb ");
	    int k = ps1.executeUpdate();
	    
	    if(i > 0)
	    {
	    out.print("Record Updated Successfully");
	    out.print(adults + " " + children+" "+infants );
	    }
	    else
	    {
	    out.print("There is a problem in updating Record.");
	    }
	    
	    if(k > 0)
	    {
	    out.print("   Record Updated Successfully");
	    out.print(adults + " " + children+" "+infants );
	    }
	    else
	    {
	    out.print("There is a problem in updating Record.");
	    }
	    
	    }
		catch(Exception e)
	    {
			System.out.println(" catch ");
	        out.println(e);
	    }
		
		
		
		RequestDispatcher rd=request.getRequestDispatcher("/booktic.jsp");
	    rd.forward(request,response);
		
	}

	//	String seatt = (String)session.getAttribute("seats");
	//int seats = Integer.parseInt(seatt);  
	//out.println("seat = " + seats + "<br>" + seatt) ;
	
//	String passcls = (String)session.getAttribute("pass-cls");
	//session.setAttribute("seats", seats);
	
}
