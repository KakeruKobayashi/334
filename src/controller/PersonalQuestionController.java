package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		int question1 = Integer.parseInt(request.getParameter("question1"));
		int question2 = Integer.parseInt(request.getParameter("question2"));
		int question3 = Integer.parseInt(request.getParameter("question3"));
		int question4 = Integer.parseInt(request.getParameter("question4"));
		int question5 = Integer.parseInt(request.getParameter("question5"));
		int question6 = Integer.parseInt(request.getParameter("question6"));
		int question7 = Integer.parseInt(request.getParameter("question7"));
		String question8 = (String) request.getParameter("question8");

		String nickname = (String) session.getAttribute("nickname");
		int a = (question1 + question4 + question5 + question7);
		int b = (question2 + question3 + question6);
		int personalQuestionResult = (a > b) ? 1 : 2;
		session.setAttribute("personalQuestionResult", personalQuestionResult);
		//サービスに接続しデータベースに保存する
		System.out.println(a);
		System.out.println(b);
		UserService userService = new UserService();
		userService.updateUser(personalQuestionResult, nickname);

		if (question8.equals("Y")) {
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