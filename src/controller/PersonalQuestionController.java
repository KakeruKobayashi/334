package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

/**
 * Servlet implementation class PersonalQuestionController
 */
@WebServlet("/personalQuestionController")
public class PersonalQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		//前画面から情報受け取る
		String nickname = (String) session.getAttribute("nickname");
		boolean requestFlag = (boolean) session.getAttribute("request");
		//DAOの処理？
		User user = new User();
		//ベタ打ち
		user.setPersonalQuestionResult(4);
		request.setAttribute("User", user);


		if (requestFlag) {
			response.sendRedirect("question");
		} else {
			response.sendRedirect("registration");
		}
	}
}