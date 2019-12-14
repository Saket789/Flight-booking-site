package jav;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import login.LoginDao;

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uname = request.getParameter("uname");
		String mob = request.getParameter("mob");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String name = request.getParameter("namee");
		String dob = request.getParameter("dob");
		String add = request.getParameter("address");
		 
		if(uname.equals(""))
			response.sendRedirect("signup.jsp");
		
		
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);
		session.setAttribute("mob", mob);
		session.setAttribute("email", email);
		session.setAttribute("name", name);
		session.setAttribute("dob", dob);
		session.setAttribute("add", add);
		
		
		if(!uname.equals(""))
		{
		Signupdao  dow = new Signupdao();	
		dow.set(uname,mob,email,pass,name,dob,add);
		}
		
		if(!uname.equals(""))
		response.sendRedirect("login.jsp");
		
	}

}
