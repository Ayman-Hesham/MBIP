<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MBIP Carbon Consumption</title>
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


        .button {
            padding: 10px 20px;
            font-size: 18px;
            margin: 0 20px;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
         .container {
            backdrop-filter: blur(2px);
            background-color: rgba(255, 255, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            margin-top: 150px;
        }
    </style>
</head>
<body>
    <header>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>

    <main>
    <br>
    <br>
    <br>
    <br>
    
   
    <div class="container d-flex flex-column align-items-center justify-content-center text-center">
        <h1>Welcome to MBIP Carbon Consumption Tracker</h1>
        <br>
        <div class="button-container">
            <a href="<%= request.getContextPath() %>/AdminLogin" class="button">Admin Login</a>
            <a href="<%= request.getContextPath() %>/Login" class="button">Login</a>
            <a href="<%= request.getContextPath() %>/Registration" class="button">Register</a>
        </div>
    </div>
    </main>
    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM
        
        </footer>
</body>
</html>