package raiseTicket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketDeleteServlet")
public class TicketDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ticketID = request.getParameter("ticketID");
		boolean isTrue;
		isTrue = TicketController.deletedata(ticketID);
		if(isTrue == true) {
			String alertMessage ="Data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='ticketGetALLServlet';</script>");
		}
		else {
			List<TicketModel> ticketDetails= TicketController.getById(ticketID);
			request.setAttribute("ticketDetails", ticketDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
