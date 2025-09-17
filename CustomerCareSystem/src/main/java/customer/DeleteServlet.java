package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerID =request.getParameter("customerID");
		boolean isTrue;
		
		isTrue=customerController.deletedata(customerID);
		if(isTrue==true) {
			String alertMessage ="Data delete successful";
			response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
		}
		
		else {
			List<customerModel> allcustomers = customerController.getById(customerID);
			request.setAttribute("allcustomers",allcustomers);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request,response);
			
		}
		
	}

}
