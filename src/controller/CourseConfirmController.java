package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Course;
import service.UserCourseService;

@WebServlet("/courseConfirmController")
public class CourseConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		UserCourseService userCourseService = new UserCourseService();

		Course course = (Course) session.getAttribute("course");
		String nickname = (String) session.getAttribute("nickname");
		 String courseName = course.getCoursename();
		userCourseService.insertUserCourse(nickname, courseName);
		response.sendRedirect("home");
	}

}
