<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
* {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #eef2f3;
      padding: 20px;
    }
    header {
      background-color: #4B3FF1;
      color: white;
      padding: 20px 40px;
      position: sticky;
      top: 0;
      z-index: 1000;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 22px;
      font-weight: bold;
    }

    nav ul {
      list-style: none;
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
      font-weight: bold;
      transition: color 0.3s;
    }

    nav ul li a:hover {
      color: #ffcc00;
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #333;
      font-size: 28px;
    }

    form {
      max-width: 700px;
      margin: 0 auto;
      background-color: #fff;
      padding: 30px 35px;
      border-radius: 12px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
      transition: box-shadow 0.3s ease;
    }

    form:hover {
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    label {
      display: block;
      margin-top: 20px;
      margin-bottom: 8px;
      font-weight: 600;
      color: #444;
    }

    label::after {
      content: "*";
      color: red;
      display: inline-block;
      margin-left: 5px;
    }

    label[for="branch"],
    label[for="recommendation"],
    label[for="comments"]::after {
      content: ""; /* Don't show * for optional fields */
    }

    input[type="text"],
    input[type="tel"],
    input[type="email"],
    select,
    textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      background-color: #fafafa;
      font-size: 15px;
      transition: border 0.3s ease, background-color 0.3s ease;
    }

    input:focus,
    select:focus,
    textarea:focus {
      border-color: #007bff;
      background-color: #fff;
      outline: none;
    }

    textarea {
      resize: vertical;
      min-height: 100px;
    }

    button[type="submit"] {
      display: block;
      width: 100%;
      margin-top: 25px;
      background-color: #007bff;
      color: #fff;
      padding: 14px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
      background-color: #0056b3;
    }

    @media (max-width: 768px) {
      form {
        padding: 20px;
      }
      h2 {
        font-size: 24px;
      }
    }
    footer {
      background-color: #1a1a1a;
      color: #ccc;
    }

    footer .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 40px 20px;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
    }

    footer h3 {
      color: white;
      margin-bottom: 15px;
    }

    footer a {
      color: #ccc;
      text-decoration: none;
      display: block;
      margin: 5px 0;
      transition: color 0.3s;
    }

    footer a:hover {
      color: #66b3ff;
    }

    footer .bottom-bar {
      background-color: #111;
      padding: 15px 20px;
      text-align: center;
      font-size: 14px;
      color: #888;
    }

    .socials a {
      margin-right: 10px;
      color: #ccc;
      transition: color 0.3s;
    }

    .socials a:hover {
      color: #66b3ff;
    }
    
</style>

<title>Insert title here</title>
</head>
<body>
<header>
  <div class="logo">
    <i class="fas fa-headset"></i>
    <span>TeleBridge</span>
  </div>
  <nav>
    <ul>
      <li><a href="Home.jsp">Home</a></li>
      <li><a href="Login.jsp">Sign In</a></li>
      <li><a href="insertA.jsp">Sign Up</a></li>
      <li><a href="#">Payment</a></li>
      <li><a href="#">Feedback</a></li>
      <li><a href="insert.jsp">Raise a Ticket</a></li>
    </ul>
  </nav>
</header>
<div class="feedback-form">

    <form id="form" action="feedbackInsertServlet" method="POST" >
        <h2>Customer Feedback Form</h2>
      <label for="name">Your Name *</label>
      <input type="text" id="name" name="fname" required>

      <label for="phone">Phone Number *</label>
      <input type="tel" id="phone" name="fphone" required>

      <label for="email">Email *</label>
      <input type="email" id="email" name="femail" required>

      <label for="connection">Feedback Type *</label>
      <select id="connection" name="connection_" required>
        <option value="" disabled selected>Select</option>
         <option value="services">Our Services</option>
          <option value="products">Our Products</option>
          <option value="branches">Branches</option>
          <option value="call-centre">Call Centre</option>
          <option value="complaint-resolution">Complaint Resolution</option>
          <option value="online-support">Online Support</option>
          <option value="email-webchat">Email & Webchat Service</option>
      </select>
      
      <label for="branch">Branch Visited</label>
      <select id="branch" name="branch">
        <option value="" disabled selected>Select</option>
        <option value="airport">Airport</option>
        <option value="anuradhapura">Anuradhapura</option>
        <option value="batticaloa">Batticaloa</option>
        <option value="flagship-store">Flagship Store</option>
        <option value="jaffna">Jaffna</option>
        <option value="kandy">Kandy</option>
        <option value="kurunegala">Kurunegala</option>
        <option value="liberty-plaza">Liberty Plaza</option>
        <option value="matara">Matara</option>
        <option value="ogf">OGF</option>
        <option value="ratnapura">Ratnapura</option>
        <option value="wtc">WTC</option>
        <option value="other">Other</option>
      </select>

      <label for="satisfaction">Satisfaction Level *</label>
      <select id="satisfaction" name="satisfaction" required>
        <option value="" disabled selected>Select</option>
        <option value="extremely-satisfied">Extremely Satisfied</option>
        <option value="satisfied">Satisfied</option>
        <option value="somewhat-satisfied">Somewhat Satisfied</option>
        <option value="dissatisfied">Dissatisfied</option>
        <option value="extremely-dissatisfied">Extremely Dissatisfied</option>
      </select>

      <label for="recommendation">Would you recommend us to a friend or colleague?</label>
      <select id="recommendation" name="recommendation">
        <option value="" disabled selected>Select</option>
        <option value="not-likely">Not at all likely (0-6)</option>
        <option value="neutral">Neutral (7-8)</option>
        <option value="extremely-likely">Extremely likely (9-10)</option>
      </select>

      <label for="comments">Additional Comments</label>
      <textarea id="comments" name="comments" rows="4"></textarea>

      <button type="submit">Submit Feedback</button>
    </form>
  </div>
  <%-- FOOTER --%>
<footer>
  <div class="container">
    <div>
      <h3><i class="fas fa-headset"></i> TeleBridge</h3>
      <p>Your trusted platform for instant telecom support, payments, ticketing, and more.</p>
    </div>
    <div>
      <h3>Quick Links</h3>
      <a href="#"><i class="fas fa-home"></i> Home</a>
      <a href="#"><i class="fas fa-credit-card"></i> Payment</a>
      <a href="#"><i class="fas fa-ticket-alt"></i> Raise a Ticket</a>
      <a href="#"><i class="fas fa-comment-dots"></i> Feedback</a>
    </div>
    <div>
      <h3>Contact Us</h3>
      <p><i class="fas fa-phone-alt"></i> +94 74 016 7195</p>
      <p><i class="fas fa-envelope"></i> support@telebridge.com</p>
      <p><i class="fas fa-map-marker-alt"></i> 123, Marine Drive, Colombo</p>
    </div>
  </div>
  <div class="bottom-bar">
    <p>&copy; 2025 TeleBridge. All rights reserved.</p>
    <div class="socials">
      <a href="#"><i class="fab fa-facebook-f"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-linkedin-in"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
</footer>
<script>
  document.querySelector("form").addEventListener("submit", function (e) {
    const phone = document.getElementById("phone").value.trim();
    const email = document.getElementById("email").value.trim();

    const phonePattern = /^[0-9]{10}$/;
    const emailPattern = /^[^@\s]+@[^@\s]+\.[^@\s]+$/;

    let valid = true;
    let message = "";

    if (!phonePattern.test(phone)) {
      message += "❌ Phone number must be exactly 10 digits.\n";
      valid = false;
    }

    if (!emailPattern.test(email)) {
      message += "❌ Please enter a valid email address.\n";
      valid = false;
    }

    if (!valid) {
      alert(message);
      e.preventDefault();
    }
  });
</script>

  
</body>
</html>