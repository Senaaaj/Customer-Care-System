package raiseTicket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketUpdateServlet")
public class TicketUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ticketID = request.getParameter("ticketID");
		String location = request.getParameter("location");
		String cPreference = request.getParameter("cPreference");
		String category = request.getParameter("category");
		String priority = request.getParameter("priority");
		String subject_ = request.getParameter("subject_");
		String description_ = request.getParameter("description_");
		
		boolean isTrue;
		isTrue = TicketController.updatedata(ticketID,location, cPreference, category, priority, subject_, description_);
		
		if(isTrue ==true) {
			List<TicketModel> ticketdetails =TicketController.getById(ticketID);
			request.setAttribute("ticketdetails", ticketdetails);
		
			response.getWriter().println(
			        "<script>alert('Data Update Successful'); window.location.href='ticketGetALLServlet';</script>" );

		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
