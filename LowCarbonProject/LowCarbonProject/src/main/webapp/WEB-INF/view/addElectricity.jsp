<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Electricity" %>
<%@ page import="entity.User" %>
<%@ page import="entity.Month" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Consumption Tracker</title>
    <style>
   body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background: radial-gradient(circle, #b3e0ff, #66b3ff);
}

header {
    text-align: center;
    padding: 20px 0;
    background: #fff; /* White background for header */
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
}

header img {
    width: 100%;
    max-height: 100%;
    object-fit: cover;
}

main {
    padding: 20px;
}

form {
    background-color: #3498db; /* Electric blue background color */
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    padding: 30px;
    max-width: 600px;
    margin: 0 auto;
    color: #fff; /* Text color for better contrast on the blue background */
}

h1 {
    text-align: center;
    color: #fff; /* White text color for better contrast on the blue background */
}

h4 {
    color: #fff;
    margin-bottom: 15px;
}

.back-button-container {
    text-align: center;
    margin-top: 20px;
}

.back-button {
    padding: 10px 20px;
    font-size: 18px;
    text-decoration: none;
    color: white;
    background-color: #007BFF;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.back-button:hover {
    background-color: #0056b3;
}

        footer {
            background-color: white;
            color: black;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            display: flex;
            align-items: center;
        }

        footer img {
            width: 100px;
            margin-left: 470px;
            margin-top:20px
        }

        footer p {
            margin-right: 20px;
        }

       
    </style>
</head>
<body>
    <header>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>

    <main>
    <%User user=(User)request.getAttribute("user"); 
     Month month = (Month) request.getAttribute("month");%>
        <form>
            <br>
            <h1>Carbon Consumption from Electricity</h1>
            <h4>User: <%=user.getFullName() %></h4>
          
             <%
                int selectedMonth = Integer.parseInt(request.getParameter("month"));
                String[] monthNames = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
                String selectedMonthName = monthNames[selectedMonth - 1];
            %>
            <h4>Selected Month: <%= selectedMonthName %></h4>
            <h4>Electricity Consumption: <%= month.getElectricity() %> kWh</h4>
            <h4>Carbon Consumption from Electricity: <%= month.getElectricityConsumption() %> kgCO2</h4>
            <div class="back-button-container">
                <a href="<%= request.getContextPath() %>/homePage2" class="back-button">Back to Homepage</a>
            </div>
        </form>
    </main>

    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM
    </footer>
</body>
</html>
