<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.water" %>
<%@ page import="entity.Electricity" %>
<%@ page import="entity.recycle" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Report</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h1 {
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
    </style>
</head>
<body>
    <h1>Water Report</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Month Number</th>
                <th>Amount</th>
                <th>Water Carbon Consumption (WCC)</th>
            </tr>
        </thead>
        <tbody>
        <%List<water>waterList=(List<water>)request.getAttribute("waterList");
        List<Electricity>electricityList=(List<Electricity>)request.getAttribute("electricityList");
                List<recycle>recycleList=(List<recycle>)request.getAttribute("recycleList");
        %>
            <% for (water water : waterList) { %>
                <tr>
                    <td><%= water.getUserFullName() %></td>
                    <td><%= water.getMonthNumber() %></td>
                    <td><%= water.getWAmount() %></td>
                    <td><%= water.getWCC() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <h1>Electricity Report</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Month Number</th>
                <th>Amount</th>
                <th>Electricity Carbon Consumption (ECC)</th>
            </tr>
        </thead>
        <tbody>
            <% for (Electricity electricity : electricityList) { %>
                <tr>
                    <td><%= electricity.getUserFullName() %></td>
                    <td><%= electricity.getMonthNumber() %></td>
                    <td><%= electricity.getEAmount() %></td>
                    <td><%= electricity.geteCC() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <h1>Recycle Report</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Month Number</th>
                <th>Amount</th>
                <th>Recycle Carbon Consumption (RCC)</th>
            </tr>
        </thead>
        <tbody>
            <% for (recycle recycle : recycleList) { %>
                <tr>
                    <td><%= recycle.getUserFullName() %></td>
                    <td><%= recycle.getMonthNumber() %></td>
                    <td><%= recycle.getRAmount() %></td>
                    <td><%= recycle.getrCC() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
