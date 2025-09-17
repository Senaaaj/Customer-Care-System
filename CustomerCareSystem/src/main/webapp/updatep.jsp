<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Payment Details</title>

  
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://static.vecteezy.com/system/resources/previews/000/695/792/non_2x/electronic-bill-payment-concept-vector.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            margin: 0;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
        }

        .form-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            width: 450px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            z-index: 10;
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

        footer {
            background-color: #1a202c;
            color: white;
            padding: 20px 0;
            margin-top: auto;
        }

        footer a {
            color: #9c9c9c;
            text-decoration: none;
        }

        footer a:hover {
            color: #ffffff;
        }

        footer .social-icons i {
            font-size: 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>


<header class="bg-blue-800 text-white shadow sticky top-0 z-50 w-full">
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


<div class="form-container">
    <div class="form-box">
        <h2>Update Payment Details</h2>
        <form action="UpdateServletp" method="post">
            <table>
                <tr>
                    <td>Payment ID:</td>
                    <td><input type="text" id="paymentID" name="paymentID" value="<%= request.getParameter("id") %>" readonly></td>
                </tr>
                <tr>
                    <td>Account Number:</td>
                    <td><input type="text" id="AccountNumber" name="AccountNumber" value="<%= request.getParameter("AccountNumber") %>" required></td>
                </tr>
                <tr>
                    <td>Payment Method:</td>
                    <td>
                        <div class="payment-options">
                            <button type="button" class="pay-method-button" onclick="selectPaymentMethod('Credit Card', this)">Credit Card</button>
                            <button type="button" class="pay-method-button" onclick="selectPaymentMethod('Debit Card', this)">Debit Card</button>
                        </div>
                        <input type="hidden" name="paymentMethod" id="paymentMethod" value="<%= request.getParameter("paymentMethod") %>" required>
                    </td>
                </tr>
                <tr>
                    <td>Expire Date:</td>
                    <td><input type="date" id="expireDate" name="expireDate" value="<%= request.getParameter("expireDate") %>" required></td>
                </tr>
                <tr>
                    <td>Card Number:</td>
                    <td><input type="text" id="cardNo" name="cardNo" value="<%= request.getParameter("cardNo") %>" required></td>
                </tr>
                <tr>
                    <td>Security Code:</td>
                    <td><input type="text" id="securityCode" name="securityCode" value="<%= request.getParameter("securityCode") %>" required></td>
                </tr>
                <tr>
                    <td>Total:</td>
                    <td><input type="text" id="total" name="total" value="<%= request.getParameter("total") %>" required></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Update Payment">
                    </td>
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
</script>


<footer class="bg-black text-white mt-auto">
    <div class="px-4 sm:px-6 lg:px-8 py-10 grid grid-cols-1 md:grid-cols-3 gap-8 max-w-7xl mx-auto">
        <div>
            <div class="flex items-center space-x-2 mb-4">
                <i class="fas fa-headset text-indigo-200 text-2xl"></i>
                <span class="text-xl font-bold text-white">TeleBridge</span>
            </div>
            <p class="text-sm text-indigo-100">Your trusted platform for instant telecom support, payments, ticketing, and more.</p>
        </div>
        <div>
            <h3 class="text-white text-lg font-semibold mb-4">Quick Links</h3>
            <ul class="space-y-2 text-sm">
                <li><a href="Home.jsp" class="hover:text-indigo-200"><i class="fas fa-home mr-2"></i>Home</a></li>
                <li><a href="insertp.jsp" class="hover:text-indigo-200"><i class="fas fa-credit-card mr-2"></i>Payment</a></li>
                <li><a href="AboutUs.jsp" class="hover:text-indigo-200"><i class="fas fa-ticket-alt mr-2"></i>About Us</a></li>
                <li><a href="privacy.jsp" class="hover:text-indigo-200"><i class="fas fa-comment-dots mr-2"></i>Privacy and Policy</a></li>
            </ul>
        </div>
        <div>
            <h3 class="text-white text-lg font-semibold mb-4">Contact Us</h3>
            <ul class="space-y-3 text-sm">
                <li><i class="fas fa-phone-alt mr-2 text-indigo-200"></i>+94 74 016 7195</li>
                <li><i class="fas fa-envelope mr-2 text-indigo-200"></i> support@telebridge.com</li>
                <li><i class="fas fa-map-marker-alt mr-2 text-indigo-200"></i> 123, Marine Drive, Colombo</li>
            </ul>
        </div>
    </div>
    <div class="bg-black border-t border-indigo-600 w-full">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex flex-col md:flex-row justify-between items-center text-sm text-indigo-200">
            <p>&copy; 2025 TeleBridge. All rights reserved.</p>
            <div class="flex space-x-4 mt-2 md:mt-0">
                <a href="#" class="hover:text-white"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-twitter"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-linkedin-in"></i></a>
                <a href="#" class="hover:text-white"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>