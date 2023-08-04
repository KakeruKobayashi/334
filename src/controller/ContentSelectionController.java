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

		String contentName = (String)request.getParameter("content");
		List<Content> contentList = (List<Content>) session.getAttribute("courseContent");
		System.out.println(contentName);

		contentList = contentList.stream().filter(item -> item.getContentName().equals(contentName)).collect(Collectors.toList());;
		Content content = contentList.get(0);

		/*
		 * ここでサービスからデータベースに接続して、上の条件に合った問題データを取得する
		 *
		 */

//		取得したコンテンツ内容によって問題を表示する何かが必要ですか？
//ユーザーによってリダイレクト先が変わる。一旦4択画面へ。
		if (session.getAttribute("sourcePage").equals("Home")) {
			response.sendRedirect("questionAnswer");
			return;
		} else if(session.getAttribute("sourcePage").equals("Time")){
			response.sendRedirect("fourQuestions");
			return;
		}
	}
}