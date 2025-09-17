package Feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackUpdateServlet")
public class feedbackUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fid=request.getParameter("fid");
		String fname = request.getParameter("fname");
		String fphone = request.getParameter("fphone");
		String femail = request.getParameter("femail");
		String connection_ = request.getParameter("connection_");
		String branch = request.getParameter("branch");
		String satisfaction = request.getParameter("satisfaction");
		String frecommendationname = request.getParameter("recommendation");
		String comments = request.getParameter("comments");
		
		boolean isTrue;
		isTrue = feedbackController.feedbackUpdate(fid,fname, fphone, femail, connection_, branch, satisfaction, frecommendationname, comments);
		
		if(isTrue ==true) {
		    List<FeedbackModel> feedbackDetails = feedbackController.getById(fid);
			request.setAttribute("feedbackDetails", feedbackDetails);
			
			String alertMessage = "Data Update Successful";
			response.sendRedirect("feedbackGetAll?status=updated");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
