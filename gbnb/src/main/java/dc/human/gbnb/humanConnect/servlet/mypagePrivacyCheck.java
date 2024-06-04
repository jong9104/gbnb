package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/mypagePrivacyCheck")
public class mypagePrivacyCheck extends HttpServlet {
   
	public mypagePrivacyCheck() {
		super();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
	}
	
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//        request.setCharacterEncoding("utf-8");
//		String newName = request.getParameter("u_name");
//		String newId = request.getParameter("u_id");
//		String newPwd = request.getParameter("u_pwd");
//		String newAddr = request.getParameter("u_addr");
//		String newEmail = request.getParameter("u_email");
//		String newPhone = request.getParameter("u_phone");

	
		response.sendRedirect("mypagePrivacyCheck");
	}
}
    
    
    
    
    
    
    
    

