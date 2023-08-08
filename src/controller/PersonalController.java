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

		user.setNickname((String)request.getParameter("nickname"));
		user.setFullname((String)request.getParameter("fullname"));
		String birthday = (String)request.getParameter("year") + "-" + (String)request.getParameter("month") + "-" + (String)request.getParameter("day");
		user.setBirthday(Date.valueOf(birthday));
		user.setOccpation((String)request.getParameter("occupation"));
		user.setField((String)request.getParameter("field"));

//		boolean requestFlag = false;
//		String hope = (String)request.getParameter("userhope");
//
//		if(hope.equals("Y")) {
//			requestFlag = true;
//		}else {
//			requestFlag = false;
//		}

		session.setAttribute("nickname", user.getNickname());
//		session.setAttribute("userhope", requestFlag);

		/*
		 * ここでサービスに接続しデータベースに保存する
		 * */

		response.sendRedirect("personalQuestion");
	}

}
