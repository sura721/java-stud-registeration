<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Student" %>
<html>
<head>
    <title>Database | Students</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg: #0b0e14;
            --card: #151921;
            --border: #2d333f;
            --text: #f3f4f6;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg);
            color: var(--text);
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
        }

        .container {
            width: 100%;
            max-width: 900px;
            animation: fadeIn 0.4s ease;
        }

        @keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 32px;
        }

        h2 { font-size: 24px; font-weight: 700; margin: 0; }

        .btn-new {
            padding: 8px 16px;
            background: #2d333f;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 600;
            border: 1px solid #3f444e;
            transition: 0.2s;
        }
        .btn-new:hover { background: #3f444e; }

        .table-wrapper {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 12px;
            overflow: hidden;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
        }

        th {
            background: #1c212b;
            padding: 16px;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            color: #9ca3af;
            border-bottom: 1px solid var(--border);
        }

        td {
            padding: 16px;
            font-size: 14px;
            border-bottom: 1px solid var(--border);
        }

        tr:last-child td { border-bottom: none; }

        tr:hover { background: rgba(255,255,255,0.02); }

        .email-cell { color: #9ca3af; }
        .year-badge {
            background: rgba(59, 130, 246, 0.1);
            color: #3b82f6;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>Student Directory</h2>
            <a href="index.jsp" class="btn-new">+ Register Student</a>
        </div>

        <div class="table-wrapper">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
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
                        <td class="email-cell"><%= s.getEmail() %></td>
                        <td><span class="year-badge">Class of <%= s.getYear() %></span></td>
                    </tr>
                    <% 
                            }
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>