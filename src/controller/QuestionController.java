package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Course;
import service.CourseService;

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

		String genre = (String)request.getParameter("genre");
		CourseService courseService = new CourseService();

		List<Course> courseResult = courseService.selectCourse(genre);

		//courseSelection.javaでこのセッションを受け取ってリクエストに入れるよう変更する
		session.setAttribute("courseResult", courseResult);
		response.sendRedirect("courseSelection");
	}

}
