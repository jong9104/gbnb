package src.main.java.dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//import javax.sql.DataSource;

import src.main.java.dc.human.gbnb.humanConnect.dto.volunteerDTO;

public class volunteerListDAO {

  private Connection con;
//  private DataSource dataFactory;
  
  	public volunteerListDAO(){
  		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.0.42:1521/xe",
					"c##tableJava",
					"tableJava"
			);
			
	} catch (Exception e) {
		e.printStackTrace();
	}
  	}
  
    public List<volunteerDTO> getRegList() {
     List<volunteerDTO> regList = new ArrayList<>();
     try {
        String query = "select U_ID,V_TITLE,V_START_DATE,V_END_DATE,V_WORKING_DAY"
        					+ "from volunteer ";
        
//        System.out.println("prepareStatement: "+query);
//        pstmt.setString(1, vTitle);
        
        PreparedStatement pstmt = con.prepareStatement(query);
        ResultSet rs = pstmt.executeQuery(query);
        while (rs.next()) {
        	volunteerDTO dto = new volunteerDTO();
        	dto.setuId(rs.getString("uId"));
        	dto.setvTitle(rs.getString("vTitle"));
        	dto.setvStartDate(rs.getString("vStartDate"));
        	dto.setvEndDate(rs.getString("vEndDate"));
        	dto.setvWorkingDay(rs.getString("vWorkingDay"));
        	
        	regList.add(dto);
        	
        }
        rs.close();
        pstmt.close();
        con.close();
        } catch (Exception e) {
           e.printStackTrace();
        }
     
     return regList;
  }

}