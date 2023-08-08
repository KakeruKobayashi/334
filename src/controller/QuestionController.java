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
 * Servlet implementation class QuestionController
 */
@WebServlet("/questionController")
public class QuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		/*
		 * 	アンケート情報を受け取る。どういう形で保存するかはJSPなどと要相談(以下は一例)
		 * List<String> questionResult = new ArrayList<String>();
		 * questionResult.add((String)request.getParameter(""));
		 * */

		List<Course> courseResult = new ArrayList<Course>();


		//ダミーデータ
		 for (int i = 1; i <= 10; i++) {
	            Course course = new Course();
	            course.setGenre("i");
	            course.setCoursename("ダミーコース" + i);
	            courseResult.add(course);
	        }

		/*
		 * ここでサービスに接続してテーブルからアンケート結果に合うデータを取得する
		 * 	courseResult = ;
		 */

		//courseSelection.javaでこのセッションを受け取ってリクエストに入れるよう変更する
		session.setAttribute("courseResult", courseResult);
		response.sendRedirect("courseSelection");
	}

}
