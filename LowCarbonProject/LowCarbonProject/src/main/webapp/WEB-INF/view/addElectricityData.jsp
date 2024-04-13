<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Consumption Tracker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
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
        }

        footer img {
            width: 100px; 
            margin-left: 470px; 
            margin-top:20px
        }
        footer p{
        margin-right:10px;}
        main {
            padding: 10px;
            margin-top:10px
        }

        form {
    background-color: #3498db; /* Electric blue background color */
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    height: 570px;
    color: #fff; /* Text color for better contrast on the blue background */
}

        label {
            display: block;
            margin-bottom: 10px;
            margin-top:10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #ADD8E6;
            color: black;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            
        }

        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
       <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>
    
    <main>
    <%User user=(User)request.getAttribute("user"); %>
    
        <form action="addElectricity" method="post">
        <h4>Hello <%=user.getFullName() %></h4>
            <label for="month"><h2>Select the Month:</h2></label>
                  <select id="month" name="month" required>
                        <option value="1">January</option>
                        <option value="2">February</option>
                        <option value="3">March</option>
                        <option value="4">April</option>
                        <option value="5">May</option>
                        <option value="6">June</option>
                        <option value="7">July</option>
                        <option value="8">August</option>
                        <option value="9">September</option>
                        <option value="10">October</option>
                        <option value="11">November</option>
                        <option value="12">December</option>
                  </select><br>
            
            <label for="amount"><h2>Enter your Electricity Consumption(kWh):</h2></label>
            <input type="number" id="amount" name="amount" step="any" required><br>
             <h2>Upload file</h2>
<div style="text-align: center;">
    <div style="background-color: #fff; padding: 20px; border: 1px solid #ccc; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 500px; height:175px;display: inline-block;">
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Upload.jpg" alt="Header Image" style="max-width: 100%; height: 50px;">
        <input type="file" id="file" name="file" accept=".pdf, .jpg, .jpeg, .png" required style="display: block; border: 1px solid #ccc; border-radius: 5px; width:97%;height:40px ">
        <h3  id="uploadMessage">Browse to upload file</h3>
        
        <p style="color: blue;">Only JPEG, PNG, PDF with a max size of 15MB</p> 
    </div>
</div>
            
            <button type="submit">Submit & Proceed</button>
        </form>
        <div id="successMessage" style="text-align: center; margin-top: 20px; display: none;">
            <p style="color: green;">File uploaded successfully!</p>
        </div>
    </main>

    <footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM
        
        </footer>
</body>
<script>
        function showUploadMessage() {
            document.getElementById("uploadMessage").style.display = "none";
            document.getElementById("successMessage").style.display = "block";
        }
    </script>
</html>
