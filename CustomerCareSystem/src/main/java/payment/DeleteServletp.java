package payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServletp")
public class DeleteServletp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You can optionally redirect or disable GET
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "GET not supported for this endpoint.");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        boolean isTrue = paymentController.deletedata(id);

        if (isTrue) {
            String alertMessage = "Data Delete Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='GetALLServletp';</script>");
        } else {
            List<paymentModel> paymentDetails = paymentController.getById(id);
            request.setAttribute("paymentDetails", paymentDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
            dispatcher.forward(request, response);
        }
    }
}
