package payment;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServletp")
public class UpdateServletp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentID = request.getParameter("paymentID");
        String AccountNumber = request.getParameter("AccountNumber");
        String paymentMethod = request.getParameter("paymentMethod");
        String expireDate = request.getParameter("expireDate");
        String cardNo = request.getParameter("cardNo");
        String securityCode = request.getParameter("securityCode");
        String total = request.getParameter("total");

        boolean isTrue = paymentController.updatedata(paymentID, AccountNumber, paymentMethod, expireDate, cardNo, securityCode, total);

        if (isTrue==true) {
            List<paymentModel> paymentdetails = paymentController.getById(paymentID);
            request.setAttribute("paymentdetails", paymentdetails);

            String alertMessage = "Data update Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='GetALLServletp'</script>");
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
    }
}
