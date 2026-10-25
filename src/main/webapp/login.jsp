
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Login</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(135deg, #dbeafe, #eff6ff, #e0e7ff);
    display: flex;
    flex-direction: column;
}

/* Navbar */
.navbar {
    background: white;
    padding: 20px 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 3px 15px rgba(0,0,0,0.06);
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: #2563eb;
}

.navbar a {
    text-decoration: none;
    color: #334155;
    margin-left: 22px;
    font-weight: bold;
}

.navbar a:hover {
    color: #2563eb;
}

/* Login Section */
.container {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 40px 15px;
}

.login-card {
    width: 100%;
    max-width: 430px;
    padding: 40px 35px;
    background: white;
    border-radius: 18px;
    box-shadow: 0 15px 40px rgba(37,99,235,0.12);
}

.login-icon {
    width: 75px;
    height: 75px;
    margin: 0 auto 20px;
    border-radius: 50%;
    background: #dbeafe;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 36px;
}

.login-card h1 {
    text-align: center;
    color: #1e293b;
    font-size: 29px;
    margin-bottom: 10px;
}

.subtitle {
    text-align: center;
    color: #64748b;
    font-size: 14px;
    margin-bottom: 30px;
}

/* Form */
.form-group {
    margin-bottom: 22px;
}

.form-group label {
    display: block;
    margin-bottom: 9px;
    font-size: 14px;
    font-weight: bold;
    color: #334155;
}

.form-group input {
    width: 100%;
    padding: 14px;
    border: 1px solid #cbd5e1;
    border-radius: 8px;
    outline: none;
    font-size: 15px;
    transition: 0.3s;
}

.form-group input:focus {
    border-color: #2563eb;
    box-shadow: 0 0 0 3px rgba(37,99,235,0.12);
}

/* Remember Me */
.options {
    display: flex;
    align-items: center;
    margin-bottom: 25px;
    font-size: 13px;
    color: #475569;
}

.options input {
    margin-right: 8px;
    accent-color: #2563eb;
}

/* Button */
.login-btn {
    width: 100%;
    padding: 14px;
    border: none;
    border-radius: 8px;
    background: #2563eb;
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

.login-btn:hover {
    background: #1d4ed8;
    transform: translateY(-2px);
}

.register-link {
    text-align: center;
    margin-top: 25px;
    color: #64748b;
    font-size: 14px;
}

.register-link a {
    color: #2563eb;
    text-decoration: none;
    font-weight: bold;
}

.register-link a:hover {
    text-decoration: underline;
}

/* Footer */
footer {
    background: #0f172a;
    color: white;
    text-align: center;
    padding: 18px;
    font-size: 14px;
}

@media (max-width: 500px) {
    .navbar {
        padding: 18px;
    }

    .login-card {
        padding: 30px 22px;
    }
}
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">EMS.</div>

    <div>
        <a href="index.jsp">Home</a>
        <a href="register.jsp">Register</a>
    </div>
</nav>

<!-- Login Form -->
<div class="container">

    <div class="login-card">

        <div class="login-icon">👤</div>

        <h1>Welcome Back!</h1>

        <p class="subtitle">
            Login to your Employee Account
        </p>

        <form action="process-login" method="post">
        <h3 style="color: red">${errormsg}</h3>
            <div class="form-group">
                <label for="email">Email Address</label>

                <input type="email"
                       id="email"
                       name="email"
                       placeholder="Enter your email"
                       required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>

                <input type="password"
                       id="password"
                       name="password"
                       placeholder="Enter your password"
                       required>
            </div>

            <div class="options">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember me</label>
            </div>

            <button type="submit" class="login-btn">
                Login to Account →
            </button>

        </form>

        <p class="register-link">
            Don't have an account?
            <a href="register">Create Account</a>
        </p>

    </div>

</div>

<footer>
    <p>© 2026 Employee Management System | All Rights Reserved</p>
</footer>

</body>
</html>
```