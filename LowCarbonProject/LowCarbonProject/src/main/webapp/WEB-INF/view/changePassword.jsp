<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<style >form {
        max-width: 400px;
        margin: 0 auto;
        padding: 30px;
        background-color: #f4f4f4;
        border-radius: 8px;
        box-shadow: 0 0 10px rgb(0, 255, 55);
        position: relative;
        margin-top: 10%;
        margin-bottom: 10%;
    }

    h2, h3 {
        text-align: center;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #555;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }</style>
</head>
<body>
    <h2>Change Password</h2>
    <%User user=(User)request.getAttribute("user"); %>
    <h3>User: <%=user.getFullName() %></h3>
    <form action="<%= request.getContextPath() %>/changePasswordResult" method="post">
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required><br>

        <label for="confirmNewPassword">Confirm New Password:</label>
        <input type="password" id="confirmNewPassword" name="confirmNewPassword" required><br>

        <input type="submit" value="Change Password">
    </form>
</body>
</html>