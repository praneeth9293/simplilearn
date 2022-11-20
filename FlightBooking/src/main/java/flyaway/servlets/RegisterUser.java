package flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flyaway.utils.Const_Val;
import flyaway.utils.DataBaseConnection;

/**
 * Servlet implementation class RegisterUser
 */
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    DataBaseConnection db_register = new DataBaseConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		
		String username  = request.getParameter("name");
		String password = request.getParameter("password");
		String mail = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		RequestDispatcher dispatcher = null;
		try {
			db_register.getConnection();
			PreparedStatement pst = db_register.connection.prepareStatement("insert into registeredusers(username,password,mail,mobile) values(?,?,?,?) ");
			pst.setString(1, username);
			pst.setString(2, password);
			pst.setString(3, mail);
			pst.setString(4, mobile);
			
			int rowCount= pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount>0)
			{
				request.setAttribute("status", "success");
			}else
			{
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		}catch (Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				db_register.connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
		
		
		
		
	}

}
