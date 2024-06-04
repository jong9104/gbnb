package dc.human.kimbanbagi.tableJava.servlet;

import dc.human.kimbanbagi.tableJava.dao.*;
import dc.human.kimbanbagi.tableJava.dto.*;
import java.util.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/bookList")
public class bookListServlet extends HttpServlet {
	public void init() throws ServletException {
		System.out.println("Servlet Created");
	}

	public void destroy() {
		System.out.println("Servlet Destroyed");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String userId = "test11";
		
		bookDAO dao = new bookDAO();
		List<bookDTO> bookList = dao.getBookList(userId);
		
		request.setAttribute("bookList", bookList);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userBookList.jsp");
		dispatcher.forward(request, response);
	}

}
