package flyaway.utils;

import flyaway.models.Booking_Data;
import java.sql.*;

public class DAO_Search {

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
	
	
	public String insert(Booking_Data booking_data) throws SQLException 
	{
		loadDriver(Const_Val.driverClassName);
		Connection con = getConnection();
		String result = "Data Entered Successfully";
		String sql = "insert into savesearch values(?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		try {
		ps.setString(1, booking_data.getFrom());	
		ps.setString(2, booking_data.getTo());
		ps.setString(3, booking_data.getDate());
		ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data Not Entered";
		}
		return result;
		
	}
	
	

}
