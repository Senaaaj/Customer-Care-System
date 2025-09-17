<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Tickets</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/alpinejs" defer></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
</head>
<body class="flex flex-col min-h-screen bg-white">

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

    <!-- Main Content -->
    <main class="flex-1">
    
        <div class="container mx-auto mt-10">
            <h2 class="text-3xl font-bold text-center text-blue-700 mb-6">My Tickets</h2>
            
            <div class="flex justify-center my-6">
			    <input
			        type="text"
			        id="searchInput"
			        placeholder="Search"
			        class="w-full max-w-md px-4 py-2 border border-gray-300 rounded shadow focus:outline-none focus:ring-2 focus:ring-blue-400">
			</div>
            
            <div class="overflow-x-auto shadow-lg rounded-lg bg-white p-4">           
                <table class="min-w-full divide-y divide-gray-200 text-sm text-left">
                    <thead class="bg-blue-600 text-white">
                        <tr>
                            <th class="px-4 py-2">TID</th>
                            <th class="px-4 py-2">LOCATION</th>
                            <th class="px-4 py-2">CONTACT PREFERENCE</th>
                            <th class="px-4 py-2">CATEGORY</th>
                            <th class="px-4 py-2">PRIORITY</th>
                            <th class="px-4 py-2">SUBJECT</th>
                            <th class="px-4 py-2">DESCRIPTION</th>
                            <th class="px-4 py-2">CUSTOMER ID</th>
                            <th class="px-4 py-2">ACTION</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-300">
                        <c:forEach var="tckt" items="${allTickets}">
                            <tr class="hover:bg-gray-50">
                                <td class="px-4 py-2">${tckt.ticketID}</td>
                                <td class="px-4 py-2">${tckt.location}</td>
                                <td class="px-4 py-2">${tckt.cPreference}</td>
                                <td class="px-4 py-2">${tckt.category}</td>
                                <td class="px-4 py-2">${tckt.priority}</td>
                                <td class="px-4 py-2">${tckt.subject_}</td>
                                <td class="px-4 py-2">${tckt.description_}</td>
                                <td class="px-4 py-2">${tckt.customerID}</td>
                                <td class="px-4 py-2 flex flex-col gap-2 md:flex-row">
                                    <a href="UpdateT.jsp?ticketID=${tckt.ticketID}&location=${tckt.location}&cPreference=${tckt.cPreference}&category=${tckt.category}&priority=${tckt.priority}&subject_=${tckt.subject_}&description_=${tckt.description_}&customerID=${tckt.customerID}" 
                                       class="bg-yellow-400 hover:bg-yellow-500 text-white px-3 py-1 rounded text-sm font-semibold">
                                        Update
                                    </a>
                                    <form action="TicketDeleteServlet" method="post" class="inline">
                                        <input type="hidden" name="ticketID" value="${tckt.ticketID}" />
                                        <button type="submit"
                                            class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded text-sm font-semibold">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="flex justify-center my-8">
                <a href="insert.jsp"
                   class="inline-flex items-center bg-blue-600 hover:bg-blue-700 text-white px-3 py-1 rounded text-sm font-semibold shadow transition">
                    <i class="fas fa-arrow-left mr-2"></i>
                    Back
                </a>
            </div>
        </div>
    </main>
    <script> 
    function filterTable() {
        let input = document.getElementById("searchInput");
        let filter = input.value.toUpperCase();
        let table = document.querySelector("table");
        let tr = table.getElementsByTagName("tr");

        for (let i = 1; i < tr.length; i++) { // Skip header row (i = 0)
            let td = tr[i].getElementsByTagName("td");
            let rowVisible = false;

            for (let j = 0; j < td.length; j++) {
                if (td[j]) {
                    let textValue = td[j].textContent || td[j].innerText;
                    if (textValue.toUpperCase().indexOf(filter) > -1) {
                        rowVisible = true;
                        break;
                    }
                }
            }

            tr[i].style.display = rowVisible ? "" : "none";
        }
    }

    document.getElementById("searchInput").addEventListener("input", filterTable);
</script>
</body>
</html>

