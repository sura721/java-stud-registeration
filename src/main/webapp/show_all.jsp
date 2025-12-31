<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Student" %>
<html>
<head>
    <title>Student List</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: #f4f7f6;
            display: flex;
            justify-content: center;
            padding-top: 50px;
            margin: 0;
        }

        .table-container {
            animation: fadeIn 0.6s ease-in;
            background: white;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
            width: 80%;
            max-width: 800px;
        }

        @keyframes fadeIn {
            from { opacity: 0; } to { opacity: 1; }
        }

        h2 { color: #333; margin-bottom: 20px; }

        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }

        th { text-align: left; padding: 15px; border-bottom: 2px solid #eee; color: #888; font-size: 12px; text-transform: uppercase; }

        td { padding: 15px; border-bottom: 1px solid #eee; color: #444; font-size: 14px; }

        tr:hover { background: #fafafa; }

        .btn-back {
            display: inline-block;
            padding: 10px 20px;
            background: #764ba2;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
            transition: 0.3s;
        }

        .btn-back:hover { background: #667eea; }
    </style>
</head>
<body>
    <div class="table-container">
        <h2>Registered Students</h2>
        <table>
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Email Address</th>
                    <th>Year</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Student> list = (List<Student>) request.getAttribute("studentList");
                    if (list != null) {
                        for (Student s : list) {
                %>
                <tr>
                    <td><strong><%= s.getName() %></strong></td>
                    <td><%= s.getEmail() %></td>
                    <td>Year <%= s.getYear() %></td>
                </tr>
                <% 
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn-back">← Register New Student</a>
    </div>
</body>
</html>