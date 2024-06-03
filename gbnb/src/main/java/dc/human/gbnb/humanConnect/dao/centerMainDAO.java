package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class centerMainDAO {
	private Connection conn;
	public centerMainDAO() {
		try{
	         Class.forName("oracle.jdbc.OracleDriver");
	         
	         conn=DriverManager.getConnection(
	               "jdbc:oracle:thin:@192.168.0.38/xe",
	               "c##gbnb",
	               "gbnb"
	               );
	      }catch(Exception e){
	         e.printStackTrace();
	      }
	}
	
}
