package dc.human.gbnb.humanConnect.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dc.human.gbnb.humanConnect.dto.volunteerDTO;

public class volunteerListDAO {

	private Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");

			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.38/xe", "c##gbnb", "gbnb");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
//	public static void main(String[] args) {

//	}

	public List<volunteerDTO> getVolunteers() {
		List<volunteerDTO> volunteers = new ArrayList<>();
		String query = "SELECT * FROM volunteer";

		try (Connection conn = getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery()) {

			while (rs.next()) {
				volunteerDTO volunteer = new volunteerDTO();
				volunteer.setU_id(rs.getString("U_ID"));
				volunteer.setV_title(rs.getString("V_TITLE"));
				volunteer.setV_rstart_date(rs.getString("V_START_DATE"));
				volunteer.setV_end_date(rs.getString("V_END_DATE"));
				volunteer.setV_start_time(rs.getString("V_START_TIME"));
				volunteer.setV_last_time(rs.getString("V_LAST_TIME"));
				volunteer.setV_rstart_date(rs.getString("V_RSTART_DATE"));
				volunteer.setV_rend_date(rs.getString("V_REND_DATE"));
				volunteer.setV_working_day(rs.getString("V_WORKING_DAY"));
				volunteer.setService_code(rs.getString("SERVICE_CODE"));
				volunteer.setV_max_amnt(rs.getString("V_MAX_AMNT"));
				volunteer.setV_reg_amnt(rs.getString("V_REG_AMNT"));
				volunteer.setV_state(rs.getString("V_STATE"));
				volunteer.setV_upload_file_path(rs.getString("V_UPLOAD_FILE_PATH"));
				volunteer.setV_info(rs.getString("V_INFO"));
//	                volunteer.setCreated_Date(rs.getString("CREATED_DATE"));
//	                volunteer.setCreated_Id(rs.getString("CREATED_ID"));
//	                volunteer.setUpdated_Date(rs.getString("UPDATED_DATE"));
//	                volunteer.setUpdated_Id(rs.getString("UPDATED_ID"));
				volunteers.add(volunteer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return volunteers;

	}

}