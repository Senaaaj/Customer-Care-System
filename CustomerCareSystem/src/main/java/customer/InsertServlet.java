package customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cName= request.getParameter("cName");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String address= request.getParameter("address");
		String passw= request.getParameter("passw");
		
		boolean isTrue;
		
		isTrue = customerController.Insertdata(cName,email,phone,address,passw);
		
		if(isTrue==true) {
			String alertMessage = "Data Insert Succesful";
			response.getWriter().println("<script>alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
