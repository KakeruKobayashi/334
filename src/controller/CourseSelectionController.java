package controller;

import java.io.IOException;

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
// 選択したコースの情報を取得します。
		String selectedCourseName = request.getParameter("item.courcename");
		System.out.println("kokomade");
		//int selectedCategory = Integer.parseInt(request.getParameter("item.category"));

		Course course = new Course();
		course.setCoursename(selectedCourseName);
		//course.setCategory(selectedCategory);

		//course.setExamdate(Date.valueOf((String)request.getParameter("")));

//フローイメージの画像もかな？JSPで書けばいいのかな？
		session.setAttribute("course", course);
//確認画面へリダイレクト
		response.sendRedirect("courseConfirm");

	}

}
