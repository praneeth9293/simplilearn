package flyaway.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * Servlet implementation class SearchResults
 */
@WebServlet("/ShowSearchResults")
public class ShowSearchResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 DataBaseConnection db_register = new DataBaseConnection();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		db_register.getConnection();
		
		RequestDispatcher  dispatcher = request.getRequestDispatcher("/PaymentPage.jsp");
		dispatcher.forward(request, response);
		
		

}
}
