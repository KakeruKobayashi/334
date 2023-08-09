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

import model.Content;
import service.ContentService;
import service.UserCourseService;

@WebServlet("/timeSelectionController")
public class TimeSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		//ここはJSP側とパラメータを合わせる
		//時間を分に換算してそれ以内のコースを表示
		int contentHours = Integer.parseInt(request.getParameter("hours"));
		int contentMinutes = Integer.parseInt(request.getParameter("minutes"));
		int contentTime = contentHours * 60 + contentMinutes;

		//ニックネームか何かからユーザーのコースの情報を受け取る。
		String nickname = (String)session.getAttribute("nickname");
		UserCourseService userCourseService = new UserCourseService();
		String courseName = userCourseService.selectCourseName(nickname);

		List<Content> contentResult = new ArrayList<Content>();

		ContentService contentService = new ContentService();
		contentResult = contentService.selectContentByTime(courseName, contentTime);

		/*
		 * Content content = new Content();
		content.setContentName("TOEIC L&Rテスト対策");
		content.setContentTime(100);
		content.setCourseName("TOEIC");
		contentResult.add(content);
		*/

		session.setAttribute("courseContent", contentResult);
		session.setAttribute("sourcePage", "Time");
		response.sendRedirect("contentSelection");
		return;
	}
}
