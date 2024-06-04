package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;
import java.util.List;

import dc.human.gbnb.humanConnect.dao.centerMainDAO;
import dc.human.gbnb.humanConnect.dto.centerMainDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/centerMain")
public class CenterMainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private centerMainDAO dao = new centerMainDAO(); ;

    public CenterMainServlet() {
        super();       
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        List<centerMainDTO> recruitmentList = dao.getRecruitmentList();
        List<centerMainDTO> volunteerList = dao.getVolunteerList();
        List<centerMainDTO> adoptionList = dao.getAdoptionList();

        request.setAttribute("recruitmentList", recruitmentList);
        request.setAttribute("volunteerList", volunteerList);
        request.setAttribute("adoptionList", adoptionList);

        String latestRecruitmentTitle = dao.getLatestRecruitmentTitle();
        request.setAttribute("latestRecruitmentTitle", latestRecruitmentTitle);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/centerMain.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String userId = request.getParameter("userId");

        if (action != null && userId != null) {
            if (action.equals("approve")) {
                dao.updateStatus(userId, 1, null);
            } else if (action.equals("reject")) {
                String rejectReason = request.getParameter("rejectReason");
                dao.updateStatus(userId, 2, rejectReason);
            } else if (action.equals("complete")) {
                dao.updateStatus(userId, 3,null);
            }
        }

        response.sendRedirect("centerMain");
    }
    
}
