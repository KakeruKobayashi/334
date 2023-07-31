package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/courseSelection")
public class CourseSelectionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // registration.jspにフォワードする。
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/JSP/CourseSelection.jsp");
        dispatcher.forward(request, response);
        return;
    }
}


