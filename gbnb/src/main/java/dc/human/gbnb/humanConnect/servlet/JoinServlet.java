package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String url = "jdbc:oracle:thin:@192.168.0.38:1521:XE";
    private static final String user = "c##gbnb";
    private static final String password = "gbnb";
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String u_Id = request.getParameter("u_Id");

//        JoinDAO joinDAO = new JoinDAO();
//        boolean isDuplicate = joinDAO.isU_IdDuplicate(u_Id);

        request.setCharacterEncoding("UTF-8");

        String u_Name = request.getParameter("u_Name");
        String u_Sex = request.getParameter("u_Sex");
        String u_Birth = request.getParameter("u_Birth");
        String u_Id = request.getParameter("u_Id");
        String u_Pwd = request.getParameter("u_Pwd");
        String u_PwdConfirm = request.getParameter("u_PwdConfirm");
        String u_Address = request.getParameter("u_Address");
        String u_Phone = request.getParameter("u_Phone");
        String u_Email = request.getParameter("u_Email");

        LocalDate birthDate = LocalDate.parse(u_Birth);
        
//        if (joinDAO.isU_IdDuplicate(u_Id)) {
//            request.setAttribute("message", "아이디가 중복되었습니다.");
//            request.getRequestDispatcher("join.jsp").forward(request, response);
//            return;
//        }
//        
        if (!u_Pwd.equals(u_PwdConfirm)) {
            request.setAttribute("message", "비밀번호가 일치하지 않습니다.");
            request.getRequestDispatcher("join.jsp").forward(request, response);
            return;
        }
       }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("join.jsp").forward(request, response);
    	}
   }