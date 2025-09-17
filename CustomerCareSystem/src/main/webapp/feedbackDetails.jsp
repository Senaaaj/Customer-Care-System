<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Table</title>
    <style>
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
    
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        /* Common button styles */
.btn {
  display: inline-block;
  padding: 12px 18px;
  font-size: 16px;
  font-weight: bold;
  border-radius: 8px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  border: none;
  transition: all 0.3s ease;
}

/* Common Button Styles */
.btn-update,
.btn-delete {
  display: inline-block;
  padding: 10px 20px;
  border: none;
  border-radius: 6px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 16px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  transition: background 0.3s ease, box-shadow 0.3s ease, transform 0.1s ease;
  cursor: pointer;
  outline: none;
}

/* Update Button (Blue Theme) */
/* Common Button Styles */
.btn-update,
.btn-delete {
  display: inline-block;
  padding: 6px 14px; /* Smaller padding */
  border: none;
  border-radius: 30px; /* Pill-shaped */
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 14px; /* Smaller font */
  font-weight: 500;
  text-align: center;
  text-decoration: none;
  transition: all 0.2s ease;
  cursor: pointer;
  outline: none;
}

/* Update Button (Soft Blue) */
.btn-update {
  background-color: #2196f3;
  color: white;
}

.btn-update:hover {
  background-color: #1976d2;
  transform: translateY(-1px);
  box-shadow: 0 2px 6px rgba(25, 118, 210, 0.2);
}

.btn-update:active {
  transform: scale(0.96);
  box-shadow: none;
}

/* Delete Button (Soft Red) */
.btn-delete {
  background-color: #f44336;
  color: white;
}

.btn-delete:hover {
  background-color: #d32f2f;
  transform: translateY(-1px);
  box-shadow: 0 2px 6px rgba(211, 47, 47, 0.2);
}

.btn-delete:active {
  transform: scale(0.96);
  box-shadow: none;
}

/* Focus Styles */
.btn-update:focus,
.btn-delete:focus {
  outline: 2px solid rgba(0, 0, 0, 0.2);
  outline-offset: 2px;
}



/* Responsive button width */
@media (max-width: 768px) {
  .btn {
    width: 100%;
    display: block;
    margin-bottom: 10px;
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
      <li><a href="insertp.jsp">Payment</a></li>
      <li><a href="feedbackInsert.jsp">Feedback</a></li>
      <li><a href="insert.jsp">Raise a Ticket</a></li>
    </ul>
  </nav>
</header>
<h2>Feedback Table</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Connection</th>
        <th>Branch</th>
        <th>Satisfaction</th>
        <th>Recommendation</th>
        <th>Comments</th>
        <th>Action</th>
    </tr>
    <c:forEach var="feedbacks" items="${allFeedbacks}">
        <tr>
            <td>${feedbacks.fid}</td>
            <td>${feedbacks.fname}</td>
            <td>${feedbacks.fphone}</td>
            <td>${feedbacks.femail}</td>
            <td>${feedbacks.connection_}</td>
            <td>${feedbacks.branch}</td>
            <td>${feedbacks.satisfaction}</td>
            <td>${feedbacks.recommendation}</td>
            <td>${feedbacks.comments}</td>
            <td>
            <a href="feedbackUpdate.jsp?fid=${feedbacks.fid}" >
             <button type="button" class="btn btn-update">Edit</button>
            </a>
            
          
            
          
            <form method="post" action="deleteFeedback">
              <input type="hidden" name="fid" value="${feedbacks.fid}">
  
    <button type="submit" class="btn btn-delete">Delete</button>
</form>
            
            </td>
        </tr>
    </c:forEach>
</table>
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
</body>
</html>