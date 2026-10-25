
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>EmployeeHub | Register</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    min-height: 100vh;
    color: #18213b;
    background: #f5f6ff;
}

/* NAVBAR */
.navbar {
    width: 100%;
    padding: 18px 7%;
    background: #ffffff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    box-shadow: 0 5px 25px rgba(30, 50, 100, 0.07);
    position: relative;
    z-index: 2;
}

.logo {
    font-size: 28px;
    font-weight: 800;
    color: #4f46e5;
    letter-spacing: -1px;
}

.logo span {
    color: #111827;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 28px;
}

.nav-links a {
    text-decoration: none;
    font-size: 13px;
    font-weight: 600;
    color: #475569;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #4f46e5;
}

.nav-links .nav-btn {
    padding: 10px 20px;
    border-radius: 9px;
    color: white;
    background: linear-gradient(100deg, #4f46e5, #7c3aed);
    box-shadow: 0 5px 12px rgba(79, 70, 229, 0.2);
}

.nav-links .nav-btn:hover {
    color: white;
    transform: translateY(-2px);
}

/* PAGE BACKGROUND */
.page {
    min-height: calc(100vh - 75px);
    padding: 50px 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    background:
        radial-gradient(circle at 10% 15%, #dbeafe 0, transparent 32%),
        radial-gradient(circle at 90% 85%, #e9d5ff 0, transparent 30%),
        #f8faff;
}

/* MAIN CARD */
.register-card {
    width: 100%;
    max-width: 960px;
    display: grid;
    grid-template-columns: 0.85fr 1.15fr;
    background: white;
    border-radius: 24px;
    overflow: hidden;
    box-shadow: 0 25px 70px rgba(49, 46, 129, 0.13);
    animation: appear 0.7s ease;
}

@keyframes appear {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* LEFT PANEL */
.welcome-panel {
    padding: 45px 32px;
    background: linear-gradient(145deg, #4f46e5, #6d28d9);
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    position: relative;
    overflow: hidden;
}

.welcome-panel::before,
.welcome-panel::after {
    content: "";
    position: absolute;
    border: 1px solid rgba(255, 255, 255, 0.18);
    border-radius: 50%;
    pointer-events: none;
}

.welcome-panel::before {
    width: 250px;
    height: 250px;
    top: -90px;
    right: -100px;
}

.welcome-panel::after {
    width: 190px;
    height: 190px;
    bottom: -80px;
    left: -80px;
}

.welcome-icon {
    width: 78px;
    height: 78px;
    border-radius: 20px;
    background: rgba(255, 255, 255, 0.17);
    border: 1px solid rgba(255, 255, 255, 0.25);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 38px;
    margin-bottom: 28px;
}

.welcome-panel h2 {
    font-size: 29px;
    line-height: 1.45;
    margin-bottom: 17px;
    position: relative;
    z-index: 1;
}

.welcome-panel > p {
    color: #e0e7ff;
    font-size: 13px;
    line-height: 1.9;
    position: relative;
    z-index: 1;
}

.benefits {
    margin-top: 30px;
    position: relative;
    z-index: 1;
}

.benefits p {
    margin: 14px 0;
    color: white;
    font-size: 12px;
}

/* FORM PANEL */
.form-panel {
    padding: 40px 38px;
}

.form-heading {
    margin-bottom: 28px;
}

.form-heading .tag {
    display: inline-block;
    color: #4f46e5;
    background: #eef2ff;
    font-size: 10px;
    font-weight: 700;
    padding: 7px 12px;
    border-radius: 20px;
    margin-bottom: 12px;
    letter-spacing: 1px;
}

.form-heading h1 {
    font-size: 27px;
    font-weight: 700;
    color: #111827;
    margin-bottom: 8px;
}

.form-heading p {
    font-size: 12px;
    color: #94a3b8;
}

/* FORM GRID */
.form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 18px 16px;
}

.form-group {
    min-width: 0;
}

.full-width {
    grid-column: 1 / -1;
}

.form-group > label {
    display: block;
    color: #334155;
    font-size: 12px;
    font-weight: 600;
    margin-bottom: 8px;
}

.input-wrap {
    position: relative;
}

.field-icon {
    position: absolute;
    left: 13px;
    top: 14px;
    font-size: 15px;
    pointer-events: none;
}

.form-group input,
.form-group select,
.form-group textarea {
    width: 100%;
    padding: 13px 12px 13px 39px;
    border: 1px solid #e2e8f0;
    border-radius: 10px;
    background: #f8fafc;
    font-family: inherit;
    font-size: 12px;
    color: #1e293b;
    outline: none;
    transition: all 0.25s ease;
}

.form-group input::placeholder,
.form-group textarea::placeholder {
    color: #a0aec0;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus {
    background: white;
    border-color: #6366f1;
    box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.10);
}

.form-group select {
    cursor: pointer;
}

.form-group textarea {
    min-height: 85px;
    resize: vertical;
}

/* GENDER CARDS */
.gender-options {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 8px;
}

.gender-options input {
    position: absolute;
    opacity: 0;
    width: 1px;
    height: 1px;
}

.gender-options label {
    border: 1px solid #e2e8f0;
    border-radius: 10px;
    background: #f8fafc;
    padding: 10px 4px;
    text-align: center;
    cursor: pointer;
    color: #64748b;
    font-size: 11px;
    transition: 0.25s;
}

.gender-options label span {
    display: block;
    font-size: 20px;
    margin-bottom: 5px;
}

.gender-options label:has(input:checked) {
    border-color: #6366f1;
    background: #eef2ff;
    color: #4338ca;
}

.gender-options label:focus-within {
    outline: 2px solid #818cf8;
    outline-offset: 2px;
}

/* REGISTER BUTTON */
.register-btn {
    width: 100%;
    border: none;
    border-radius: 10px;
    padding: 15px;
    margin-top: 25px;
    color: white;
    background: linear-gradient(100deg, #4f46e5, #7c3aed);
    font-family: inherit;
    font-size: 14px;
    font-weight: 600;
    cursor: pointer;
    box-shadow: 0 8px 20px rgba(79, 70, 229, 0.22);
    transition: 0.3s;
}

.register-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 24px rgba(79, 70, 229, 0.3);
}

.login-link {
    text-align: center;
    margin-top: 20px;
    color: #94a3b8;
    font-size: 12px;
}

.login-link a {
    color: #4f46e5;
    font-weight: 600;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}

/* FOOTER */
footer {
    padding: 20px;
    text-align: center;
    font-size: 11px;
    color: #94a3b8;
    background: #ffffff;
}

/* RESPONSIVE */
@media (max-width: 760px) {
    .register-card {
        max-width: 540px;
        grid-template-columns: 1fr;
    }

    .welcome-panel {
        padding: 30px;
    }

    .welcome-icon {
        margin-bottom: 18px;
    }

    .welcome-panel h2 {
        font-size: 25px;
    }

    .benefits {
        display: none;
    }

    .form-panel {
        padding: 30px 25px;
    }
}

@media (max-width: 430px) {
    .navbar {
        padding: 16px 5%;
    }

    .nav-links {
        gap: 10px;
    }

    .nav-links a {
        font-size: 11px;
    }

    .logo {
        font-size: 23px;
    }

    .page {
        padding: 25px 12px;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .full-width {
        grid-column: auto;
    }

    .form-heading h1 {
        font-size: 24px;
    }
}
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar">

    <div class="logo">EmployeeHub<span>.</span></div>

    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="register.jsp" class="nav-btn">Register</a>
        <a href="login.jsp">Login</a>
    </div>

</nav>

<!-- REGISTRATION PAGE -->
<main class="page">

    <div class="register-card">

        <!-- LEFT WELCOME PANEL -->
        <section class="welcome-panel">

            <div class="welcome-icon">👥</div>

            <h2>Welcome to EmployeeHub!</h2>

            <p>
                Join our employee community and experience
                a smarter way to manage your professional journey.
                Create your account to get started.
            </p>

            <div class="benefits">
                <p>✓ &nbsp; Simple employee management</p>
                <p>✓ &nbsp; Organized employee information</p>
                <p>✓ &nbsp; Easy and convenient access</p>
            </div>

        </section>

        <!-- REGISTRATION FORM -->
        <section class="form-panel">

            <div class="form-heading">
            <h3 style="color: green">${Succesmag}</h3>
                <span class="tag">GET STARTED</span>
                <h1>Create Account</h1>
                <p>Enter your details to register with EmployeeHub.</p>
            </div>

            <form action="process-registration" method="post">

                <div class="form-grid">

                    <!-- NAME -->
                    <div class="form-group full-width">
                        <label for="name">Full Name</label>

                        <div class="input-wrap">
                            <span class="field-icon">👤</span>

                            <input type="text"
                                   id="name"
                                   name="name"
                                   placeholder="Enter your full name"
                                   autocomplete="name"
                                   required>
                        </div>
                    </div>

                    <!-- EMAIL -->
                    <div class="form-group full-width">
                        <label for="email">Email Address</label>

                        <div class="input-wrap">
                            <span class="field-icon">✉️</span>

                            <input type="email"
                                   id="email"
                                   name="email"
                                   placeholder="you@example.com"
                                   autocomplete="email"
                                   required>
                        </div>
                    </div>

                    <!-- PASSWORD -->
                    <div class="form-group full-width">
                        <label for="password">Password</label>

                        <div class="input-wrap">
                            <span class="field-icon">🔒</span>

                            <input type="password"
                                   id="password"
                                   name="password"
                                   placeholder="Create a password"
                                   minlength="8"
                                   autocomplete="new-password"
                                   required>
                        </div>
                    </div>

                    <!-- DEPARTMENT -->
                    <div class="form-group">
                        <label for="department">Department</label>

                        <div class="input-wrap">
                            <span class="field-icon">💼</span>

                            <select id="department"
                                    name="department"
                                    required>
                                <option value="">Select</option>
                                <option value="IT">IT</option>
                                <option value="HR">HR</option>
                                <option value="Finance">Finance</option>
                                <option value="Marketing">Marketing</option>
                                <option value="Sales">Sales</option>
                            </select>
                        </div>
                    </div>

                    <!-- GENDER -->
                    <div class="form-group">
                        <label>Gender</label>

                        <div class="gender-options">

                            <label>
                                <input type="radio"
                                       name="gender"
                                       value="Male"
                                       required>
                                <span>👨</span>
                                Male
                            </label>

                            <label>
                                <input type="radio"
                                       name="gender"
                                       value="Female">
                                <span>👩</span>
                                Female
                            </label>

                            <label>
                                <input type="radio"
                                       name="gender"
                                       value="Other">
                                <span>🧑</span>
                                Other
                            </label>

                        </div>
                    </div>

                    <!-- ADDRESS -->
                    <div class="form-group full-width">
                        <label for="address">Full Address</label>

                        <div class="input-wrap">
                            <span class="field-icon">📍</span>

                            <textarea id="address"
                                      name="address"
                                      placeholder="Enter your full address"
                                      autocomplete="street-address"
                                      required></textarea>
                        </div>
                    </div>

                </div>

                <button type="submit" class="register-btn">
                    Create My Account &nbsp; →
                </button>

            </form>

            <p class="login-link">
                Already have an account?
                <a href="login.jsp">Sign in here</a>
            </p>

        </section>

    </div>

</main>

<!-- FOOTER -->
<footer>
    © 2026 EmployeeHub. All rights reserved.
</footer>

</body>
</html>
```