package flyaway.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import flyaway.models.Airports;

public class DAO_AirportList {
	
	public List<Airports> Airportlist() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
	    String databaseURL = "jdbc:mysql://localhost:3306/flyaway?allowPublicKeyRetrieval=true&useSSL=false";
	    String user = "root";
	    String password = "Stark@2022";
		Connection connection = DriverManager.getConnection(databaseURL, user, password);
		 List<Airports> listAirports = new ArrayList<>();

		  try{
	            String sql = "SELECT * FROM airports";
	            System.out.println("Testing DAO_AirportList");
	            Statement statement = connection.createStatement();
	            ResultSet result = statement.executeQuery(sql);
	             
	            while (result.next()) {
	                int airport_id = result.getInt("airport_id");
	                String airport_name = result.getString("airport_name");
	                Airports Airports = new Airports(airport_id, airport_name);
	               System.out.println("Enter 123");
	                System.out.println(airport_name);    
	                System.out.println("Enter 234");
	                listAirports.add(Airports);
	                
	                System.out.println(listAirports);
	                
	            }          
	             
	        } catch (SQLException ex) {
	            ex.printStackTrace();
	            throw ex;
	        }      
		 
		 return listAirports;
    }
}
