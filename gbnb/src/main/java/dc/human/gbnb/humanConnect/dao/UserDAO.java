package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dc.human.gbnb.humanConnect.dto.UserDTO;

public class UserDAO {

    private Connection conn;

    public UserDAO() {
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

    public boolean validateUser(String userId, String password) {
        String query = "SELECT * FROM volunteer_user WHERE U_ID = ? AND U_PWD = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, userId);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                System.out.println("User found: " + userId);
                return true;
            } else {
                System.out.println("User not found: " + userId);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return false;
    }
    
    
    public UserDTO getUserDetails(String userId) {
        String query = "SELECT * FROM volunteer_user WHERE U_ID = ?";
        UserDTO user = null;
        
        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, userId);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                user = new UserDTO();
                user.setUserId(rs.getString("U_ID"));
                user.setName(rs.getString("U_NAME")); // 컬럼명이 대소문자 구분 없이 일치하는지 확인
                user.setPassword(rs.getString("U_PWD"));
                user.setAddr(rs.getString("U_ADDR1"));                
                user.setEmail(rs.getString("U_EMAIL"));
                user.setPhone(rs.getString("U_PHONE"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
}