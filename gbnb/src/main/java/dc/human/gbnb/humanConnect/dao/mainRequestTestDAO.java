package dc.human.gbnb.humanConnect.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class mainRequestTestDAO {

    private static final String DB_URL = "jdbc:oracle:thin:@192.168.0.38/xe";
    private static final String DB_USER = "c##gbnb";
    private static final String DB_PASSWORD = "gbnb";

    public mainRequestTestDAO() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            System.out.println("Driver loaded successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private Connection getConnection() throws Exception {
        System.out.println("Attempting to connect to the database...");
        Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        System.out.println("Connected to the database.");
        return con;
    }

    public List<String> getVolList() {
        List<String> list = new ArrayList<>();
        String query = "SELECT V_TITLE FROM VOLUNTEER";

        try (Connection con = getConnection(); 
             PreparedStatement pstmt = con.prepareStatement(query); 
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                list.add(rs.getString("V_TITLE"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}