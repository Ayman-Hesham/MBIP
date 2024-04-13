<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
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
    <h2>Delete User</h2>

    <!-- Display user information in a table -->
    <table>
        <tr>
            <th>Full Name</th>
            <th>Phone Number</th>
            <th>Address</th>
        </tr>
        <% List<User>userList=(List<User>)request.getAttribute("userList"); %>
        <% for (User user : userList) { %>
            <tr>
                <td><%= user.getFullName() %></td>
                <td><%= user.getPhoneNumber() %></td>
                <td><%= user.getAddress() + ", " + user.getCity() + ", " + user.getState() + " " + user.getZipCode() %></td>
            </tr>
        <% } %>
    </table>

    <hr>

    <!-- Display form for deleting user -->
    <form action="<%= request.getContextPath() %>/deleteUser" method="post">
        <label for="userName">Enter User Name to Delete:</label>
        <input type="text" id="userName" name="userName" required>
        <input type="submit" value="Delete User">
    </form>
</body>
</html>
