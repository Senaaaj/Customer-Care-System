<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="TeleBridge - Online Customer Care Portal for Telecommunications." />
<title>TeleBridge - Home</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/alpinejs" defer></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-50 text-gray-800">
    <!-- Header Section -->
    <header class="bg-indigo-600 text-white shadow sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex items-center justify-between py-4">
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

    <!-- Hero Section with Slider -->
    <section x-data="heroSlider()" x-init="start()" class="relative overflow-hidden mt-10">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-[400px] md:h-[500px] relative rounded-xl overflow-hidden">
            <template x-for="(slide, index) in slides" :key="index">
                <div x-show="active === index"
                    x-transition:enter="transition-opacity ease-out duration-700"
                    x-transition:enter-start="opacity-0"
                    x-transition:enter-end="opacity-100"
                    class="absolute inset-0 w-full h-full">
                    <img :src="slide.image" alt="" class="w-full h-full object-cover object-center rounded-xl" />
                    <div class="absolute inset-0 bg-black bg-opacity-40 flex items-center">
                        <div class="text-white max-w-xl space-y-4 pl-4 sm:pl-6 lg:pl-8">
                            <h2 class="text-3xl md:text-4xl font-bold" x-text="slide.title"></h2>
                            <p class="text-md md:text-lg" x-text="slide.description"></p>
                        </div>
                    </div>
                </div>
            </template>
            <div class="absolute bottom-4 left-1/2 transform -translate-x-1/2 flex space-x-2">
                <template x-for="(slide, index) in slides" :key="index">
                    <button @click="active = index"
                        :class="{'bg-indigo-600': active === index, 'bg-gray-300': active !== index}"
                        class="w-3 h-3 rounded-full"></button>
                </template>
            </div>
        </div>
    </section>

    <script>
        function heroSlider() {
            return {
                active: 0,
                slides: [
                    {
                        image: 'https://images.pexels.com/photos/8867241/pexels-photo-8867241.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        title: 'Welcome to TeleBridge',
                        description: 'Seamless support for all your telecom needs.'
                    },
                    {
                        image: 'https://images.pexels.com/photos/9242803/pexels-photo-9242803.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        title: 'Always Here to Help',
                        description: '24/7 Customer Care with smart solutions.'
                    },
                    {
                        image: 'https://images.pexels.com/photos/8867432/pexels-photo-8867432.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                        title: 'Raise a Ticket in Seconds',
                        description: 'Get help instantly and track progress live.'
                    }
                ],
                start() {
                    setInterval(() => {
                        this.active = (this.active + 1) % this.slides.length;
                    }, 5000);
                }
            }
        }
    </script>

    <!-- Features Section -->
    <section class="py-16 bg-white text-center">
        <div class="max-w-4xl mx-auto px-4">
            <h2 class="text-2xl md:text-3xl font-bold text-indigo-700 mb-6">Why Choose TeleBridge?</h2>
            <p class="text-gray-600 text-md">From bill payments to technical support, TeleBridge is your one-stop online solution for all telecom services. Fast, secure, and efficient.</p>
        </div>
    </section>

    <!-- Our Services Section -->
    <section class="py-16 bg-gray-50">
      <div class="max-w-7xl mx-auto px-4">
        <h2 class="text-2xl md:text-3xl font-bold text-indigo-700 mb-10 text-center">Our Services</h2>
        <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-4">
          <!-- Service 1 -->
          <div class="bg-white rounded-xl shadow-md overflow-hidden flex flex-col h-full">
            <img src="https://images.pexels.com/photos/7580825/pexels-photo-7580825.jpeg" alt="voice" class="w-full h-48 object-cover">
            <div class="p-6 flex flex-col flex-1">
              <h3 class="text-xl font-semibold mb-2 text-gray-900 text-center">Voice Services</h3>
              <p class="text-gray-700 text-sm text-center flex-1">
                Our Voice Services provide crystal-clear call quality and reliable connectivity for both local and international communication.Whether you're making business calls or staying in touch with loved ones, we ensure seamless and uninterrupted voice communication.
              </p>
            </div>
          </div>
          <!-- Service 2 -->
          <div class="bg-white rounded-xl shadow-md overflow-hidden flex flex-col h-full">
            <img src="https://images.pexels.com/photos/28823298/pexels-photo-28823298/free-photo-of-live-streaming-setup-with-laptop-in-focus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Data" class="w-full h-48 object-cover">
            <div class="p-6 flex flex-col flex-1">
              <h3 class="text-xl font-semibold mb-2 text-gray-900 text-center">Data Services</h3>
              <p class="text-gray-700 text-sm text-center flex-1">
                Stay connected with high-speed internet and data plans tailored to your needs. Our Data Services support browsing, streaming, downloads, and online gaming with consistent performance and wide coverage.
              </p>
            </div>
          </div>
          <!-- Service 3 -->
          <div class="bg-white rounded-xl shadow-md overflow-hidden flex flex-col h-full">
            <img src="https://images.pexels.com/photos/28348054/pexels-photo-28348054/free-photo-of-smart-home-wireless-network-router-device.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="wireless ser" class="w-full h-48 object-cover">
            <div class="p-6 flex flex-col flex-1">
              <h3 class="text-xl font-semibold mb-2 text-gray-900 text-center">Wireless Services</h3>
              <p class="text-gray-700 text-sm text-center flex-1">
                Experience the freedom of mobility with our Wireless Services. We offer advanced mobile and broadband solutions, including 4G/5G networks, Wi-Fi, and portable internet devices for fast, on-the-go access.
              </p>
            </div>
          </div>
          <!-- Service 4 -->
          <div class="bg-white rounded-xl shadow-md overflow-hidden flex flex-col h-full">
            <img src="https://images.pexels.com/photos/442160/pexels-photo-442160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Tech" class="w-full h-48 object-cover">
            <div class="p-6 flex flex-col flex-1">
              <h3 class="text-xl font-semibold mb-2 text-gray-900 text-center">Technical Support</h3>
              <p class="text-gray-700 text-sm text-center flex-1">
                Our dedicated Technical Support team is here to assist you with any issues or inquiries. From troubleshooting to service setup, we ensure timely solutions and expert guidance to keep you connected without disruptions.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer Section -->
    <footer class="bg-gray-900 text-gray-300">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10 grid grid-cols-1 md:grid-cols-3 gap-8">
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
        <div class="bg-gray-800 border-t border-gray-700">
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