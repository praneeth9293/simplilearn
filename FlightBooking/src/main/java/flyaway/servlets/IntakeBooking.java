package flyaway.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flyaway.models.Airports;
import flyaway.models.Booking_Data;
import flyaway.utils.DAO_AirportList;
import flyaway.utils.DAO_Search;


@WebServlet("/BookFlight")
public class IntakeBooking extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
	{
		System.out.println("Running  the doGetCall");
		airportList(request, response);
	
    }
	
	protected void airportList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("Running  the method");
		DAO_AirportList dao = new DAO_AirportList();
		try {
	 	// Get data from database
		 List<Airports> airportList= dao.Airportlist();
		 request.setAttribute("listAirports", airportList);
		 
		//Redirect to a search results page
		RequestDispatcher  dispatcher = request.getRequestDispatcher("/SearchResults.jsp");
		dispatcher.forward(request, response);

	}catch(SQLException | ClassNotFoundException e)
	     {
        e.printStackTrace();
        throw new ServletException(e);
	     }
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

		RequestDispatcher  dispatcher = request.getRequestDispatcher("/SearchResults.jsp");
		dispatcher.forward(request, response);
	    //airportList(request, response);
	}
}
