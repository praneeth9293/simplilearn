package flyaway.servlets;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import flyaway.utils.DataBaseConnection;

/**
 * Servlet implementation class Login
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  
	DataBaseConnection db_login = new DataBaseConnection();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		String username =  request.getParameter("username");
		String password = request.getParameter("password");
		
		try
		{
		db_login.getConnection();
		PreparedStatement pst=db_login.connection.prepareStatement("select * from registeredusers where username= ? and password =?");
		pst.setString(1, username);
		pst.setString(2, password);
		System.out.println("Login page");
		ResultSet rs= pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("name", rs.getString("username"));
			dispatcher = request.getRequestDispatcher("AdminPortal.jsp");
			System.out.println("Redirecting to Adminpage");
		}else {
			request.setAttribute("status", "failed");
			System.out.println("Login Failed");
			dispatcher = request.getRequestDispatcher("AdminLogin.jsp");
		}
		dispatcher.forward(request, response);
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

