<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Raise a Ticket Update Form</title>
<link rel="stylesheet" href="UpdateStyles.css?v=2">
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

    <main class="flex-1 flex flex-col items-center justify-center py-12">
        <%
            String ticketID = request.getParameter("ticketID");
            String location = request.getParameter("location");
            String cPreference = request.getParameter("cPreference");
            String category = request.getParameter("category");
            String priority = request.getParameter("priority");
            String subject_ = request.getParameter("subject_");
            String description_ = request.getParameter("description_");
        %>
        <form action="TicketUpdateServlet" method="post" class="bg-white rounded-2xl shadow-xl p-8">
            <h2 class="text-2xl md:text-3xl font-bold text-blue-700 text-center mb-8">Update Ticket Details</h2>
            <div class="user-details flex flex-col gap-6">
                <div class="input-box full-width">
                    <span class="details font-semibold">Ticket ID: </span>
                    <input type="text" name="ticketID" value="<%=ticketID%>" readonly class="mt-1 bg-gray-100 border border-gray-300 rounded px-3 py-2" />
                </div>
                <div class="flex flex-col md:flex-row gap-6">
                    <div class="input-box flex-1">
                        <span class="details font-semibold">Location: </span>
                        <input type="text" placeholder="Enter your location" name="location" value="<%=location%>" class="mt-1 bg-gray-50 border border-gray-300 rounded px-3 py-2" />
                    </div>
                    <div class="input-box flex-1">
                        <span class="details font-semibold">Contact preference: </span>
                        <select name="cPreference" class="mt-1 bg-gray-50 border border-gray-300 rounded px-3 py-2">
                            <option value="Phone Call" <%= "Phone Call".equals(cPreference) ? "selected" : "" %>>Phone Call</option>
                            <option value="Email" <%= "Email".equals(cPreference) ? "selected" : "" %>>Email</option>
                            <option value="SMS" <%= "SMS".equals(cPreference) ? "selected" : "" %>>SMS</option>
                            <option value="Live Chat" <%= "Live Chat".equals(cPreference) ? "selected" : "" %>>Live Chat</option>
                        </select>
                    </div>
                </div>
                <div class="flex flex-col md:flex-row gap-6">
                    <div class="input-box flex-1">
                        <span class="details font-semibold">Issue Category:</span>
                        <select name="category" required class="mt-1 bg-gray-50 border border-gray-300 rounded px-3 py-2">
                            <option value="Network Issues" <%= "Network Issues".equals(category) ? "selected" : "" %>>Network Issues</option>
                            <option value="Billing and Payments" <%= "Billing and Payments".equals(category) ? "selected" : "" %>>Billing and Payments</option>
                            <option value="Account/Subscription" <%= "Account/Subscription".equals(category) ? "selected" : "" %>>Account/Subscription</option>
                            <option value="Device and Equipment" <%= "Device and Equipment".equals(category) ? "selected" : "" %>>Device and Equipment</option>
                            <option value="Service Request" <%= "Service Request".equals(category) ? "selected" : "" %>>Service Request</option>
                            <option value="Technical Support" <%= "Technical Support".equals(category) ? "selected" : "" %>>Technical Support</option>
                        </select>
                    </div>
                    <div class="priority-box flex-1">
                        <span class="details font-semibold">Priority: </span>
                        <div class="priority-options flex gap-6 mt-2">
                            <label class="font-medium"><input type="radio" name="priority" value="Medium" <%= "Medium".equals(priority) ? "checked" : "" %>> Medium</label>
                            <label class="font-medium"><input type="radio" name="priority" value="High" <%= "High".equals(priority) ? "checked" : "" %>> High</label>
                        </div>
                    </div>
                </div>
                <div class="input-box full-width">
                    <span class="details font-semibold">Subject: </span>
                    <input type="text" placeholder="Subject" name="subject_" value="<%=subject_%>" class="mt-1 bg-gray-50 border border-gray-300 rounded px-3 py-2" />
                </div>
                <div class="input-box full-width">
                    <span class="details font-semibold">Issue Description: </span>
                    <textarea rows="4" cols="50" placeholder="Message" name="description_" class="mt-1 bg-gray-50 border border-gray-300 rounded px-3 py-2"><%=description_%></textarea>
                </div>
            </div>
            <div class="button mt-8">
                <input type="submit" value="Submit" class="bg-blue-600 text-white font-semibold py-3 rounded-lg hover:bg-blue-700 transition" />
            </div>
        </form>
    </main>

    <!-- Footer Section -->
    <footer class="bg-gray-900 text-gray-300 w-full mt-auto">
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
</body>
</html>
