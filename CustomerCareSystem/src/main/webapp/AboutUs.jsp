<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>About Us - TeleBridge</title>
  
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/alpinejs" defer></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f5f9ff;
      color: #222;
      line-height: 1.7;
    }

    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background-color: #1e40af; 
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

    .hero {
      background: linear-gradient(135deg, #003d99, #3399ff);
      color: white;
      padding: 100px 20px 60px;
      text-align: center;
    }

    .hero h2 {
      font-size: 42px;
      margin-bottom: 15px;
    }

    .hero p {
      font-size: 20px;
      max-width: 700px;
      margin: 0 auto;
    }

    .section {
      max-width: 1000px;
      margin: 60px auto;
      padding: 0 20px;
    }

    .section h3 {
      color: #003d99;
      font-size: 28px;
      margin-bottom: 20px;
    }

    .section p {
      margin-bottom: 30px;
    }

    .vision {
      background-color: #e6f0ff;
      padding: 40px;
      border-left: 6px solid #0073e6;
      border-radius: 8px;
      margin-bottom: 60px;
    }

    .cards {
      display: flex;
      flex-wrap: wrap;
      gap: 25px;
    }

    .card {
      background-color: white;
      padding: 25px;
      flex: 1;
      min-width: 260px;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.05);
      transition: transform 0.3s;
    }

    .card:hover {
      transform: translateY(-5px);
    }

    .card h4 {
      color: #0066cc;
      margin-bottom: 12px;
    }

    .cta {
      text-align: center;
      margin: 80px auto 40px;
    }

    @media (max-width: 768px) {
      .cards {
        flex-direction: column;
      }

      header {
        flex-direction: column;
        align-items: flex-start;
      }

      nav ul {
        flex-direction: column;
        gap: 10px;
        margin-top: 10px;
      }

      .hero h2 {
        font-size: 32px;
      }

      .hero p {
        font-size: 18px;
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
</head>
<body>

  <!-- Header -->
  <header class="header text-white shadow w-full">
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

  <section class="hero">
    <h2>Connecting People, Powering Possibilities</h2>
    <p>At TeleBridge, we believe in more than just customer care—we believe in creating communication that matters.</p>
  </section>

  <section class="section">
    <h3>Our Story</h3>
    <p>
      Founded with a vision to transform telecom support, TeleBridge emerged as a beacon of innovation and trust.
      We knew customers deserved more—faster solutions, deeper empathy, and a partner that truly listens. That’s
      why we built a support ecosystem that combines cutting-edge technology with real human warmth.
    </p>
  </section>

  <section class="section vision">
    <h3>Our Vision</h3>
    <p>
      To be the heartbeat of telecom care—where every issue is solved with speed, every voice is heard with respect,
      and every interaction makes life easier. We don’t just answer queries. We build relationships.
    </p>
  </section>

  <section class="section">
    <h3>Why Choose TeleBridge?</h3>
    <div class="cards">
      <div class="card">
        <h4>Lightning-Fast Support</h4>
        <p>No more waiting in endless queues. Our AI-driven system connects you with the right expert in seconds.</p>
      </div>
      <div class="card">
        <h4>Truly Human Touch</h4>
        <p>Behind every screen is a team that listens, understands, and responds with care and clarity.</p>
      </div>
      <div class="card">
        <h4>Seamless Integration</h4>
        <p>Use our platform across all your devices with one login, one dashboard, and total control.</p>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-black text-white w-full">
    <div class="px-4 sm:px-6 lg:px-8 py-10 grid grid-cols-1 md:grid-cols-3 gap-8 max-w-7xl mx-auto">
      <div>
        <div class="flex items-center space-x-2 mb-4">
          <i class="fas fa-headset text-white text-2xl"></i>
          <span class="text-xl font-bold text-white">TeleBridge</span>
        </div>
        <p class="text-sm text-gray-300">Your trusted platform for instant telecom support, payments, ticketing, and more.</p>
      </div>
      <div>
        <h3 class="text-white text-lg font-semibold mb-4">Quick Links</h3>
        <ul class="space-y-2 text-sm">
          <li><a href="Home.jsp" class="hover:text-gray-200"><i class="fas fa-home mr-2"></i>Home</a></li>
          <li><a href="insertp.jsp" class="hover:text-gray-200"><i class="fas fa-credit-card mr-2"></i>Payment</a></li>
          <li><a href="AboutUs.jsp" class="hover:text-gray-200"><i class="fas fa-ticket-alt mr-2"></i>About Us</a></li>
          <li><a href="privacy.jsp" class="hover:text-gray-200"><i class="fas fa-comment-dots mr-2"></i>Privacy and Policy</a></li>
        </ul>
      </div>
      <div>
        <h3 class="text-white text-lg font-semibold mb-4">Contact Us</h3>
        <ul class="space-y-3 text-sm">
          <li><i class="fas fa-phone-alt mr-2 text-white"></i>+94 74 016 7195</li>
          <li><i class="fas fa-envelope mr-2 text-white"></i> support@telebridge.com</li>
          <li><i class="fas fa-map-marker-alt mr-2 text-white"></i> 123, Marine Drive, Colombo</li>
        </ul>
      </div>
    </div>
    <div class="bg-black w-full">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex flex-col md:flex-row justify-between items-center text-sm text-gray-300">
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