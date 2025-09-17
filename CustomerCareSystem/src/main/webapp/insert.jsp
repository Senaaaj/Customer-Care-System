<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    Integer customerID = null;

    if (sessionObj != null) {
        customerID = (Integer) sessionObj.getAttribute("customerID");
    }

    if (customerID == null) {
%>
	<script>
        alert("Please login first!");
        window.location.href = "Login.jsp";
    </script>
<%
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Raise a Ticket</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/alpinejs" defer></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body class="flex flex-col min-h-screen bg-gradient-to-br from-blue-50 to-blue-100">

    <!-- Header Section -->
    <header class="bg-indigo-700 text-white shadow sticky top-0 z-50 w-full">
        <div class="w-full px-4 sm:px-6 lg:px-8 flex items-center justify-between py-4">
            <div class="flex items-center space-x-2">
                <i class="fas fa-headset text-2xl"></i>
                <span class="text-xl font-bold">TeleBridge</span>
            </div>
            <nav class="hidden md:flex space-x-6 text-sm">
                <a href="Home.jsp" class="hover:text-indigo-200">Home</a>
                <a href="Login.jsp" class="hover:text-indigo-200">Sign In</a>
                <a href="insertA.jsp" class="hover:text-indigo-200">Self Help</a>
                <a href="insertp.jsp" class="hover:text-indigo-200">Payment</a>
                <a href="feedbackInsert.jsp" class="hover:text-indigo-200">Feedback</a>
                <a href="insert.jsp" class="hover:text-indigo-200">Raise a Ticket</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex-1 flex flex-col justify-center">
        <div class="flex justify-center items-center px-4 py-10">
            <div class="w-full max-w-2xl bg-white shadow-xl rounded-2xl p-8 mt-10 mb-10">
                <div class="text-2xl font-bold mb-6 text-center text-blue-700">Raise a Ticket</div>
                
                <% String errorMessage = (String) request.getAttribute("error"); %>
				<% if (errorMessage != null) { %>
				    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative mb-4" role="alert">
				        <strong class="font-bold">Error:</strong>
				        <span class="block sm:inline"><%= errorMessage %></span>
				    </div>
				<% } %>
				                
                <form action="raiseTicketServlet" method="post" class="space-y-6">
                    <input type="hidden" name="customerID" value="<%= customerID %>">

                    <div class="grid gap-6 md:grid-cols-2">
                        <div>
                            <label class="block mb-1 text-gray-800 font-medium">Location:</label>
                            <input type="text" name="location" placeholder="Enter your location" class="w-full border rounded p-2 text-gray-800 bg-gray-50 focus:outline-none focus:ring-2 focus:ring-blue-200">
                        </div>
                        <div>
                            <label class="block mb-1 text-gray-800 font-medium">Contact Preference:</label>
                            <select name="cPreference" required class="w-full border rounded p-2 text-gray-800 bg-gray-50 focus:outline-none focus:ring-2 focus:ring-blue-200">
                                <option value="Phone Call">Phone Call</option>
                                <option value="Email">Email</option>
                                <option value="SMS">SMS</option>
                                <option value="Live Chat">Live Chat</option>
                            </select>
                        </div>
                        <div>
                            <label class="block mb-1 text-gray-800 font-medium">Issue Category:</label>
                            <select name="category" required class="w-full border rounded p-2 text-gray-800 bg-gray-50 focus:outline-none focus:ring-2 focus:ring-blue-200">
                                <option value="Network Issues">Network Issues</option>
                                <option value="Billing and Payments">Billing and Payments</option>
                                <option value="Account/Subscription">Account/Subscription</option>
                                <option value="Device and Equipment">Device and Equipment</option>
                                <option value="Service Request">Service Request</option>
                                <option value="Technical Support">Technical Support</option>
                            </select>
                        </div>
                        <div>
                            <label class="block mb-1 text-gray-800 font-medium">Priority:</label>
                            <div class="space-x-4 text-gray-800">
                                <label><input type="radio" name="priority" value="Medium"> Medium</label>
                                <label><input type="radio" name="priority" value="High"> High</label>
                            </div>
                        </div>
                    </div>

                    <div>
                        <label class="block mb-1 text-gray-800 font-medium">Subject:</label>
                        <input type="text" name="subject_" id="subject" placeholder="Subject" required class="w-full border rounded p-2 text-gray-800 bg-gray-50 focus:outline-none focus:ring-2 focus:ring-blue-200">
                    </div>
                    <div>
                        <label class="block mb-1 text-gray-800 font-medium">Issue Description:</label>
                        <textarea name="description_" rows="4" id="issueDescription" placeholder="Message" required class="w-full border rounded p-2 text-gray-800 bg-gray-50 focus:outline-none focus:ring-2 focus:ring-blue-200"></textarea>
                    </div>
                    <div class="flex justify-center">
                        <button type="submit" class="w-full bg-blue-600 text-white font-semibold py-2 rounded-lg hover:bg-blue-700 transition duration-300">
                            Submit
                        </button>
                    </div>
                </form>               
            </div>
        </div>
        <!-- View My Tickets Button -->
			<div class="flex justify-center my-8">
			  <a href="/CustomerCareSystem/ticketGetALLServlet"
			     class="inline-flex items-center px-8 py-4 text-xl font-semibold text-white bg-blue-600 rounded-lg shadow hover:bg-blue-700 focus:outline-none focus:ring-4 focus:ring-blue-300 transition">
			    <i class="fas fa-ticket-alt mr-3 text-2xl"></i>
			    View My Tickets
			  </a>
			</div>
        
    </main>

    <!-- Footer Section -->
    <footer class="bg-gray-900 text-gray-300 w-full">
        <div class="px-4 sm:px-6 lg:px-8 py-10 grid grid-cols-1 md:grid-cols-3 gap-8 max-w-7xl mx-auto">
            <div>
                <div class="flex items-center space-x-2 mb-4">
                    <i class="fas fa-headset text-indigo-500 text-2xl"></i>
                    <span class="text-xl font-bold text-white">TeleBridge</span>
                </div>
                <p class="text-sm text-gray-400">Your trusted platform for instant telecom support, payments, ticketing, and more.</p>
            </div>
            <div>
                <h3 class="text-white text-lg font-semibold mb-4">Quick Links</h3>
                <ul class="space-y-2 text-sm">
					<li><a href="Home.jsp" class="hover:text-indigo-400"><i class="fas fa-home mr-2"></i>Home</a></li>
                    <li><a href="insertp.jsp" class="hover:text-indigo-400"><i class="fas fa-credit-card mr-2"></i>Payment</a></li>
                    <li><a href="AboutUs.jsp" class="hover:text-indigo-400"><i class="fas fa-ticket-alt mr-2"></i>About Us</a></li>
                    <li><a href="privacy.jsp" class="hover:text-indigo-400"><i class="fas fa-comment-dots mr-2"></i>Privacy and Policy</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-white text-lg font-semibold mb-4">Contact Us</h3>
                <ul class="space-y-3 text-sm">
                    <li><i class="fas fa-phone-alt mr-2 text-indigo-400"></i>+94 74 016 7195</li>
                    <li><i class="fas fa-envelope mr-2 text-indigo-400"></i> support@telebridge.com</li>
                    <li><i class="fas fa-map-marker-alt mr-2 text-indigo-400"></i> 123, Marine Drive, Colombo</li>
                </ul>
            </div>
        </div>
        <div class="bg-gray-800 border-t border-gray-700 w-full">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex flex-col md:flex-row justify-between items-center text-sm text-gray-400">
                <p>&copy; 2025 TeleBridge. All rights reserved.</p>
                <div class="flex space-x-4 mt-2 md:mt-0">
                    <a href="#" class="hover:text-indigo-400"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="hover:text-indigo-400"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="hover:text-indigo-400"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="hover:text-indigo-400"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Validation Script -->
	<script>
	  document.getElementById("subject").setAttribute("minlength", "5");
	  document.getElementById("issueDescription").setAttribute("minlength", "10");
	</script>
</body>
</html>
