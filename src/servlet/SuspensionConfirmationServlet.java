package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class suspensionConfirmation
 */
@WebServlet("/suspensionConfirmation")
public class SuspensionConfirmationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//suspensionConfirmation.jspにフォワードする。
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSP/suspensionConfirmation.jsp");
		dispatcher.forward(request, response);
		return;

	}

}