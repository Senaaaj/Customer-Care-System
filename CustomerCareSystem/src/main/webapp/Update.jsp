<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>TeleBridge - Update Account</title>
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex flex-col min-h-screen bg-gradient-to-br from-blue-50 to-blue-100">

  <!-- Header -->
  <header class="bg-indigo-700 text-white shadow w-full">
    <div class="flex items-center justify-between px-4 sm:px-6 lg:px-8 py-4">
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
  <main class="flex-1 flex items-center justify-center p-6">
    <div class="w-full max-w-md bg-white shadow-xl rounded-2xl p-8">

      <h2 class="text-2xl font-bold text-blue-700 mb-6 text-center">
        <i class="fas fa-user-edit mr-2"></i> Update Your TeleCare Account
      </h2>

      <%
        String customerID = request.getParameter("customerID");
        String cName = request.getParameter("cName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String passw = request.getParameter("passw");
      %>

      <form action="UpdateServlet" method="POST" class="space-y-4">
        <!-- Customer ID -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="customerID">Customer ID</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-id-badge text-gray-400 mr-2"></i>
            <input type="text" id="customerID" name="customerID" value="<%= customerID %>" readonly
              class="w-full bg-transparent focus:outline-none" />
          </div>
        </div>

        <!-- Full Name -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="name">Full Name</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-user text-gray-400 mr-2"></i>
            <input type="text" id="name" name="cName" value="<%= cName %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="John Doe" />
          </div>
        </div>

        <!-- Email -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="email">Email Address</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-envelope text-gray-400 mr-2"></i>
            <input type="email" id="email" name="email" value="<%= email %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="example@gmail.com" />
          </div>
        </div>

        <!-- Phone -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="phone">Phone Number</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-phone text-gray-400 mr-2"></i>
            <input type="tel" id="phone" name="phone" value="<%= phone %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="+9423 567 890" />
          </div>
        </div>

        <!-- Address -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="address">Address</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-map-marker-alt text-gray-400 mr-2"></i>
            <input type="text" id="address" name="address" value="<%= address %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="123 Main St, City" />
          </div>
        </div>

        <!-- Password -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="passw">Password</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-lock text-gray-400 mr-2"></i>
            <input type="password" id="passw" name="passw" value="<%= passw %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="" />
          </div>
        </div>

        <!-- Confirm Password -->
        <div>
          <label class="block text-gray-700 font-medium mb-1" for="confirm">Confirm Password</label>
          <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
            <i class="fas fa-lock text-gray-400 mr-2"></i>
            <input type="password" id="confirm" name="passw" value="<%= passw %>" required
              class="w-full bg-transparent focus:outline-none" placeholder="" />
          </div>
        </div>

        <!-- Submit Button -->
        <div class="pt-4">
          <button type="submit"
            class="w-full bg-blue-600 text-white font-semibold py-2 rounded-lg hover:bg-blue-700 transition duration-300">
            <i class="fas fa-user-check mr-2"></i> Update
          </button>
        </div>
      </form>

      <!-- Link -->
      <p class="text-sm text-center text-gray-600 mt-6">
        Want to go back? <a href="Login.jsp" class="text-blue-600 hover:underline">Login here</a>
      </p>

    </div>
  </main>

  <!-- Footer -->
  <footer class="bg-gray-900 text-gray-300 w-full mt-10">
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
                    <li><a href="privacy.jsp" class="hover:text-indigo-400"><i class="fas fa-comment-dots mr-2"></i>Privacy and Policy</a></li>>
        </ul>
      </div>
      <div>
        <h3 class="text-white text-lg font-semibold mb-4">Contact Us</h3>
        <ul class="space-y-3 text-sm">
          <li><i class="fas fa-phone-alt mr-2 text-indigo-400"></i>+94 74 016 7195</li>
          <li><i class="fas fa-envelope mr-2 text-indigo-400"></i>support@telebridge.com</li>
          <li><i class="fas fa-map-marker-alt mr-2 text-indigo-400"></i>123, Marine Drive, Colombo</li>
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