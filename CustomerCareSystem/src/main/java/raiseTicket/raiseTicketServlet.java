package raiseTicket;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/raiseTicketServlet")
public class raiseTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get form values
		String location = request.getParameter("location");
		String cPreference = request.getParameter("cPreference");
		String category = request.getParameter("category");
		String priority = request.getParameter("priority");
		String subject_ = request.getParameter("subject_");
		String description_ = request.getParameter("description_");
		String customerID = request.getParameter("customerID");
		
		 // Validation
        String errorMessage = null;
        if (location == null || location.trim().isEmpty()) {
            errorMessage = "Location cannot be empty.";
        } else if (cPreference == null || cPreference.trim().isEmpty()) {
            errorMessage = "Contact preference must be selected.";
        } else if (category == null || category.trim().isEmpty()) {
            errorMessage = "Issue category must be selected.";
        } else if (priority == null || priority.trim().isEmpty()) {
            errorMessage = "Priority must be selected.";
        } else if (subject_ == null || subject_.trim().isEmpty()) {
            errorMessage = "Subject cannot be empty.";
        } else if (description_ == null || description_.trim().isEmpty()) {
            errorMessage = "Description cannot be empty.";
        }

        if (errorMessage != null) {
            request.setAttribute("error", errorMessage);
            RequestDispatcher dispatcher = request.getRequestDispatcher("insert.jsp");
            dispatcher.forward(request, response);
            return;
        }


		boolean isTrue = false;
		isTrue = TicketController.insertData(location, cPreference, category, priority, subject_, description_, customerID);
		

		if (isTrue) {
			//if insertion is succeed, redirect to the ticket details page
			response.getWriter().println("<script>alert(\"Ticket Raised Successfully\"); window.location.href='ticketGetALLServlet';</script>");
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response); //error page
		}
	}
}