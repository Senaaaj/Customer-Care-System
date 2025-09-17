package customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerID=request.getParameter("customerID");
		String cName= request.getParameter("cName");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String address= request.getParameter("address");
		String passw= request.getParameter("passw");
		
	
		boolean isTrue;
		isTrue = customerController.updatedata(customerID,cName, email, phone, address, passw);
		
		if(isTrue==true){
			List<customerModel> customerdetails =customerController.getById(customerID);
			request.setAttribute("customerdetails",customerdetails);
			
			String alertMessage = "Data Update Succesful";
			response.sendRedirect("GetAllServlet?status=updated");
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
	}

}
