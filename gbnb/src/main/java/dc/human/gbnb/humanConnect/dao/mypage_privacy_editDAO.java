package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import dc.human.gbnb.humanConnect.dto.*;

public class mypage_privacy_editDAO {
	private Connection conn;
	public mypage_privacy_editDAO() {
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
	
	public void privacyEdit(mypage_privacy_editDTO DTO) {
		String name=DTO.getName();
		String id=DTO.getId();
		String pw=DTO.getPw();
		String email=DTO.getEmail();
		
		try{
			String sql="UPDATE VOLUTEER_USER SET U_NAME='"+name+"', U_ID='"+id+"'";
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
