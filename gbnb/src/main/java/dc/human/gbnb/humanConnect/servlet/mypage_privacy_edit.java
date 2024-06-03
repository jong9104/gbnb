package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;

import dc.human.gbnb.humanConnect.dao.mypage_privacy_editDAO;
import dc.human.gbnb.humanConnect.dto.mypage_privacy_editDTO;
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
@WebServlet("/mypage_privacy_edit")
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
		String newPWdCheck=request.getParameter("u_pwdCheck");
		String newEmail=request.getParameter("u_email");
		
		mypage_privacy_editDTO editDTO=new mypage_privacy_editDTO();
		editDTO.setName(newName);
		editDTO.setId(newId);
		editDTO.setPw(newPwd);
		editDTO.setEmail(newEmail);
		
		mypage_privacy_editDAO editDAO=new mypage_privacy_editDAO();
		editDAO.privacyEdit(editDTO);
		
		
		
	}

}
