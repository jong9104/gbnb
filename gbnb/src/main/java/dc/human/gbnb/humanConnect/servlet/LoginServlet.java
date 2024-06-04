package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;
import dc.human.gbnb.humanConnect.dao.UserDAO;
import dc.human.gbnb.humanConnect.dto.UserDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        
        UserDAO dao = new UserDAO();
        boolean isValidUser = dao.validateUser(userId, password);
        
        if (isValidUser) {
            HttpSession session = request.getSession();
            UserDTO user = dao.getUserDetails(userId);
            session.setAttribute("user", user);
            response.sendRedirect("mypagePrivacyCheck.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}