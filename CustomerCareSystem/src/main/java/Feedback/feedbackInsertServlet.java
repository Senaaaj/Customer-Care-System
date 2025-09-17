package Feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackInsertServlet")
public class feedbackInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String fphone = request.getParameter("fphone");
		String femail = request.getParameter("femail");
		String connection_ = request.getParameter("connection_");
		String branch = request.getParameter("branch");
		String satisfaction = request.getParameter("satisfaction");
		String frecommendationname = request.getParameter("recommendation");
		String comments = request.getParameter("comments");
		boolean isTrue;
		
		isTrue = feedbackController.inserdata(fname, fphone, femail, connection_, branch, satisfaction, frecommendationname, comments);
		
		if(isTrue ==true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='feedbackGetAll'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
