package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;

import dc.human.gbnb.humanConnect.dao.mypagePrivacyEditDAO;
import dc.human.gbnb.humanConnect.dto.UserDTO;
import dc.human.gbnb.humanConnect.dto.mypagePrivacyEditDTO;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class mypage_privacy_edit
 */
@WebServlet("/privacyEdit")
public class mypagePrivacyEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public mypagePrivacyEdit() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("user");
		request.setCharacterEncoding("utf-8");
		String newName=request.getParameter("u_name");		
		String newPwd=request.getParameter("u_pwd");
		String newPwdCheck=request.getParameter("u_pwdCheck");
		String newAddr=request.getParameter("u_addr");
		String newEmail=request.getParameter("u_email");
		String newPhone=request.getParameter("u_phone");
		
		mypagePrivacyEditDTO editDTO=new mypagePrivacyEditDTO();
		
		editDTO.setId(user.getUserId());
		editDTO.setPw(newPwd);
		editDTO.setEmail(newEmail);
		editDTO.setPhone(newPhone);
		editDTO.setAddr(newAddr);
		
		
		mypagePrivacyEditDAO editDAO=new mypagePrivacyEditDAO();
		editDAO.privacyEdit(editDTO);
		
		response.sendRedirect("mypagePrivacyEdit.jsp");
	}

}
