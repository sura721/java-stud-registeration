<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Student Portal | Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg: #0b0e14;
            --card: #151921;
            --border: #2d333f;
            --text: #f3f4f6;
            --accent: #3b82f6;
            --accent-hover: #2563eb;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg);
            color: var(--text);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-card {
            background: var(--card);
            border: 1px solid var(--border);
            padding: 40px;
            border-radius: 12px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.5);
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn { from { opacity: 0; transform: translateY(10px); } to { opacity: 1; transform: translateY(0); } }

        h2 { font-size: 24px; font-weight: 700; margin-bottom: 8px; }
        p { color: #9ca3af; font-size: 14px; margin-bottom: 32px; }

        .field { margin-bottom: 20px; }
        label { display: block; font-size: 13px; font-weight: 600; margin-bottom: 8px; color: #9ca3af; }

        input {
            width: 100%;
            padding: 12px 16px;
            background: #0b0e14;
            border: 1px solid var(--border);
            border-radius: 8px;
            color: white;
            font-size: 14px;
            box-sizing: border-box;
            transition: all 0.2s;
        }

        input:focus { outline: none; border-color: var(--accent); box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.2); }

        button {
            width: 100%;
            padding: 12px;
            background: var(--accent);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            transition: background 0.2s;
            margin-top: 10px;
        }

        button:hover { background: var(--accent-hover); }

        .footer-link {
            display: block;
            text-align: center;
            margin-top: 24px;
            font-size: 14px;
            color: #9ca3af;
            text-decoration: none;
            transition: color 0.2s;
        }
        .footer-link:hover { color: white; }
    </style>
</head>
<body>
    <div class="form-card">
        <h2>Student Registration</h2>
        <p>Enter details to add a new student record.</p>
        
        <form action="register" method="post">
            <div class="field">
                <label>Full Name</label>
                <input type="text" name="name" placeholder="e.g. Alex Rivera" required>
            </div>
            <div class="field">
                <label>Email Address</label>
                <input type="email" name="email" placeholder="alex@university.edu" required>
            </div>
            <div class="field">
                <label>Academic Year</label>
                <input type="number" name="year" placeholder="2025" required>
            </div>
            <button type="submit">Create Record</button>
        </form>
        
        <a href="show_all" class="footer-link">View Database →</a>
    </div>
</body>
</html>