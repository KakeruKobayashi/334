package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import service.UserService;

/**
 * Servlet implementation class PersonalQuestionController
 */
@WebServlet("/personalQuestionController")
public class PersonalQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		//パーソナルアンケート結果の取得
		String question1 = (String) request.getParameter("question1");
		String question2 = (String) request.getParameter("question2");
		String question3 = (String) request.getParameter("question3");
		String question4 = (String) request.getParameter("question4");
		String question5 = (String) request.getParameter("question5");
		String question6 = (String) request.getParameter("question6");
		String question7 = (String) request.getParameter("question7");
		String question8 = (String) request.getParameter("question8");
		String question9 = (String) request.getParameter("question9");

		//ベタ打ち
		User user = new User();
		String nickname = (String)session.getAttribute("nickname");
		session.setAttribute("personalQuestionResult", user.getPersonalQuestionResult());
		//サービスに接続しデータベースに保存する
		UserService userService = new UserService();


		//アルゴリズムは要相談
		userService.updateUser(2,nickname);


		if (question9.equals("Y")) {
			response.sendRedirect("registration");
			session.removeAttribute("userhope");
			return;
		} else {
			response.sendRedirect("question");
			session.removeAttribute("userhope");
			return;
		}
	}
}