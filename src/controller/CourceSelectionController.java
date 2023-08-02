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

/**
 * Servlet implementation class CourceSelectionController
 */
@WebServlet("/CourceSelectionController")
public class CourceSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Cource cource = new Cource();
		cource.setCourcename((String)request.getParameter(""));
		cource.setExamdate(Date.valueOf((String)request.getParameter("")));
		cource.setCategory(Integer.parseInt(request.getParameter("category")));
		response.sendRedirect("courceConfirm");
		request.setAttribute("cource", cource);
	}

}
