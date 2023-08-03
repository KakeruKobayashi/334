package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Course;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/registrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		//ここはJSP側とパラメータ名を合わせる
		String jenre = (String)request.getParameter("");
		String qualification = (String)request.getParameter("");

		List<Course> courseResult = new ArrayList<Course>();

		/*
		 * ここでサービスからデータベースに接続して、上の条件に合ったデータを取得する
		 * courseResult = ;
		 */

		session.setAttribute("courseResult", courseResult);
		response.sendRedirect("courseSelection");
	}
}
