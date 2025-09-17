package customer;


import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dbemail = request.getParameter("email");
        String dbpassw = request.getParameter("passw");

        try {
            List<customerModel> userlogin = customerController.loginValidate(dbemail, dbpassw);

            if (userlogin != null && !userlogin.isEmpty()) {
                // Get user details
                customerModel customer = userlogin.get(0);
                int customerID = customer.getCustomerID();

                // Create session and set attribute
                HttpSession session = request.getSession();
                session.setAttribute("customerID", customerID);

                // Redirect to insert page
                response.sendRedirect("insert.jsp");
            } else {
                // Invalid login
                response.sendRedirect("Login.jsp?error=Invalid+email+or+password");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Login.jsp?error=Something+went+wrong");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("Login.jsp");
    }
}
