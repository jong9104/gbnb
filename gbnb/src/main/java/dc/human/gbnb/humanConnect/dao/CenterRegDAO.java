package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import dc.human.gbnb.humanConnect.dto.CenterRegDTO;

public class CenterRegDAO {
   
//   private static final String driver = "oracle.jdbc.driver.OracleDriver";

      
   private PreparedStatement pstmt;
   private Connection con;
   private DataSource dataFactory;
   
   public void addCenterReg(CenterRegDTO centerRegDTO) {
      try {
    	  Class.forName("oracle.jdbc.OracleDriver");
    	  con=DriverManager.getConnection(
	               "jdbc:oracle:thin:@192.168.0.38/xe",
	               "c##gbnb",
	               "gbnb"
	               );

         String vTitle = centerRegDTO.getvTitle();
         String vStartDate = centerRegDTO.getvStartDate();
         String vEndDate = centerRegDTO.getvEndDate();
         String vStartTime = centerRegDTO.getvStartTime();
         String vLastTime = centerRegDTO.getvLastTime();
         String vRStartDate = centerRegDTO.getvRStartDate();
         String vREndDate = centerRegDTO.getvREndDate();
         String vWorkingDay = centerRegDTO.getvWorkingDay();
         int vServiceCode = centerRegDTO.getvServiceCode();         
         int vRegAmnt = centerRegDTO.getvRegAmnt();
         String vUploadFilePath = centerRegDTO.getvUploadFilePath();
         String vInfo = centerRegDTO.getvInfo();
         
         
         
         String query = "insert into volunteer";
         query += " (V_TITLE, V_START_DATE, V_END_DATE, V_START_TIME, V_LAST_TIME, V_RSTART_DATE, V_REND_DATE, V_WORKING_DAY, SERVICE_CODE, V_MAX_AMNT, V_REG_AMNT, V_STATE, V_UPLOAD_FILE_PATH, V_INFO)";
         query += " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
         System.out.println("prepareStatement: "+query);
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, vTitle);
         pstmt.setString(2, vStartDate);
         pstmt.setString(3, vEndDate);
         pstmt.setString(4, vStartTime);
         pstmt.setString(5, vLastTime);
         pstmt.setString(6, vRStartDate);
         pstmt.setString(7, vREndDate);
         pstmt.setString(8, vWorkingDay);
         pstmt.setInt(9, vServiceCode);
         pstmt.setInt(10, 0);
         pstmt.setInt(11, vRegAmnt);
         pstmt.setInt(12, 1);
         pstmt.setString(13, vUploadFilePath);
         pstmt.setString(14, vInfo);
         
         pstmt.executeUpdate();
         pstmt.close();
      }catch(Exception e) {
         e.printStackTrace();
      }
   }

   
//   public void delMember(String id) {
//      try {
//         con = dataFactory.getConnection();
//         String query = "delete from t_member"+" where id=?";
//         System.out.println("prepareStatement: "+query);
//         pstmt = con.prepareStatement(query);
//         pstmt.setString(1, id);
//         pstmt.executeUpdate();
//         pstmt.close();
//         
//      }catch(Exception e) {
//         e.printStackTrace();
//      }
//   }
//   
//   public CenterRegDAO() {
//      try {
//         Context ctx = new InitialContext();
//         Context envContext = (Context) ctx.lookup("java:/comp/env");
//         dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
//      }catch(Exception e) {
//         e.printStackTrace();
//      }
//   }
//   
   public List listCenterReg(CenterRegDTO centerRegDTO) {
      List list = new ArrayList();
      try {
//         connDB();
    	  Class.forName("oracle.jdbc.OracleDriver");
    	  con=DriverManager.getConnection(
	               "jdbc:oracle:thin:@192.168.0.38/xe",
	               "c##gbnb",
	               "gbnb"
	               );
    	 String vTitle = centerRegDTO.getvTitle();
         String query = "select U_ID,V_TITLE,V_START_DATE,V_END_DATE,V_START_TIME,V_LAST_TIME,V_RSTART_DATE,V_REND_DATE,V_WORKING_DAY,SERVICE_CODE,V_MAX_AMNT,V_REG_AMNT,V_STATE,V_UPLOAD_FILE_PATH,V_INFO from volunteer where V_TITLE=? ";
         System.out.println("prepareStatement: "+query);
         pstmt = con.prepareStatement(query);
         pstmt.setString(1, vTitle);
         
         
         ResultSet rs = pstmt.executeQuery(query);
         while (rs.next()) {
            String id = rs.getString("id");
            String pwd = rs.getString("pwd");
            String name = rs.getString("name");
            String email = rs.getString("email");
            Date joinDate = rs.getDate("joinDate");
            CenterRegDTO vo = new CenterRegDTO();
            vo.setId(id);
            vo.setPwd(pwd);
            vo.setName(name);
            vo.setEmail(email);
            vo.setJoinDate(joinDate);
            list.add(vo);
         }
         rs.close();
         pstmt.close();
         con.close();
         } catch (Exception e) {
            e.printStackTrace();
         }
      return list;
   }
//   
//   public boolean isExisted(CenterRegDTO CenterRegDTO) {
//      boolean result = false;
//      String id = CenterRegDTO.getId();
//      String pwd = CenterRegDTO.getPwd();
//      try {
//         con = dataFactory.getConnection();
//         String query ="select decode(count(*),1,'true','false') as result from t_member";
//         query += " where id=? and pwd=?";
//         System.out.println(query);
//         pstmt = con.prepareStatement(query);
//         pstmt.setString(1, id);
//         pstmt.setString(2, pwd);
//         ResultSet rs = pstmt.executeQuery();
//         rs.next();
//         result = Boolean.parseBoolean(rs.getString("result"));
//         System.out.println("result="+result);
//
//               
//      }catch (Exception e) {
//         e.printStackTrace();
//      }
//      return result;
//   }
   
//   private void connDB() {
//      try {
//         Class.forName(driver);
//         System.out.println("Oracle 드라이버 로딩 성공");
//         con = DriverManager.getConnection(url, user, pwd);
//         System.out.println("Connection 생성 성공");
//      } catch (Exception e) {
//         e.printStackTrace();
//      }
//   }
   }
