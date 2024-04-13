<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
            background-image: url('file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/homepage.jpg');
            position: relative;
            margin: 0;
        }

        header {
            text-align: center;
            height: 130px;
        }

        header img {
            width: 100%;
            max-height: 100%;
            object-fit: cover;
        }

        main {
            padding: 20px;
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


        .upload-buttons-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 500px; 
        }

        .upload-button {
            padding: 20px 40px;
            font-size: 18px;
            text-decoration: none;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .water-button {
            background-color: #007BFF; 
        }

        .electricity-button {
            background-color: #28a745; 
            margin-left: 20px;
        }

        .recycle-button {
            background-color: #dc3545; 
            margin-left: 20px; 
        }

        .upload-button:hover {
            opacity: 0.9; 
        }
        .sidebar {
    height: 73.5%;
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
        }

        .logout-button:hover {
            background-color: #495057;
        }
        .water-box{
         position: fixed;
    margin-top: 55px;
    margin-left: 1100px;
    height: 200px;
    width: 450px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    transition: background-color 0.3s ease;
    background-color: rgba(173, 216, 230, 0.8);
        }
        .water-box p{
          margin: 0;
    font-size: 18px;
    color: #333;
        }
             .electricity-box{
         position: fixed;
    margin-top: 390px;
    margin-left: 260px;
    height: 200px;
    width: 450px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    transition: background-color 0.3s ease;
      background-color: rgba(144, 238, 144, 0.8);
        }
        .electricity-box p{
          margin: 0;
    font-size: 18px;
    color: #333;
        }
            .recycle-box{
         position: fixed;
    margin-top: 390px;
    margin-left: 1100px;
    height: 200px;
    width: 450px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    transition: background-color 0.3s ease;
      background-color: rgba(255, 182, 193, 0.8);
        }
        .recycle-box p{
          margin: 0;
    font-size: 18px;
    color: #333;
        }
.user-box {
    position: fixed;
    margin-top: 10px;
    margin-left: 260px;
    height: 300px;
    width: 500px;
    padding: 20px;
    border-radius: 10px;
    background-color: rgba(0, 128, 0, 0.8);
    box-shadow: 0 0 20px rgba(0, 128, 0, 0.8);;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    transition: background-color 0.3s ease;
}

.user-box p {
    margin: 0;
    font-size: 18px;
    color: #333; /* Dark text color */
}

.view-button {
    padding: 10px 20px;
    margin-top: 20px;
    font-size: 16px;
    cursor: pointer;
    background-color: #007BFF; /* Button color */
    color: white; /* Text color */
    border: none;
    border-radius: 5px;
}

.user-box:hover {
      background-color: rgba(255, 255, 255, 0.9); /* Light background color on hover */
}

.user-box:hover .view-button {
    background-color: #0056b3; /* Darker color on button hover */
}

 h1, h2, h3, h4, h5, h6, p, a, button {
            font-family: 'Roboto', sans-serif;
        }

        /* Additional styling for specific elements */
        h1 {
            color: #007BFF; /* Change the color as needed */
        }


    </style>
</head>
<body>
<%Admin admin=(Admin)request.getAttribute("admin"); 
  int totalUser=(Integer)request.getAttribute("totalUser");
  int totalWater=(Integer)request.getAttribute("totalWater");
  int totalElec=(Integer)request.getAttribute("totalElec");
  int totalRec=(Integer)request.getAttribute("totalRec");
  %>
    <header>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>
    <div class="sidebar">
        
        <h2>Welcome <%=admin.getFullName() %></h2>
        <a href="<%= request.getContextPath() %>/deleteUser">Delete User Account</a>
        <a href="<%= request.getContextPath() %>/viewReport" >Show Report</a>
            
            <a href="<%= request.getContextPath() %>/viewReportUser" >Show User Report</a>
        <a href="<%= request.getContextPath() %>/homePage1">Logout</a>
        
        
    </div>
      <div class="user-box">
        <h1>Total Users </h1>
        <br>
        <br>
        <p><%=totalUser %></p>
        <a href="<%= request.getContextPath() %>/viewUser" class="view-button">View</a>
    </div>
    <div class="water-box">
    <h1>Total Water bill Uploaded</h1>
    <br><br>
    <p><%=totalWater %></p>
    </div>
     <div class="electricity-box">
    <h1>Total Electricity bill Uploaded</h1>
    <br><br>
    <p><%=totalElec %></p>
    </div>
       <div class="recycle-box">
    <h1>Total Recycle bill Uploaded</h1>
    <br><br>
    <p><%=totalRec %></p>
    </div>
    <main>
       
        
       
      
        
        
        
    </main>

    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM

        
    </footer>
</body>
</html>