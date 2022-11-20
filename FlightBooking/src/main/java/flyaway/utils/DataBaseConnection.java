package flyaway.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
	
   public Connection connection = null;
	
	public Connection getConnection()
	{
	try
		{
		Class.forName(Const_Val.driverClassName);		
		connection = DriverManager.getConnection(Const_Val.url, Const_Val.user, Const_Val.password);	
		}catch(ClassNotFoundException e)
		{
	        e.printStackTrace();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return connection;
	}

}
