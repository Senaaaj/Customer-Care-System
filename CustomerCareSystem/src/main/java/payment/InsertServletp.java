package payment;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServletp")
public class InsertServletp extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameters from request
    	String AccountNumber = request.getParameter("AccountNumber");
        String paymentMethod = request.getParameter("paymentMethod");
        String expireDate = request.getParameter("expireDate");
        String cardNo = request.getParameter("cardNo");
        String securityCode = request.getParameter("securityCode");
        String total = request.getParameter("total");

        boolean isTrue;

        // Call controller method
        isTrue = paymentController.insertData(AccountNumber,paymentMethod,expireDate,cardNo, securityCode, total);

        if (isTrue == true) {
            String alertMessage = "Data Insert Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "');window.location.href='GetALLServletp';</script>");
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
    }
}
