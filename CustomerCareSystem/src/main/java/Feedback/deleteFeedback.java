package Feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteFeedback")
public class deleteFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String fid = request.getParameter("fid");

	    if (fid == null || fid.trim().isEmpty()) {
	        response.getWriter().println("<script>alert('Invalid feedback ID.'); window.location.href='feedbackGetAll';</script>");
	        return;
	    }

	    boolean isTrue = feedbackController.feedbackdelete(fid);

	    if (isTrue) {
	        String alertMessage = "Data Delete Successful";
	        response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='feedbackGetAll';</script>");
	    } else {
	        List<FeedbackModel> feedbackDetails = feedbackController.getById(fid);
	        request.setAttribute("feedbackDetails", feedbackDetails);
	        RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
	        dis2.forward(request, response);
	    }
	}
}
