package raiseTicket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ticketGetALLServlet")
public class ticketGetALLServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("customerID") != null) {
            Integer customerID = (Integer) session.getAttribute("customerID");
            List<TicketModel> customerTickets = TicketController.getTicketsByCustomerID(customerID);
            request.setAttribute("allTickets", customerTickets);
            RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayT.jsp");
            dispatcher.forward(request, response);
        } else {
            // No session or not logged in
            response.sendRedirect("Login.jsp"); // redirect to login page
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

