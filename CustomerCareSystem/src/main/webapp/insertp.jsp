<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment</title>

    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/alpinejs" defer></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://static.vecteezy.com/system/resources/previews/000/695/792/non_2x/electronic-bill-payment-concept-vector.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 100px;
            padding: 20px;
        }

        .form-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            width: 400px;
            animation: fadeIn 0.8s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-bottom: 25px;
            font-size: 26px;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
        }

        table {
            width: 100%;
        }

        td {
            padding: 12px 8px;
            font-weight: 500;
            color: #f0f0f0;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            background-color: rgba(255, 255, 255, 0.8);
            color: black;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 191, 255, 0.4);
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #00f2fe, #4facfe);
            transform: scale(1.03);
            box-shadow: 0 6px 20px rgba(0, 191, 255, 0.5);
        }

        .pay-method-button {
            padding: 10px 16px;
            border: 2px solid white;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.8);
            font-weight: bold;
            cursor: pointer;
            color: #000;
            transition: 0.3s;
            width: 100%;
        }

        .pay-method-button.selected {
            background: #4facfe;
            color: white;
            border-color: #00f2fe;
        }

        .payment-options {
            display: flex;
            gap: 10px;
        }
    </style>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

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

<!-- Form -->
<div class="content">
    <div class="form-box">
        <h2>Enter Payment Details</h2>
        <form action="InsertServletp" method="post" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td>Account Number:</td>
                    <td><input type="text" name="AccountNumber" required></td>
                </tr>
                <tr>
                    <td>Payment Method:</td>
                    <td>
                        <div class="payment-options">
                            <button type="button" class="pay-method-button" onclick="selectPaymentMethod('Credit Card', this)">Credit Card</button>
                            <button type="button" class="pay-method-button" onclick="selectPaymentMethod('Debit Card', this)">Debit Card</button>
                        </div>
                        <input type="hidden" name="paymentMethod" id="paymentMethod" required>
                    </td>
                </tr>
                <tr>
                    <td>Expire Date:</td>
                    <td><input type="date" name="expireDate" required></td>
                </tr>
                <tr>
                    <td>Card No:</td>
                    <td><input type="text" name="cardNo" id="cardNo" required></td>
                </tr>
                <tr>
                    <td>Security Code:</td>
                    <td><input type="text" name="securityCode" id="securityCode" required></td>
                </tr>
                <tr>
                    <td>Total:</td>
                    <td><input type="text" name="total" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </div>
</div>

<script>
    function selectPaymentMethod(method, element) {
        document.getElementById('paymentMethod').value = method;

        const buttons = document.querySelectorAll('.pay-method-button');
        buttons.forEach(btn => btn.classList.remove('selected'));

        element.classList.add('selected');
    }

    function validateForm() {
        const cardNo = document.getElementById("cardNo").value.trim();
        const securityCode = document.getElementById("securityCode").value.trim();

        if (!/^\d{11}$/.test(cardNo)) {
            alert("Card Number must be exactly 11 digits.");
            return false;
        }

        if (!/^\d{3}$/.test(securityCode)) {
            alert("Security Code must be exactly 3 digits.");
            return false;
        }

        return true;
    }
</script>

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
</body>
</html>