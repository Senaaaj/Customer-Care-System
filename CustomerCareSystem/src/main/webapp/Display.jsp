<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Table</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

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

    <!-- Main Content -->
    <div class="max-w-7xl mx-auto bg-white p-6 mt-10 rounded-lg shadow-lg">

        <h2 class="text-3xl font-bold text-center text-blue-700 mb-6">Customer Table</h2>

       <!-- Search Bar -->
        <div class="mb-6">
            <label for="SearchInput" class="block text-gray-700 text-sm font-bold mb-2">Search Bar:</label>
            <input type="text" id="SearchInput" placeholder="Search..." 
                   class="w-1/2 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>

        <!-- Table -->
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-blue-600 text-white">
                    <tr>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Customer ID</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Name</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Email</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Phone</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Address</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Password</th>
                        <th class="px-6 py-3 text-left text-sm font-semibold uppercase">Action</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-300" id="CustomerTable">
                    <c:forEach var="customers" items="${allcustomers}">
                        <tr class="hover:bg-gray-100">
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.customerID}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.cName}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.email}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.phone}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.address}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">${customers.passw}</td>
                            <td class="px-6 py-4 text-sm text-gray-900">
                                <div class="flex space-x-2">
                                    <a href="Update.jsp?customerID=${customers.customerID}&cName=${customers.cName}&email=${customers.email}&phone=${customers.phone}&address=${customers.address}&passw=${customers.passw}"
                                       class="bg-yellow-400 hover:bg-yellow-500 text-white font-semibold py-1 px-3 rounded shadow">
                                        Update
                                    </a>
                                    <form action="DeleteServlet" method="post">
                                        <input type="hidden" name="customerID" value="${customers.customerID}" />
                                        <button type="submit"
                                                class="bg-red-500 hover:bg-red-600 text-white font-semibold py-1 px-3 rounded shadow">
                                            Delete
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Back to Home Button -->
        <div class="flex justify-center mt-10">
            <a href="Home.jsp" 
               class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-lg shadow">
               Back to Home
            </a>
        </div>

    </div>

    <!-- JavaScript for Search Filter -->
    <script>
        document.getElementById("SearchInput").addEventListener("input", function () {
            var filter = this.value.toUpperCase();
            var table = document.getElementById("CustomerTable");
            var rows = table.getElementsByTagName("tr");

            for (var i = 0; i < rows.length; i++) {
                var cells = rows[i].getElementsByTagName("td");
                var match = false;
                for (var j = 0; j < cells.length; j++) {
                    if (cells[j]) {
                        var textValue = cells[j].textContent || cells[j].innerText;
                        if (textValue.toUpperCase().indexOf(filter) > -1) {
                            match = true;
                            break;
                        }
                    }
                }
                rows[i].style.display = match ? "" : "none";
            }
        });
    </script>

</body>
</html>