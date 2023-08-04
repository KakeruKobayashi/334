package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Content;

/**
 * Servlet implementation class SuspensionConfirmation
 */
@WebServlet("/contentSelection")
public class ContentSelectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		List<Content> contentList = (List<Content>) session.getAttribute("courseContent");
		request.setAttribute("courseContent", contentList);

		//contentSelection.jspにフォワードする。
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSP/contentSelection.jsp");
		dispatcher.forward(request, response);
		return;

	}

}
