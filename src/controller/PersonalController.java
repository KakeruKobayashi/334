package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

/**
 * Servlet implementation class PersonalController
 */
@WebServlet("/personalController")
public class PersonalController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		User user = new User();
		//JSPとパラメータ名を合わせる
		user.setNickname((String)request.getParameter(""));
		user.setFullname((String)request.getParameter(""));
		user.setBirthday(Date.valueOf((String)request.getParameter("")));
		user.setOccpation((String)request.getParameter(""));
		user.setField((String)request.getParameter(""));

		boolean requestFlag = false;
		//ラジオボタンの選択部分。ここもパラメータ名をJSPと合わせる
		if((String)request.getParameter("").equals("")) {
			requestFlag = true;
		}else {
			requestFlag = false;
		}

		session.setAttribute("nickname", user.getNickname());
		session.setAttribute("request", requestFlag);

		/*
		 * ここでサービスに接続しデータベースに保存する
		 * */

		response.sendRedirect("personalQuestion");
	}

}
