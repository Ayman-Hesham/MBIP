<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >form {

    max-width: 800px;
    /* Adjust the maximum width as needed */
    margin: 0 auto;
    padding: 80px;
    background-color: #f4f4f4;
    border-radius: 8px;
    box-shadow: 0 0 10px rgb(0, 255, 55);
    position: relative;
    margin-top: 10%;
    margin-bottom: 10%;    
    margin-left: 30%;
    margin-right: 30%;

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

        main {
            padding: 10px;
            margin-top:10px
        }

label,
input,
input[type="file"],
input[type="submit"],
h2,
p,
a {
    width: 80%;
    box-sizing: border-box;
    margin-bottom: 10px;
    justify-content: flex-end;
    margin-left: 7%;
    margin-right: 7%;

}

input[type="file"] {
    margin-bottom: 20px;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

h2 {
    text-align: center;
}

label {
    display: block;
    margin: 10px 0 5px;
}

input {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

p {
    text-align: center;
    margin-top: 15px;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.container {
    width: 50%;
    margin: auto;
    padding: 20px;
    text-align: center;
}</style>
</head>
<body>
<header>
       <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/Untitled.jpg" alt="Header Image">
    </header>
    <form id="login-form" class="form-box" onsubmit="login(); return false;" action="loginServlet" method="post">
        <h1>Login</h1>
        <label for="fullName">User Name</label>
        <input type="text" id="fullName" name="fullName" placeholder="User Name" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Password" required>
        <br>
        <button type="submit">Login</button>
        <p>Not a User <a href="<%= request.getContextPath() %>/Registration"> Sign-Up</a> </p>
    </form>
<footer>
        <img src="file:///C:/Users/User/Documents/workspace-spring-tool-suite-4-4.5.0.RELEASE/MBIPProject/src/image/footer.jpg" alt="Footer Image">
        &copy; 2023 MBIP SYSTEM
        
        </footer>
    
    <script src="script.js"></script>
</body>
</html>