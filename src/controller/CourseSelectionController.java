package controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Course;

/**
 * Servlet implementation class CourseSelectionController
 */
@WebServlet("/courseSelectionController")
public class CourseSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		// 選択したコースの情報を取得します。
		String selectedCourseName = (String) request.getParameter("learningCourse");
		//int selectedCategory = Integer.parseInt(request.getParameter("item.category"));
		//course.setExamdate(Date.valueOf((String)request.getParameter("")));

		List<Course> courseList =(List<Course>) session.getAttribute("courseResult");

		courseList = courseList.stream()
		        .filter(item -> item.getCoursename().equals(selectedCourseName))
		        .collect(Collectors.toList());

		Course course =courseList.get(0);



		//フローイメージの画像もかな？JSPで書けばいいのかな？
		session.setAttribute("course", course);
		//確認画面へリダイレクト
		response.sendRedirect("courseConfirm");

	}

}
