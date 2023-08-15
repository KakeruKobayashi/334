package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CourseService;



/**
 * Servlet implementation class PersonalQuestionResultController
 */
@WebServlet("/personalQuestionResultController")
public class PersonalQuestionResultController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalQuestionResultController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		CourseService courseService = new CourseService();
		String TOEICComment = courseService.commentCourse("TOEIC");
		String TOEFLComment = courseService.commentCourse("TOEFL");
		String GTECComment = courseService.commentCourse("GTEC");

		session.setAttribute("TOEIC", TOEICComment);
		session.setAttribute("TOEFL", TOEFLComment);
		session.setAttribute("GTEC", GTECComment);

		response.sendRedirect("question");
		return;
	}

}
