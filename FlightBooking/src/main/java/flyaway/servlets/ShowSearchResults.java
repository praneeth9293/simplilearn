package flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flyaway.models.Booking_Data;
import flyaway.utils.Const_Val;
import flyaway.utils.DAO_Search;
import flyaway.utils.DataBaseConnection;

/**
 * Servlet implementation class SearchResults
 */
@WebServlet("/ShowSearchResults")
public class ShowSearchResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
			}catch(ClassNotFoundException e)
		{
				e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try 
		{
		con = DriverManager.getConnection(Const_Val.url, Const_Val.user, Const_Val.password);
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
	 DataBaseConnection db_register = new DataBaseConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 String from=null;
		 String to=null;
		 String date=null;
		PrintWriter out = response.getWriter();
		
		db_register.getConnection();
		loadDriver(Const_Val.driverClassName);
		Connection con = getConnection();
		String sql = "SELECT * from savesearch ORDER BY date DESC LIMIT 1;";
        try {
    		Statement stmt = con.createStatement();  
			ResultSet rs = stmt.executeQuery(sql);
			  while (rs.next()) 
		        {  
		             from = rs.getString("from");  
		             to = rs.getString("to"); 
		             date=rs.getString("date");
		        }    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
      System.out.println(from);
      System.out.println(to);
      System.out.println(date);
		
		RequestDispatcher  dispatcher = request.getRequestDispatcher("/RegisterUser.jsp");
		dispatcher.forward(request, response);
		
		

}
}
