package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;

import dc.human.gbnb.humanConnect.dao.mypagePrivacyEditDAO;
import dc.human.gbnb.humanConnect.dto.mypagePrivacyEditDTO;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mypage_privacy_edit
 */
@WebServlet("/privacyEdit")
public class mypage_privacy_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public mypage_privacy_edit() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String newName=request.getParameter("u_name");
		String newId=request.getParameter("u_id");
		String newPwd=request.getParameter("u_pwd");
		String newPwdCheck=request.getParameter("u_pwdCheck");
		String newAddr=request.getParameter("u_addr");
		String newEmail=request.getParameter("u_email");
		String newPhone=request.getParameter("u_phone");
		
		mypagePrivacyEditDTO editDTO=new mypagePrivacyEditDTO();
		
		
		editDTO.setPw(newPwd);
		editDTO.setEmail(newEmail);
		editDTO.setPhone(newPhone);
		editDTO.setAddr(newAddr);
		
		
		mypagePrivacyEditDAO editDAO=new mypagePrivacyEditDAO();
		editDAO.privacyEdit(editDTO);
		
		
		
	}

}
