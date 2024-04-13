<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MBIP Carbon Consumption Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.25.0/dist/css/bootstrap-icons.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
            background-image: url('file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/homepage.jpg');
            position: relative;
            margin: 0;
            color: #333;
        }

        header {
            text-align: center;
         
           
            color: white;
        }

        header img {
            width: 100%;
            max-height: 100%;
            object-fit: cover;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        main {
            padding: 20px;
        }

        h1, h4 {
            color: #292b2c;
        }

        .dashboard-buttons-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .dashboard-button {
            padding: 20px 40px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        .water-button {
            background-color: #007BFF; 
        }

        .electricity-button {
            background-color: #28a745; 
        }

        .recycle-button {
            background-color: #dc3545; 
        }

        .dashboard-button:hover {
            opacity: 0.9; 
        }

        .logout-button {
            padding: 10px 20px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            background-color: #6c757d;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .logout-button:hover {
            background-color: #495057;
        }

        footer {
    background-color: white;
    color: black;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
    display: flex;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    align-items: center;
    justify-content: center; /* Center content horizontally */
    text-align: center; /* Center content vertically */
}

footer img {
    width: 100px;
    margin-right: 10px;
}

footer p {
    margin-left: 10px;
}



       .sidebar {
    height: 68%;
    width: 250px;
    
    position: fixed;
    z-index: 1;
    left: 0;
    background-color: rgba(0, 128, 0, 0.8); /* RGBA color with alpha channel (0.8 for 80% transparency) */
    padding-top: 20px;
    color: white;
    text-align: center;
}

        .sidebar a {
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .main-content {
            margin-left: 250px; /* Adjust this value based on the sidebar width */
            padding: 20px;
        }
          .bill-box {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
            text-align: center;
            width: 200px; /* Adjust the width as needed */
            height: 150px; /* Adjust the height as needed */
            display: inline-block;
        }
             .water-box {
            background-color: rgba(0, 123, 255, 0.8); /* Semi-transparent blue background */
        }

        .electricity-box {
            background-color: rgba(40, 167, 69, 0.8); /* Semi-transparent green background */
        }

        .recycle-box {
            background-color: rgba(220, 53, 69, 0.8); /* Semi-transparent red background */
        }
    </style>
</head>
<body>
   <header>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>
<% User user=(User)request.getAttribute("user");
   int waterBill=(Integer)request.getAttribute("waterBill");
   int elecBill=(Integer)request.getAttribute("elecBill");
   int recylcleBill=(Integer)request.getAttribute("recycleBill");
   %>

  <div class="sidebar">
        <h2>Welcome <%=user.getFullName() %></h2>
        <a href="<%= request.getContextPath() %>/changePassword">Change Password</a>
        <a href="<%= request.getContextPath() %>/homePage1">Logout</a>
    </div>

        <div class="main-content">
        

        <main>
            <h1>Welcome to MBIP Carbon Consumption Tracker</h1>
            <h4>User: <%=user.getFullName() %></h4>
        <div class="bill-box water-box">
         <i class="bi bi-droplet"></i>
            <h2>Total Water Bills Uploaded</h2>
            <p><%=waterBill %></p> <!-- Replace with the actual count of water bills -->
        </div>

        <div class="bill-box electricity-box">
         <i class="bi bi-lightning"></i>
            <h2>Total Electricity Bills Uploaded</h2>
            <p><%=elecBill %></p> <!-- Replace with the actual count of electricity bills -->
        </div>

        <div class="bill-box recycle-box">
        <i class="bi bi-recycle"></i>
            <h2>Total Recycle Bills Uploaded</h2>
            <p><%=recylcleBill %></p> <!-- Replace with the actual count of recycle bills -->
        </div>
            <div class="dashboard-buttons-container">
                <a href="<%= request.getContextPath() %>/addWaterData" class="dashboard-button water-button">Upload Water Bill</a>
                <a href="<%= request.getContextPath() %>/addElectricityData" class="dashboard-button electricity-button">Upload Electricity Bill</a>
                <a href="<%= request.getContextPath() %>/addRecycleData" class="dashboard-button recycle-button">Upload Recycle Bill</a>
            </div>
            
          
        </main>
        
       </div>

    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM
    </footer>
    
</body>
</html>
