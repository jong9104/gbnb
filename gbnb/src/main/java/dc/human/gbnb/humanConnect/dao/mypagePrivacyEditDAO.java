package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import dc.human.gbnb.humanConnect.dto.mypagePrivacyEditDTO;

public class mypagePrivacyEditDAO {
	private Connection conn;
	public mypagePrivacyEditDAO() {
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
	
	public void privacyEdit(mypagePrivacyEditDTO DTO) {
		String name=DTO.getName();
		String id=DTO.getId();
		String pw=DTO.getPw();
		String email=DTO.getEmail();
		String phone=DTO.getPhone();
		String addr=DTO.getPhone();
		
		try{
			String sql="UPDATE VOLUNTEER_USER "
					+ "SET U_PWD='"+pw+"', U_EMAIL='"+email+"' , U_PHONE='"+phone+"'"
					+ "WHERE U_ID='"+id+"'";
			
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.executeQuery();
			
			System.out.println("행이 변경됨.");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		
	}
	
}
