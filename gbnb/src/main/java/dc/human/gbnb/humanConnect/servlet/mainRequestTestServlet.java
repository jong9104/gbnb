package dc.human.gbnb.humanConnect.servlet;

import java.io.IOException;
import java.util.List;

import dc.human.gbnb.humanConnect.dao.mainRequestTestDAO;
import dc.human.gbnb.humanConnect.dto.mainRequestTestDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/mainRequestTest")
public class mainRequestTestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doHandle(request, response);
    }

    private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8"); // 응답 인코딩 설정

        mainRequestTestDAO dao = new mainRequestTestDAO(); // DAO 객체 생성

        // DAO로부터 리스트를 가져옴
        List<String> volList = dao.getVolList(); 

        // 리스트를 요청 속성에 설정
        request.setAttribute("volList", volList);

        // 포워드 사용
        RequestDispatcher dispatcher = request.getRequestDispatcher("mainRequestTest.jsp");
        dispatcher.forward(request, response);
    }
}
