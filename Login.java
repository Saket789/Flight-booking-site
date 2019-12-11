package jav;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		Logindao  dao = new Logindao();		
		
		if(dao.check(uname, pass)) 
		{
			HttpSession session = request.getSession();
			session.setAttribute("username", uname);
			System.out.println("pppppppp");
			response.sendRedirect("index.html");
		}
		else 
		{
			response.sendRedirect("login.jsp");
			System.out.println(uname + " iiiiiii "+ pass );
		}		
	}

}
//if(t1 == s2)
//	out.println(t1+"<br>");
//	else{
//		out.println(t1+"<br><br>" + t1.getClass().getName() + " " + rs.getString(2).getClass().getName());
//	