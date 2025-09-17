<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Table</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            padding: 0;
            margin: 0;
        }

        header {
            background-color: #1e40af;
            color: white;
            padding: 16px 24px;
            position: sticky;
            top: 0;
            z-index: 50;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        header .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header .nav-left {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        header .nav-left i {
            font-size: 24px;
        }

        header .nav-left span {
            font-size: 20px;
            font-weight: bold;
        }

        header nav a {
            margin-left: 16px;
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        header nav a:hover {
            color: #cbd5e1;
        }

        #searchInput {
            display: block;
            margin: 20px auto;
            padding: 10px;
            width: 50%;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin: 30px 0 20px 0;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: #1e40af;  
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0f2f1;
        }

        td {
            background-color: #e3f2fd;  
            color: #0d47a1;  
            font-weight: bold;
        }

        button {
            padding: 8px 14px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .update-btn {
            background-color: #f9a825;
        }

        .update-btn:hover {
            background-color: #f57f17;
        }

        .delete-btn {
            background-color: #e53935;
        }

        .delete-btn:hover {
            background-color: #c62828;
        }

        .form-button {
            margin: 30px auto;
            text-align: center;
        }

        .form-button a button {
            background-color: #1976d2;
        }

        .form-button a button:hover {
            background-color: #1565c0;
        }

        form {
            display: inline;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

<header>
    <div class="nav">
        <div class="nav-left">
            <i class="fas fa-headset"></i>
            <span>TeleBridge</span>
        </div>
        <nav>
            <a href="Home.jsp">Home</a>
            <a href="Login.jsp">Sign In</a>
            <a href="insertA.jsp">Self Help</a>
            <a href="insertp.jsp">Payment</a>
            <a href="feedbackInsert.jsp">Feedback</a>
            <a href="insert.jsp">Raise a Ticket</a>
        </nav>
    </div>
</header>

<!-- Search bar just under header -->
<input type="text" id="searchInput" placeholder="Search...">

<h2>Product Table</h2>

<table>
    <tr>
        <th>paymentID</th>
        <th>AccountNumber</th>
        <th>PaymentMethod</th>
        <th>expireDate</th>
        <th>cardNo</th>
        <th>securityCode</th>
        <th>Total</th>
        <th>Action</th>
    </tr>  
    <c:forEach var="payments" items="${allpayments}">
        <tr>
            <td>${payments.paymentID}</td>
            <td>${payments.accountNumber}</td>
            <td>${payments.paymentMethod}</td>
            <td>${payments.expireDate}</td>
            <td>${payments.cardNo}</td>
            <td>${payments.securityCode}</td>
            <td>${payments.total}</td>
            <td>
                <a href="updatep.jsp?id=${payments.paymentID}&AccountNumber=${payments.accountNumber}&paymentMethod=${payments.paymentMethod}&expireDate=${payments.expireDate}&cardNo=${payments.cardNo}&securityCode=${payments.securityCode}&total=${payments.total}">
                    <button class="update-btn">Update</button>
                </a>
                <form action="DeleteServletp" method="post">
                    <input type="hidden" name="id" value="${payments.paymentID}">
                    <button type="submit" class="delete-btn">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<div class="form-button">
    <a href="insertp.jsp">
        <button>Go to Payment Form</button>
    </a>
</div>

<script>
function filterTable() {
    var input, filter, table, tr, td, i, j, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td");
        let found = false;
        for (j = 0; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    found = true;
                    break;
                }
            }
        }
        tr[i].style.display = found ? "" : "none";
    }
}

document.getElementById("searchInput").addEventListener("input", filterTable);
</script>

</body>
</html>
