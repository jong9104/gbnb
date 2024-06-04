package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import dc.human.gbnb.humanConnect.dto.centerMainDTO;

public class centerMainDAO {    
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;

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

    public List<centerMainDTO> getRecruitmentList() {
        List<centerMainDTO> list = new ArrayList<>();
        String query = "SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user U, volunteer_reg R"
        		+ " where r.u_id = u.u_id and"
        		+ " R.v_no = 0";
        
        try {
            pstmt = con.prepareStatement(query);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                centerMainDTO dto = new centerMainDTO();
                dto.setId(rs.getString("id"));
                dto.setName(rs.getString("name"));
                dto.setPhone(rs.getString("phone"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        
        return list;
    }

    public List<centerMainDTO> getVolunteerList() {
        List<centerMainDTO> list = new ArrayList<>();
        String query = "SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user U, volunteer_reg R"
        		+ " where R.u_id = u.u_id and"
        		+ " R.v_no = 1";
        
        try {
            pstmt = con.prepareStatement(query);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                centerMainDTO dto = new centerMainDTO();
                dto.setId(rs.getString("id"));
                dto.setName(rs.getString("name"));
                dto.setPhone(rs.getString("phone"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        
        return list;
    }

    public List<centerMainDTO> getAdoptionList() {
        List<centerMainDTO> list = new ArrayList<>();
        String query ="SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user U, adopt_reg A"
        		+ " where a.u_id = u.u_id";
        
        try {
            pstmt = con.prepareStatement(query);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
            	centerMainDTO dto = new centerMainDTO();
                dto.setId(rs.getString("id"));
                dto.setName(rs.getString("name"));
                dto.setPhone(rs.getString("phone"));
                list.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        
        return list;
    }
    public void updateStatus(String userId, int status, String rejectReason) {
        String query = "INSERT INTO ACCEPTION_RES(REG_RESULT,REJECT_RS,CREATED_DATE,CREATED_ID)"
        		+ " VALUES(?,?,sysdate,?)";

        try {
            pstmt = con.prepareStatement(query);
            pstmt.setInt(1, status);
            pstmt.setString(2, rejectReason);
            pstmt.setString(3, userId);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
    }
    
    private void closeResources() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public String getLatestRecruitmentTitle() {
        String title = "";
        String query = "SELECT V_TITLE FROM VOLUNTEER ORDER BY created_date DESC FETCH FIRST 1 ROWS ONLY";

        try {
            pstmt = con.prepareStatement(query);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                title = rs.getString("V_TITLE");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }

        return title;
    }
}