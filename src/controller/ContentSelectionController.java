package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Content;

/**
 * Servlet implementation class ContentSelectionController
 */
@WebServlet("/contentSelectionController")
public class ContentSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
//選んだコースの情報を取得。この情報からもとにしてdaoかなんかで問題を引っ張るのかな？
		Content content = new Content();
		content.setContentname((String)request.getParameter(""));
		content.setContenttime(Integer.parseInt(request.getParameter("")));
		content.setCoursename((String)request.getParameter(""));

		List<Content> contentResult = new ArrayList<Content>();

		/*
		 * ここでサービスからデータベースに接続して、上の条件に合ったデータを取得する
		 * courseResult = ;
		 */

		session.setAttribute("courseContent", contentResult);

//		取得したコンテンツ内容によって問題を表示する何かが必要ですか？
//ユーザーによってリダイレクト先が変わる。一旦4択画面へ。
//		if () {
			response.sendRedirect("questionAnswer");
//		} else {
//			response.sendRedirect("fourQuestion");
//		}
	}

}
