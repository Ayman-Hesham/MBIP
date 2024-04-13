<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Report</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }

    h2 {
        text-align: center;
        color: #007BFF; /* Blue color for header */
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #fff; /* White background for tables */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #007BFF;
        color: white;
    }

    form {
        margin-top: 20px;
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #333;
    }

    input[type="text"] {
        padding: 8px;
        width: 200px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        padding: 10px 20px;
        background-color: #007BFF;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <table border="1">
        <tr>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>Address</th>
        </tr>
        <%List<User>userList=(List<User>)request.getAttribute("userList"); %>
        <% for (User user : userList) { %>
            <tr>
                <td><%= user.getFullName() %></td>
                <td><%= user.getPhoneNumber() %></td>
                <td><%= user.getAddress() + ", " + user.getCity() + ", " + user.getState() + " " + user.getZipCode() %></td>
            </tr>
        <% } %>
    </table>
    <h2>Enter User Full Name to View Report</h2>

    <form action="viewReportUserData" method="post">
        <label for="userFullName">User Full Name:</label>
        <input type="text" id="userFullName" name="userFullName" required>
        <br>
        <br>
        <input type="submit" value="View Report">
    </form>
</body>
</html>
