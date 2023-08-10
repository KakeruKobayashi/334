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

/**
 * Servlet implementation class ContentSearchController
 */
@WebServlet("/contentSearchController")
public class ContentSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		String nickname = (String)session.getAttribute("nickname");
		UserCourseService userCourseService = new UserCourseService();
		int courseID = userCourseService.selectCourseName(nickname);

		List<Content> contentResult = new ArrayList<Content>();

		ContentService contentService = new ContentService();
		contentResult = contentService.selectContent(courseID);

		  int parameterCount = contentResult.size();
		  System.out.println(parameterCount);

		session.setAttribute("courseContent", contentResult);
		session.setAttribute("sourcePage", "Home");
		response.sendRedirect("contentSelection");
		return;
	}

}
