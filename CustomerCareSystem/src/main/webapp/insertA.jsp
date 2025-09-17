<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TeleBridge - Self Help</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/alpinejs" defer></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body class="flex flex-col min-h-screen bg-gradient-to-br from-blue-50 to-blue-100">

	<!-- Header Section -->
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
	<main class="flex-1 flex items-center justify-center">
		<div class="w-full max-w-md bg-white shadow-xl rounded-2xl p-8 mt-10 mb-10">
			<h2 class="text-2xl font-bold text-blue-700 mb-6 text-center">
				<i class="fas fa-user-plus mr-2"></i> Join the Self Help Platform
			</h2>

			<form action="InsertServlet" method="POST" class="space-y-4" onsubmit="return validateForm();">
				
				<!-- Full Name -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="cName">Full Name</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-user text-gray-400 mr-2"></i> 
						<input type="text" id="cName" name="cName" required class="w-full bg-transparent focus:outline-none" placeholder="Abhisheka Perera" />
					</div>
				</div>
				
				<!-- Email -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="email">Email Address</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-envelope text-gray-400 mr-2"></i> 
						<input type="email" id="email" name="email" required class="w-full bg-transparent focus:outline-none" placeholder="example@gmail.com" />
					</div>
				</div>

				<!-- Phone Number -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="phone">Phone Number</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-phone text-gray-400 mr-2"></i> 
						<input type="tel" id="phone" name="phone" required class="w-full bg-transparent focus:outline-none" placeholder="+9423 567 890" />
					</div>
				</div>

				<!-- Address -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="address">Address</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-map-marker-alt text-gray-400 mr-2"></i> 
						<input type="text" id="address" name="address" required class="w-full bg-transparent focus:outline-none" placeholder="123 Main St, Colombo" />
					</div>
				</div>

				<!-- Password -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="passw">Password</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-lock text-gray-400 mr-2"></i> 
						<input type="password" id="passw" name="passw" required class="w-full bg-transparent focus:outline-none" placeholder="" />
					</div>
				</div>

				<!-- Confirm Password -->
				<div>
					<label class="block text-gray-700 font-medium mb-1" for="confirmPass">Confirm Password</label>
					<div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
						<i class="fas fa-lock text-gray-400 mr-2"></i> 
						<input type="password" id="confirmPass" name="confirmPass" required class="w-full bg-transparent focus:outline-none" placeholder="" />
					</div>
				</div>

				<!-- Submit Button -->
				<div class="pt-4">
					<button type="submit" class="w-full bg-blue-600 text-white font-semibold py-2 rounded-lg hover:bg-blue-700 transition duration-300">
						<i class="fas fa-user-check mr-2"></i> Join Self Help
					</button>
				</div>
			</form>
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

	<!-- Validation Script -->
	<script>
	function validateForm() {
		const cName = document.getElementById("cName").value.trim();
		const email = document.getElementById("email").value.trim();
		const phone = document.getElementById("phone").value.trim();
		const address = document.getElementById("address").value.trim();
		const passw = document.getElementById("passw").value.trim();
		const confirmPass = document.getElementById("confirmPass").value.trim();

		if (!cName || !email || !phone || !address || !passw || !confirmPass) {
			alert("Please fill in all the fields.");
			return false;
		}
		/ Check if email contains '@'
		if (!email.includes('@')) {
			alert("Please enter a valid email address containing '@'.");
			return false;
		}
		
		// Check if phone number is exactly 10 digits and numeric
		const phonePattern = /^[0-9]{10}$/;
		if (!phonePattern.test(phone)) {
			alert("Phone number must be exactly 10 digits.");
			return false;
		}
		if (passw.length < 8) {
			alert("Password must be at least 8 characters long.");
			return false;
		}

		if (passw !== confirmPass) {
			alert("Passwords do not match.");
			return false;
		}

		return true;
	}
	</script>

</body>
</html>