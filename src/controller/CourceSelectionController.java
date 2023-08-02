package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cource;
import model.User;

/**
 * Servlet implementation class CourceSelectionController
 */
@WebServlet("/courceSelectionController")
public class CourceSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
// 選択したコースの情報を取得します。
		Cource cource = new Cource();
		cource.setCourcename((String)request.getParameter(""));
		cource.setExamdate(Date.valueOf((String)request.getParameter("")));
		cource.setCategory(Integer.parseInt(request.getParameter("")));

//フローイメージの画像もかな？JSPで書けばいいのかな？
		User user = new User();
		session.getAttribute("nickname");
		request.setAttribute("cource", cource);
		session.setAttribute("nickname", user.getNickname());
//確認画面へリダイレクト
		response.sendRedirect("courceConfirm");

	}

}
