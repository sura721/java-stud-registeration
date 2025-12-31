<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Student Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            overflow: hidden;
        }

        /* Animation for page entry */
        .container {
            animation: slideUp 0.8s ease-out forwards;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            width: 350px;
            text-align: center;
            color: white;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 { font-weight: 700; margin-bottom: 25px; letter-spacing: -1px; }

        .input-group { margin-bottom: 20px; text-align: left; }

        label { display: block; font-size: 12px; margin-bottom: 5px; opacity: 0.8; }

        input {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            outline: none;
            transition: 0.3s;
        }

        input:focus { background: rgba(255, 255, 255, 0.3); box-shadow: 0 0 10px rgba(255,255,255,0.2); }

        button {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: none;
            background: #fff;
            color: #764ba2;
            font-weight: 700;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        button:hover { transform: scale(1.05); box-shadow: 0 5px 15px rgba(0,0,0,0.2); }

        a { color: white; text-decoration: none; font-size: 13px; opacity: 0.7; margin-top: 20px; display: inline-block; transition: 0.3s; }
        a:hover { opacity: 1; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Student</h2>
        <form action="register" method="post" id="regForm">
            <div class="input-group">
                <label>FULL NAME</label>
                <input type="text" name="name" placeholder="John Doe" required>
            </div>
            <div class="input-group">
                <label>EMAIL ADDRESS</label>
                <input type="email" name="email" placeholder="john@example.com" required>
            </div>
            <div class="input-group">
                <label>ACADEMIC YEAR</label>
                <input type="number" name="year" placeholder="2024" required>
            </div>
            <button type="submit">Complete Registration</button>
        </form>
        <a href="show_all">View Registered List →</a>
    </div>

    <script>
        // Smooth transition on submit
        document.getElementById('regForm').onsubmit = function() {
            document.querySelector('.container').style.opacity = '0';
            document.querySelector('.container').style.transition = '0.5s';
        };
    </script>
</body>
</html>