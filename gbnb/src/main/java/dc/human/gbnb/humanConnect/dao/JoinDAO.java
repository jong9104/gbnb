package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dc.human.gbnb.humanConnect.dto.JoinDTO;

public class JoinDAO {
    
	private static final String url = "jdbc:oracle:thin:@192.168.0.38:1521:XE";
    private static final String user = "c##gbnb";
    private static final String password = "gbnb";
    
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    // 데이터베이스 연결을 위한 메서드
    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
		return conn;
    }

    // 유저 ID 중복 여부를 확인하는 메서드
//    public boolean isU_IdDuplicate(String U_Id) {
//        String sql = "SELECT U_ID FROM volunteer_user WHERE U_ID = ?";
//        
//        try (Connection conn = getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            
//            pstmt.setString(1, U_Id);
//            try (ResultSet rs = pstmt.executeQuery()) {
//                return rs.next();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return false;
//    }
    public boolean insertUser(JoinDTO join) {
        String sql = "INSERT INTO volunteer_user (U_ID, U_PWD, U_NAME, U_GENDER, U_BIRTH, U_ADDRESS, U_PHONE, U_EMAIL) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, join.getU_Id());
            pstmt.setString(2, join.getU_Pwd());
            pstmt.setString(3, join.getU_Name());
            pstmt.setString(4, join.getU_Sex());
            pstmt.setDate(5, java.sql.Date.valueOf(join.getU_Birth()));
            pstmt.setString(6, join.getU_Addr1());
            pstmt.setString(7, join.getU_Phone());
            pstmt.setString(8, join.getU_Email());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	if (pstmt != null) {
        		try {
        			pstmt.close();
        		} catch (SQLException e) {
        			e.printStackTrace();
        		}
        	}
        }
		return false;
    }
//    public boolean isIdDuplicated(String userId) {
//        String SQL = "SELECT U_ID FROM volunteer_user WHERE U_ID = ?";
//        try {
//            pstmt = conn.prepareStatement(SQL);
//            pstmt.setString(1, userId);
//            rs = pstmt.executeQuery();
//            if (rs.next()) {
//                return true;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return false;
//    }
}