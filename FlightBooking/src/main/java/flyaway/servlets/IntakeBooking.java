package flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flyaway.models.Airports;
import flyaway.models.Booking_Data;
import flyaway.utils.Const_Val;
import flyaway.utils.DAO_AirportList;
import flyaway.utils.DAO_Search;
import flyaway.utils.DataBaseConnection;


@WebServlet("/BookFlight")
public class IntakeBooking extends HttpServlet 
{
	 DataBaseConnection db_register = new DataBaseConnection();
	 
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
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Running  the doPOST");
		
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String date = request.getParameter("date");

		Booking_Data  Book_data = new Booking_Data(from, to, date);
		
		DAO_Search searchDAO = new DAO_Search();
		try {
			searchDAO.insert(Book_data);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 String from_table=null;
		 String to_table=null;
		 String date_table=null;
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
				  from_table = rs.getString("from");  
				  to_table = rs.getString("to"); 
				  date_table=rs.getString("date");
		        }    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
      System.out.println(from_table);
      System.out.println(to_table);
      System.out.println(date_table);
		

		RequestDispatcher  dispatcher = request.getRequestDispatcher("/SearchResults.jsp");
		dispatcher.forward(request, response);
	}
}
