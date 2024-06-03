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
        String query = "SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user as U"
        		+ "where volunteer_reg.u_id = u.u_id and"
        		+ "volunteer_reg.v_no = 0";
        
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
        String query = "SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user as U"
        		+ "where volunteer_reg.u_id = u.u_id and"
        		+ "volunteer_reg.v_no = 1";
        
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
        String query ="SELECT U.U_ID, U.U_NAME, U.U_PHONE FROM volunteer_user as U"
        		+ "where adopt_reg.u_id = u.u_id";
        
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

    private void closeResources() {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}