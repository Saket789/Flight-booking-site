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

@WebServlet("/air")
public class air extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
{
		String from = req.getParameter("from");
		String to = req.getParameter("to");
		String dat = (String)req.getParameter("dat");
		String seatss = req.getParameter("seatss");
		String passcls = req.getParameter("passcls");
		 
		String adult = req.getParameter("adults");
		String child = req.getParameter("children");
		String infant = req.getParameter("infants");		
		
		System.out.println(from+"   "+to+"  "+dat +"  "+" "+passcls+" "+adult+" "+child+" "+infant+" asaaa ");
		
    PrintWriter out=res.getWriter();    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");
    PreparedStatement ps=con.prepareStatement("select * from airline");
    ResultSet rs=ps.executeQuery();
    HttpSession sess = req.getSession();
    sess.setAttribute("all_flights", rs);
    
    
    PreparedStatement ps1=con.prepareStatement("select * from airline where fromm = " + "'" + from +"'" +" and too = "+"'" + to+ "'" +" and dat = "+ "'" +dat+"'");
    ResultSet rs1=ps1.executeQuery();
    HttpSession sess1 = req.getSession();
    sess1.setAttribute("flights", rs1);
    
    sess1.setAttribute("fromm", from);
    sess1.setAttribute("too", to);
    sess1.setAttribute("dat", dat);
    sess1.setAttribute("pass-cls", passcls);
    sess1.setAttribute("adult", adult);
    sess1.setAttribute("children", child);
    sess1.setAttribute("infants", infant);
    
    RequestDispatcher rd=req.getRequestDispatcher("/airlinee.jsp");
    rd.forward(req,res);

    }
    catch(Exception e)
    {
        out.println(e);
    }
   }
}