
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>EmployeeHub | Smart Employee Management</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: 'Poppins', sans-serif;
    background: #f8faff;
    color: #172033;
}

/* NAVBAR */
.navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 18px 7%;
    background: rgba(255,255,255,0.96);
    box-shadow: 0 4px 25px rgba(30,41,90,0.06);
    position: sticky;
    top: 0;
    z-index: 10;
}

.logo {
    font-size: 27px;
    font-weight: 800;
    color: #5b4bea;
    letter-spacing: -1px;
}

.logo span {
    color: #172033;
}

.nav-links {
    display: flex;
    align-items: center;
    gap: 30px;
}

.nav-links a {
    text-decoration: none;
    color: #475569;
    font-size: 13px;
    font-weight: 600;
    transition: 0.3s;
}

.nav-links a:hover {
    color: #5b4bea;
}

.nav-links .register-link {
    padding: 11px 20px;
    border-radius: 9px;
    color: white;
    background: linear-gradient(100deg,#5b4bea,#8b5cf6);
    box-shadow: 0 6px 15px rgba(91,75,234,0.2);
}

.nav-links .register-link:hover {
    color: white;
    transform: translateY(-2px);
}

/* HERO */
.hero {
    min-height: 590px;
    padding: 75px 8%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 55px;
    overflow: hidden;
    background:
        radial-gradient(circle at 85% 25%,#e9d5ff 0,transparent 30%),
        radial-gradient(circle at 5% 90%,#dbeafe 0,transparent 35%),
        linear-gradient(135deg,#fafaff,#f0edff);
}

.hero-content {
    flex: 1;
    max-width: 590px;
    animation: slideIn 0.8s ease;
}

.eyebrow {
    display: inline-block;
    padding: 9px 15px;
    background: #ede9fe;
    color: #5b4bea;
    border-radius: 30px;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 1px;
    margin-bottom: 23px;
}

.hero h1 {
    font-size: clamp(36px, 4.2vw, 56px);
    line-height: 1.22;
    font-weight: 800;
    letter-spacing: -1.8px;
    color: #172033;
    margin-bottom: 22px;
}

.hero h1 span {
    color: #6d4aff;
}

.hero-content > p {
    color: #64748b;
    font-size: 14px;
    line-height: 2;
    margin-bottom: 32px;
    max-width: 510px;
}

.hero-buttons {
    display: flex;
    align-items: center;
    gap: 15px;
    flex-wrap: wrap;
}

.btn {
    display: inline-block;
    padding: 14px 23px;
    border-radius: 10px;
    text-decoration: none;
    font-size: 13px;
    font-weight: 600;
    transition: 0.3s;
}

.btn-primary {
    background: linear-gradient(100deg,#5b4bea,#8b5cf6);
    color: white;
    box-shadow: 0 8px 20px rgba(91,75,234,0.23);
}

.btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 25px rgba(91,75,234,0.3);
}

.btn-secondary {
    background: white;
    border: 1px solid #ddd6fe;
    color: #5b4bea;
}

.btn-secondary:hover {
    background: #ede9fe;
    transform: translateY(-3px);
}

.trust-line {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 32px;
    color: #64748b;
    font-size: 11px;
}

.trust-icon {
    color: #16a34a;
    font-size: 18px;
}

/* HERO VISUAL */
.hero-visual {
    flex: 1;
    max-width: 460px;
    min-width: 0;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 390px;
}

.visual-circle {
    position: absolute;
    width: 330px;
    height: 330px;
    border-radius: 50%;
    background: linear-gradient(135deg,#c4b5fd,#ddd6fe,#bfdbfe);
}

.dashboard {
    position: relative;
    z-index: 1;
    width: 100%;
    max-width: 370px;
    background: rgba(255,255,255,0.92);
    padding: 24px;
    border-radius: 23px;
    box-shadow: 0 25px 70px rgba(76,56,160,0.16);
    border: 1px solid rgba(255,255,255,0.9);
    transform: rotate(-2deg);
    animation: float 5s ease-in-out infinite;
}

.dashboard-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 23px;
}

.dashboard-header h3 {
    font-size: 14px;
    color: #172033;
}

.status {
    color: #16a34a;
    background: #dcfce7;
    padding: 6px 9px;
    border-radius: 20px;
    font-size: 9px;
    font-weight: 700;
}

.profile-row {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 13px;
    margin-bottom: 12px;
    background: #f8faff;
    border: 1px solid #f0edff;
    border-radius: 13px;
}

.avatar {
    width: 43px;
    height: 43px;
    border-radius: 13px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 23px;
}

.avatar-one {
    background: #dbeafe;
}

.avatar-two {
    background: #fce7f3;
}

.avatar-three {
    background: #dcfce7;
}

.profile-info {
    flex: 1;
}

.profile-info h4 {
    font-size: 11px;
    color: #334155;
    margin-bottom: 4px;
}

.profile-info p {
    font-size: 9px;
    color: #94a3b8;
}

.online-dot {
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background: #22c55e;
}

.dashboard-footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 18px;
    padding-top: 17px;
    border-top: 1px solid #eef2ff;
}

.dashboard-footer span {
    font-size: 10px;
    color: #64748b;
}

.dashboard-footer strong {
    font-size: 12px;
    color: #5b4bea;
}

.floating-badge {
    position: absolute;
    z-index: 2;
    right: -5px;
    top: 35px;
    background: white;
    padding: 13px 16px;
    border-radius: 13px;
    box-shadow: 0 10px 30px rgba(49,46,129,0.12);
    color: #5b4bea;
    font-size: 12px;
    font-weight: 700;
}

.floating-badge.bottom {
    top: auto;
    right: auto;
    left: -20px;
    bottom: 35px;
    color: #0f9f6e;
}

/* BENEFITS STRIP */
.benefits-strip {
    padding: 30px 8%;
    background: white;
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 25px;
    border-bottom: 1px solid #eef2ff;
}

.benefit {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 13px;
}

.benefit-icon {
    width: 46px;
    height: 46px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 13px;
    background: #f0edff;
    font-size: 22px;
}

.benefit h3 {
    font-size: 12px;
    color: #334155;
    margin-bottom: 4px;
}

.benefit p {
    font-size: 10px;
    color: #94a3b8;
}

/* FEATURES */
.features {
    padding: 85px 8%;
    text-align: center;
}

.section-label {
    color: #6d4aff;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 1.5px;
    margin-bottom: 12px;
}

.features h2 {
    font-size: 35px;
    color: #172033;
    margin-bottom: 14px;
}

.subtitle {
    max-width: 550px;
    margin: 0 auto 42px;
    color: #64748b;
    font-size: 13px;
    line-height: 1.9;
}

.feature-container {
    display: grid;
    grid-template-columns: repeat(3,minmax(0,1fr));
    gap: 24px;
    text-align: left;
}

.feature-card {
    background: white;
    border: 1px solid #eef0fb;
    border-radius: 19px;
    padding: 30px 25px;
    box-shadow: 0 8px 25px rgba(49,46,129,0.035);
    transition: 0.3s;
}

.feature-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 18px 35px rgba(49,46,129,0.10);
    border-color: #ddd6fe;
}

.feature-icon {
    width: 58px;
    height: 58px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 16px;
    font-size: 27px;
    margin-bottom: 22px;
}

.icon-purple {
    background: #ede9fe;
}

.icon-blue {
    background: #dbeafe;
}

.icon-green {
    background: #dcfce7;
}

.feature-card h3 {
    font-size: 16px;
    color: #1e293b;
    margin-bottom: 12px;
}

.feature-card p {
    font-size: 12px;
    line-height: 1.9;
    color: #64748b;
}

/* CTA */
.cta {
    margin: 0 8% 80px;
    padding: 52px 30px;
    text-align: center;
    border-radius: 25px;
    color: white;
    background: linear-gradient(120deg,#4f46e5,#7c3aed,#8b5cf6);
    box-shadow: 0 18px 40px rgba(91,75,234,0.18);
}

.cta h2 {
    font-size: 29px;
    margin-bottom: 13px;
}

.cta p {
    font-size: 13px;
    color: #ede9fe;
    margin-bottom: 25px;
    line-height: 1.8;
}

.cta .btn {
    background: white;
    color: #5b4bea;
}

/* FOOTER */
footer {
    background: #17152f;
    color: #c4c1df;
    padding: 27px 8%;
    text-align: center;
    font-size: 11px;
    line-height: 1.8;
}

.footer-logo {
    color: white;
    font-size: 20px;
    font-weight: 800;
    margin-bottom: 8px;
}

.footer-logo span {
    color: #a78bfa;
}

/* ANIMATIONS */
@keyframes float {
    0%, 100% {
        transform: translateY(0) rotate(-2deg);
    }
    50% {
        transform: translateY(-10px) rotate(-1deg);
    }
}

@keyframes slideIn {
    from {
        opacity: 0;
        transform: translateX(-20px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

/* RESPONSIVE */
@media (max-width: 900px) {
    .hero {
        padding: 60px 6%;
        gap: 25px;
    }

    .hero-visual {
        max-width: 380px;
    }

    .visual-circle {
        width: 270px;
        height: 270px;
    }

    .dashboard {
        padding: 18px;
    }

    .feature-container {
        gap: 15px;
    }

    .feature-card {
        padding: 24px 18px;
    }
}

@media (max-width: 700px) {
    .navbar {
        padding: 17px 5%;
    }

    .logo {
        font-size: 22px;
    }

    .nav-links {
        gap: 13px;
    }

    .nav-links a {
        font-size: 11px;
    }

    .nav-links .register-link {
        padding: 9px 11px;
    }

    .hero {
        flex-direction: column;
        text-align: center;
        padding: 60px 7% 45px;
    }

    .hero-content > p {
        margin-left: auto;
        margin-right: auto;
    }

    .hero-buttons,
    .trust-line {
        justify-content: center;
    }

    .hero-visual {
        width: 100%;
        max-width: 420px;
        min-height: 350px;
        margin-top: 10px;
    }

    .floating-badge {
        right: 0;
    }

    .floating-badge.bottom {
        left: 0;
    }

    .benefits-strip {
        grid-template-columns: 1fr;
        padding: 30px 10%;
        gap: 22px;
    }

    .benefit {
        justify-content: flex-start;
    }

    .features {
        padding: 65px 6%;
    }

    .features h2 {
        font-size: 28px;
    }

    .feature-container {
        grid-template-columns: 1fr;
    }

    .feature-card {
        padding: 28px;
    }

    .cta {
        margin: 0 5% 55px;
        padding: 40px 20px;
    }

    .cta h2 {
        font-size: 24px;
    }
}

@media (max-width: 400px) {
    .nav-links {
        gap: 9px;
    }

    .nav-links a {
        font-size: 10px;
    }

    .hero h1 {
        font-size: 35px;
    }

    .dashboard {
        padding: 15px;
    }

    .floating-badge {
        right: -4px;
        font-size: 10px;
    }

    .floating-badge.bottom {
        left: -4px;
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
        <a href="register.jsp" class="register-link">Register</a>
        <a href="login.jsp">Login</a>
    </div>

</nav>

<!-- HERO SECTION -->
<section class="hero">

    <div class="hero-content">

        <span class="eyebrow">
            ✨ SMARTER WORKFORCE MANAGEMENT
        </span>

        <h1>
            Manage Your Team.<br>
            <span>Grow Together.</span>
        </h1>

        <p>
            Welcome to EmployeeHub — your simple and smart
            employee management platform. Organize employee
            information and make workforce management easier.
        </p>

        <div class="hero-buttons">
            <a href="register.jsp" class="btn btn-primary">
                Get Started &nbsp; →
            </a>

            <a href="login.jsp" class="btn btn-secondary">
                Login to Account
            </a>
        </div>

        <div class="trust-line">
            <span class="trust-icon">✓</span>
            <span>Simple interface · Organized employee records</span>
        </div>

    </div>

    <!-- DASHBOARD ILLUSTRATION -->
    <div class="hero-visual">

        <div class="visual-circle"></div>

        <div class="floating-badge">
            ✨ Easy Management
        </div>

        <div class="dashboard">

            <div class="dashboard-header">
                <h3>Employee Directory</h3>
                <span class="status">● Dashboard</span>
            </div>

            <div class="profile-row">
                <div class="avatar avatar-one">👨‍💻</div>
                <div class="profile-info">
                    <h4>Rahul Sharma</h4>
                    <p>Software Developer</p>
                </div>
                <span class="online-dot"></span>
            </div>

            <div class="profile-row">
                <div class="avatar avatar-two">👩‍💼</div>
                <div class="profile-info">
                    <h4>Priya Patil</h4>
                    <p>Human Resources</p>
                </div>
                <span class="online-dot"></span>
            </div>

            <div class="profile-row">
                <div class="avatar avatar-three">👨‍🎓</div>
                <div class="profile-info">
                    <h4>Amit Deshmukh</h4>
                    <p>Finance Executive</p>
                </div>
                <span class="online-dot"></span>
            </div>

            <div class="dashboard-footer">
                <span>EmployeeHub Workspace</span>
                <strong>View Team →</strong>
            </div>

        </div>

        <div class="floating-badge bottom">
            🔒 Account Access
        </div>

    </div>

</section>

<!-- BENEFITS STRIP -->
<section class="benefits-strip">

    <div class="benefit">
        <div class="benefit-icon">👥</div>
        <div>
            <h3>Employee Records</h3>
            <p>Keep details organized</p>
        </div>
    </div>

    <div class="benefit">
        <div class="benefit-icon">🔐</div>
        <div>
            <h3>Account Access</h3>
            <p>Login to your account</p>
        </div>
    </div>

    <div class="benefit">
        <div class="benefit-icon">⚡</div>
        <div>
            <h3>Simple Experience</h3>
            <p>Easy-to-use interface</p>
        </div>
    </div>

</section>

<!-- FEATURES SECTION -->
<section class="features" id="features">

    <p class="section-label">OUR FEATURES</p>

    <h2>Everything Made Simple</h2>

    <p class="subtitle">
        EmployeeHub helps bring important employee information
        and account access together in one convenient place.
    </p>

    <div class="feature-container">

        <div class="feature-card">
            <div class="feature-icon icon-purple">👥</div>
            <h3>Employee Records</h3>
            <p>
                Organize employee details such as name, email,
                department, gender and address in one place.
            </p>
        </div>

        <div class="feature-card">
            <div class="feature-icon icon-blue">🔐</div>
            <h3>Account Management</h3>
            <p>
                Provide a convenient registration and login
                interface for your employee management application.
            </p>
        </div>

        <div class="feature-card">
            <div class="feature-icon icon-green">📊</div>
            <h3>Easy Organization</h3>
            <p>
                Build a clear and organized workflow for
                managing employee information efficiently.
            </p>
        </div>

    </div>

</section>

<!-- CALL TO ACTION -->
<section class="cta">

    <h2>Ready to Get Started?</h2>

    <p>
        Join EmployeeHub and create your employee account today.
    </p>

    <a href="register.jsp" class="btn">
        Create Your Account &nbsp; →
    </a>

</section>

<!-- FOOTER -->
<footer>

    <div class="footer-logo">EmployeeHub<span>.</span></div>

    <p>
        A smarter way to organize employee information.
    </p>

    <p>
        © 2026 EmployeeHub. All rights reserved.
    </p>

</footer>

</body>
</html>
```