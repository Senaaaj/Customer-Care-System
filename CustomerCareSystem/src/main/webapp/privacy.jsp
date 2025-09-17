<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Privacy and Policy</title>

  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/alpinejs" defer></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  

  <style>
    html, body {
      height: 100%;
      margin: 0;
    }

    body {
      background-image: url('https://media.istockphoto.com/id/1402450534/photo/padlock-with-keyhole-in-data-security-on-circuit-modern-safety-digital-concept.jpg?s=612x612&w=0&k=20&c=vBzRPNY53FvkckEBjRxZBm-3QTQd3bttgglFRPgYOqc='); 
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      color: white;
      display: flex;
      flex-direction: column;
    }

    .glass-box {
      background: rgba(0, 0, 0, 0.6); 
      border-radius: 1rem;
      padding: 2rem;
      border: 1px solid rgba(255, 255, 255, 0.3);
      max-height: 400px;
      overflow-y: auto;
    }

    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background-color: #1e40af; 
    }

    main {
      flex: 1;
    }
  </style>
</head>

<body class="text-white min-h-screen flex flex-col">

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

  <!-- Main Content -->
  <main class="flex-grow flex items-center justify-center px-4 py-16">
    <div class="glass-box max-w-3xl w-full shadow-xl">
      <h1 class="text-3xl font-bold mb-6 text-center">Privacy and Policy</h1>
      <p class="text-sm leading-relaxed mb-4">
        At TeleBridge, we value your privacy and are committed to protecting your personal information.
        We collect only the data necessary to provide high-quality telecommunication services and support.
        This may include contact details, payment information, and support queries.
      </p>
      <p class="text-sm leading-relaxed mb-4">
        All data is stored securely and is never shared with third parties without your explicit consent.
        By using our platform, you agree to our collection and use of information in accordance with this policy.
        If you have any questions or concerns, feel free to reach out via our contact page.
      </p>
      <p class="text-sm leading-relaxed mb-4">
        We use encryption and secure technologies to ensure your data is safe. Cookies may be used to enhance user experience.
        You have the right to access, correct, or delete your personal information. Your trust is important to us, and we strive
        to be transparent about how we handle your data.
      </p>
      <p class="text-sm leading-relaxed mb-4">
        Our team undergoes regular training on data protection. We also comply with local data protection laws and industry standards.
        In case of a data breach, we will inform affected users within 72 hours. You may opt out of marketing communications at any time.
      </p>
      <p class="text-sm leading-relaxed mb-4">
        This policy may be updated periodically. We encourage users to review it regularly. Continued use of our platform indicates
        your acceptance of any updates. If you do not agree, please contact us or discontinue use.
      </p>
      <p class="text-sm leading-relaxed mb-4">
        Thank you for trusting TeleBridge. Your privacy is our priority.
      </p>
    </div>
  </main>

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