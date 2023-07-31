package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CourseComplete
 */
@WebServlet("/courseComplete")
public class CourseCompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//courseComplete.jspにフォワードする。
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSP/courseComplete.jsp");
		dispatcher.forward(request, response);
		return;

	}

}
