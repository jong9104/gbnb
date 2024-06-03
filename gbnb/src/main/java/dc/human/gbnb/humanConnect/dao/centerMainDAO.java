package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import dc.human.*;
import dc.human.gbnb.humanConnect.dto.centerMainDTO;

import javax.sql.DataSource;

public class centerMainDAO {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";

    
	   private PreparedStatement pstmt;
	   private Connection con;
	   private DataSource dataFactory;
	   
	public centerMainDAO() {
		try{
	         Class.forName("oracle.jdbc.OracleDriver");
	         
	         con=DriverManager.getConnection(
	               "jdbc:oracle:thin:@192.168.0.38/xe",
	               "c##gbnb",
	               "gbnb"
	               );
	      }catch(Exception e){
	         e.printStackTrace();
	      }
	}
	public List listRecruit() {
		   List list = new ArrayList();	  
		   try {
			   con = dataFactory.getConnection();
			   String query = "select * from volunteer_reg order by joinDate desc " ;		   
			   System.out.println("prepareStatement : " + query);
			   pstmt = con.prepareStatement(query);
			   ResultSet rs = pstmt.executeQuery();
			   while (rs.next()) {
				   String id = rs.getString("id");
				   String pwd = rs.getString("pwd");
				   String name = rs.getString("name");
				   String email = rs.getString("email");
				   Date joinDate = rs.getDate("joinDate");
				   centerMainDTO dto = new centerMainDTO();
				   dto.setId(id);
				   dto.setPwd(pwd);
				   dto.setName(name);
				   dto.setEmail(email);
				   dto.setJoinDate(joinDate);
				   list.add(dto);			   
			   }
			   rs.close();
			   pstmt.close();
			   con.close();
		   } catch (Exception e) {
			   e.printStackTrace();
		   }
		   return list;
	   }
}
