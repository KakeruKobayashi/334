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

@WebServlet("/TimeSelectionController")
public class TimeSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		//ここはJSP側とパラメータを合わせる
		//時間を分に換算してそれ以内のコースを表示
		int contenttime = Integer.parseInt(request.getParameter(""));

		//ニックネームか何かからユーザーのコースの情報を受け取る。
		session.getAttribute("nickname");

		//ニックネームをもとにコース情報やコンテンツ情報を取得するDAO

		List<Content> contentResult = new ArrayList<Content>();

		/*
		 * ここでサービスからデータベースに接続して、上の条件に合ったデータを取得する
		 * courseResult = ;
		 */

		session.setAttribute("courseContent", contentResult);

		response.sendRedirect("contentSelection");
	}

}
