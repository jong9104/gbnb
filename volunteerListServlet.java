package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;
import java.util.List;

import dc.human.gbnb.humanConnect.dao.volunteerListDAO;
import dc.human.gbnb.humanConnect.dto.volunteerDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/volunteerList")
public class volunteerListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        volunteerListDAO dao = new volunteerListDAO();
        List<volunteerDTO> volunteerList = dao.getVolunteers();
        
        request.setAttribute("volunteerList", volunteerList);
        request.getRequestDispatcher("/volunteerList.jsp").forward(request, response);
    }
}