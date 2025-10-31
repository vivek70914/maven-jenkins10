<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration | Vivek Pagi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0a0e27 0%, #1a1f3a 50%, #2d1b4e 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px;
            position: relative;
            overflow-x: hidden;
        }

        /* Animated gradient background */
        .bg-glow {
            position: fixed;
            border-radius: 50%;
            opacity: 0.15;
            filter: blur(80px);
            animation: float 25s ease-in-out infinite;
            pointer-events: none;
        }

        .bg-glow:nth-child(1) {
            width: 400px;
            height: 400px;
            background: #FF6B35;
            top: -150px;
            left: -150px;
            animation-duration: 20s;
        }

        .bg-glow:nth-child(2) {
            width: 350px;
            height: 350px;
            background: #004AFF;
            bottom: -100px;
            right: -100px;
            animation-delay: 7s;
            animation-duration: 25s;
        }

        .bg-glow:nth-child(3) {
            width: 300px;
            height: 300px;
            background: #00D9FF;
            top: 50%;
            right: 10%;
            animation-delay: 14s;
            animation-duration: 30s;
        }

        @keyframes float {
            0%, 100% { transform: translate(0, 0) scale(1); }
            50% { transform: translate(40px, 40px) scale(1.1); }
        }

        .main-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            max-width: 1000px;
            width: 100%;
            background: rgba(15, 23, 42, 0.8);
            border-radius: 24px;
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.5), 
                        0 0 80px rgba(0, 212, 255, 0.15),
                        inset 0 1px 0 rgba(255, 255, 255, 0.1);
            overflow: hidden;
            animation: slideUp 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
            position: relative;
            z-index: 10;
            border: 1px solid rgba(0, 212, 255, 0.2);
            backdrop-filter: blur(10px);
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(50px) scale(0.9);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        /* Left side - Illustration */
        .illustration-section {
            background: linear-gradient(135deg, #0F4C75 0%, #3282B8 50%, #1a6fa0 100%);
            padding: 40px 35px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .illustration-section::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(0, 212, 255, 0.1) 0%, transparent 70%);
            animation: pulse 4s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); opacity: 0.5; }
            50% { transform: scale(1.2); opacity: 0.8; }
        }

        .book-illustration {
            position: relative;
            width: 180px;
            height: 200px;
            margin-bottom: 30px;
            z-index: 2;
        }

        .book-base {
            width: 150px;
            height: 170px;
            background: linear-gradient(135deg, #00D9FF 0%, #0099FF 100%);
            border-radius: 12px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 20px 60px rgba(0, 212, 255, 0.4),
                        inset -2px -2px 10px rgba(0, 0, 0, 0.2),
                        inset 2px 2px 10px rgba(255, 255, 255, 0.1);
            animation: bookFloat 3s ease-in-out infinite;
            border: 2px solid rgba(255, 255, 255, 0.2);
        }

        @keyframes bookFloat {
            0%, 100% { transform: translate(-50%, -50%) translateY(0) rotateZ(-2deg); }
            50% { transform: translate(-50%, -50%) translateY(-15px) rotateZ(2deg); }
        }

        .book-pages {
            width: 140px;
            height: 160px;
            background: linear-gradient(90deg, rgba(255,255,255,0.1) 0%, rgba(255,255,255,0.2) 50%, rgba(255,255,255,0.1) 100%);
            position: absolute;
            left: 5px;
            top: 5px;
            border-radius: 10px;
            overflow: hidden;
        }

        .book-line {
            width: 90px;
            height: 3px;
            background: linear-gradient(90deg, rgba(255,107,53,0.6) 0%, rgba(0,212,255,0.6) 100%);
            position: absolute;
            left: 25px;
            animation: writeLine 2.5s ease-in-out infinite;
            border-radius: 2px;
        }

        .book-line:nth-child(1) { top: 40px; animation-delay: 0s; }
        .book-line:nth-child(2) { top: 58px; animation-delay: 0.5s; width: 75px; }
        .book-line:nth-child(3) { top: 76px; animation-delay: 1s; }
        .book-line:nth-child(4) { top: 94px; animation-delay: 1.5s; width: 80px; }

        @keyframes writeLine {
            0% { width: 0; opacity: 0; }
            40% { opacity: 1; }
            100% { opacity: 1; }
        }

        .float-circle {
            position: absolute;
            border-radius: 50%;
            animation: orbit 8s linear infinite;
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.5);
        }

        .float-circle:nth-child(1) {
            background: rgba(255, 107, 53, 0.3);
            width: 40px;
            height: 40px;
            border: 2px solid rgba(255, 107, 53, 0.5);
        }

        .float-circle:nth-child(2) {
            background: rgba(0, 212, 255, 0.2);
            width: 32px;
            height: 32px;
            border: 2px solid rgba(0, 212, 255, 0.6);
            animation-delay: -3s;
        }

        .float-circle:nth-child(3) {
            background: rgba(50, 130, 184, 0.3);
            width: 35px;
            height: 35px;
            border: 2px solid rgba(50, 130, 184, 0.5);
            animation-delay: -5s;
        }

        @keyframes orbit {
            0% {
                transform: rotate(0deg) translateX(85px) rotate(0deg);
            }
            100% {
                transform: rotate(360deg) translateX(85px) rotate(-360deg);
            }
        }

        .welcome-text {
            color: white;
            text-align: center;
            animation: fadeIn 1.5s ease-in;
            z-index: 2;
            position: relative;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .welcome-text h2 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 8px;
            text-shadow: 0 4px 20px rgba(0, 212, 255, 0.3);
            line-height: 1.3;
            background: linear-gradient(135deg, #00D9FF 0%, #FF6B35 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .welcome-text p {
            font-size: 14px;
            opacity: 0.9;
            line-height: 1.6;
            color: #E0E7FF;
            font-weight: 500;
        }

        .tech-badges {
            display: flex;
            gap: 10px;
            margin-top: 25px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .badge {
            padding: 8px 18px;
            background: linear-gradient(135deg, rgba(0, 212, 255, 0.15), rgba(255, 107, 53, 0.15));
            border-radius: 25px;
            font-size: 12px;
            font-weight: 600;
            color: #00D9FF;
            backdrop-filter: blur(10px);
            border: 1.5px solid rgba(0, 212, 255, 0.4);
            animation: badgePulse 2s ease-in-out infinite;
            box-shadow: 0 4px 15px rgba(0, 212, 255, 0.2);
            transition: all 0.3s ease;
        }

        .badge:nth-child(1) { animation-delay: 0s; color: #00D9FF; }
        .badge:nth-child(2) { animation-delay: 0.2s; color: #FF6B35; }
        .badge:nth-child(3) { animation-delay: 0.4s; color: #00D9FF; }

        .badge:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(0, 212, 255, 0.4);
        }

        @keyframes badgePulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.08); }
        }

        /* Right side - Form */
        .form-section {
            padding: 40px 35px;
            background: rgba(15, 23, 42, 0.6);
            position: relative;
            overflow: hidden;
        }

        .form-section::before {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(0, 212, 255, 0.05) 0%, transparent 70%);
            pointer-events: none;
        }

        .form-header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
            z-index: 1;
        }

        .form-header h1 {
            font-size: 28px;
            font-weight: 700;
            background: linear-gradient(135deg, #00D9FF 0%, #FF6B35 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 8px;
            line-height: 1.3;
        }

        .form-header p {
            font-size: 13px;
            color: #A0AEC0;
            font-weight: 500;
        }

        .form-header p strong {
            background: linear-gradient(135deg, #00D9FF 0%, #FF6B35 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-weight: 700;
        }

        .input-group {
            margin-bottom: 18px;
            animation: slideInRight 0.6s ease-out;
            animation-fill-mode: both;
            position: relative;
            z-index: 1;
        }

        .input-group:nth-child(1) { animation-delay: 0.1s; }
        .input-group:nth-child(2) { animation-delay: 0.2s; }
        .input-group:nth-child(3) { animation-delay: 0.3s; }
        .input-group:nth-child(4) { animation-delay: 0.4s; }
        .input-group:nth-child(5) { animation-delay: 0.5s; }

        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #E0E7FF;
            margin-bottom: 8px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .input-field {
            width: 100%;
            padding: 13px 16px;
            font-size: 14px;
            border: 2px solid rgba(0, 212, 255, 0.2);
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.4s ease;
            background: rgba(15, 23, 42, 0.7);
            color: #E0E7FF;
            backdrop-filter: blur(10px);
            box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        .input-field:focus {
            outline: none;
            border-color: #00D9FF;
            background: rgba(15, 23, 42, 0.9);
            box-shadow: 0 0 0 4px rgba(0, 212, 255, 0.15),
                        inset 0 2px 8px rgba(0, 0, 0, 0.2),
                        0 0 20px rgba(0, 212, 255, 0.2);
            transform: translateY(-2px);
        }

        .input-field::placeholder {
            color: #64748B;
            font-weight: 400;
            font-size: 13px;
        }

        .input-field.valid {
            border-color: #10B981;
            background: rgba(16, 185, 129, 0.08);
            box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.1),
                        inset 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .input-field.invalid {
            border-color: #EF4444;
            background: rgba(239, 68, 68, 0.08);
            box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.1),
                        inset 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            font-size: 15px;
            font-weight: 700;
            color: white;
            background: linear-gradient(135deg, #004AFF 0%, #00D9FF 50%, #FF6B35 100%);
            background-size: 200% 200%;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.4s ease;
            margin-top: 18px;
            text-transform: uppercase;
            letter-spacing: 1.2px;
            box-shadow: 0 8px 25px rgba(0, 74, 255, 0.4),
                        0 0 20px rgba(0, 212, 255, 0.2);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }

        .submit-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s ease;
            z-index: -1;
        }

        .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 35px rgba(0, 74, 255, 0.5),
                        0 0 30px rgba(0, 212, 255, 0.3);
            background-position: 200% center;
            left: 100%;
        }

        .submit-btn:active {
            transform: translateY(-1px);
        }

        .terms {
            text-align: center;
            font-size: 12px;
            color: #94A3B8;
            margin: 15px 0;
            line-height: 1.6;
            position: relative;
            z-index: 1;
        }

        .terms a {
            color: #00D9FF;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .terms a:hover {
            color: #FF6B35;
            text-decoration: underline;
            text-decoration-thickness: 2px;
        }

        .signin-link {
            text-align: center;
            margin-top: 18px;
            padding: 14px;
            background: linear-gradient(135deg, rgba(0, 212, 255, 0.08), rgba(255, 107, 53, 0.08));
            border-radius: 12px;
            font-size: 13px;
            color: #CBD5E1;
            border: 1.5px solid rgba(0, 212, 255, 0.2);
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            position: relative;
            z-index: 1;
        }

        .signin-link:hover {
            background: linear-gradient(135deg, rgba(0, 212, 255, 0.12), rgba(255, 107, 53, 0.12));
            border-color: rgba(0, 212, 255, 0.4);
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.15);
        }

        .signin-link a {
            color: #00D9FF;
            text-decoration: none;
            font-weight: 700;
            transition: all 0.3s ease;
        }

        .signin-link a:hover {
            color: #FF6B35;
            text-decoration: underline;
        }

        .message {
            padding: 12px 16px;
            border-radius: 10px;
            margin-bottom: 18px;
            font-size: 13px;
            font-weight: 600;
            display: none;
            animation: messageSlide 0.4s ease;
            position: relative;
            z-index: 1;
            border-left: 4px solid;
        }

        @keyframes messageSlide {
            from {
                opacity: 0;
                transform: translateY(-15px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .success-message {
            background: linear-gradient(135deg, rgba(16, 185, 129, 0.15), rgba(5, 150, 105, 0.15));
            color: #10B981;
            border-left-color: #10B981;
            box-shadow: 0 4px 15px rgba(16, 185, 129, 0.2);
        }

        .error-message {
            background: linear-gradient(135deg, rgba(239, 68, 68, 0.15), rgba(220, 38, 38, 0.15));
            color: #EF4444;
            border-left-color: #EF4444;
            box-shadow: 0 4px 15px rgba(239, 68, 68, 0.2);
        }

        /* Mobile Responsive */
        @media (max-width: 768px) {
            body {
                padding: 10px;
                align-items: flex-start;
                overflow-y: auto;
            }

            .main-container {
                grid-template-columns: 1fr;
                margin: 10px 0;
                border-radius: 18px;
            }

            .illustration-section {
                padding: 30px 25px;
                min-height: auto;
            }

            .book-illustration {
                width: 140px;
                height: 160px;
                margin-bottom: 25px;
            }

            .book-base {
                width: 120px;
                height: 140px;
            }

            .book-pages {
                width: 110px;
                height: 130px;
            }

            .book-line {
                width: 70px;
                left: 20px;
            }

            .welcome-text h2 {
                font-size: 22px;
                margin-bottom: 6px;
            }

            .welcome-text p {
                font-size: 13px;
            }

            .tech-badges {
                margin-top: 18px;
                gap: 8px;
            }

            .badge {
                padding: 7px 16px;
                font-size: 11px;
            }

            .form-section {
                padding: 30px 25px;
            }

            .form-header {
                margin-bottom: 25px;
            }

            .form-header h1 {
                font-size: 24px;
                margin-bottom: 6px;
            }

            .form-header p {
                font-size: 12px;
            }

            .input-group {
                margin-bottom: 14px;
            }

            .input-group label {
                font-size: 12px;
                margin-bottom: 6px;
            }

            .input-field {
                padding: 11px 14px;
                font-size: 13px;
            }

            .submit-btn {
                padding: 12px;
                font-size: 14px;
                margin-top: 14px;
            }

            .terms {
                font-size: 11px;
                margin: 12px 0;
            }

            .signin-link {
                margin-top: 14px;
                padding: 12px;
                font-size: 12px;
            }

            .message {
                padding: 10px 14px;
                font-size: 12px;
                margin-bottom: 14px;
            }
        }

        @media (max-width: 360px) {
            body {
                padding: 8px;
            }

            .main-container {
                border-radius: 15px;
                margin: 5px 0;
            }

            .illustration-section {
                padding: 20px 18px;
            }

            .book-illustration {
                width: 120px;
                height: 140px;
                margin-bottom: 18px;
            }

            .welcome-text h2 {
                font-size: 18px;
            }

            .welcome-text p {
                font-size: 12px;
            }

            .form-section {
                padding: 20px 18px;
            }

            .form-header h1 {
                font-size: 20px;
            }

            .input-field {
                padding: 10px 12px;
                font-size: 12px;
            }

            .submit-btn {
                padding: 11px;
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="bg-glow"></div>
    <div class="bg-glow"></div>
    <div class="bg-glow"></div>

    <div class="main-container">
        <div class="illustration-section">
            <div class="book-illustration">
                <div class="float-circle"></div>
                <div class="float-circle"></div>
                <div class="float-circle"></div>
                <div class="book-base">
                    <div class="book-pages">
                        <div class="book-line"></div>
                        <div class="book-line"></div>
                        <div class="book-line"></div>
                        <div class="book-line"></div>
                    </div>
                </div>
            </div>
            
            <div class="welcome-text">
                <h2>Start Your Learning Journey</h2>
                <p>Master Docker and DevOps with hands-on training</p>
                
                <div class="tech-badges">
                    <div class="badge">Docker</div>
                    <div class="badge">Jenkins</div>
                    <div class="badge">DevOps</div>
                </div>
            </div>
        </div>

        <div class="form-section">
            <div class="form-header">
                <h1>Create Your Account</h1>
                <p><strong>Deploy using Docker with Vivek Pagi</strong></p>
            </div>

            <form id="registrationForm" action="action_page.php" method="POST">
                <div id="successMessage" class="message success-message"></div>
                <div id="errorMessage" class="message error-message"></div>

                <div class="input-group">
                    <label for="Name">Full Name</label>
                    <input 
                        type="text" 
                        id="Name" 
                        name="Name" 
                        class="input-field" 
                        placeholder="Enter your full name" 
                        required
                    >
                </div>

                <div class="input-group">
                    <label for="mobile">Mobile Number</label>
                    <input 
                        type="tel" 
                        id="mobile" 
                        name="mobile" 
                        class="input-field" 
                        placeholder="10-digit mobile number" 
                        required
                        pattern="[0-9]{10}"
                    >
                </div>

                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input 
                        type="email" 
                        id="email" 
                        name="email" 
                        class="input-field" 
                        placeholder="your.email@example.com" 
                        required
                    >
                </div>

                <div class="input-group">
                    <label for="psw">Password</label>
                    <input 
                        type="password" 
                        id="psw" 
                        name="psw" 
                        class="input-field" 
                        placeholder="Minimum 6 characters" 
                        required
                        minlength="6"
                    >
                </div>

                <div class="input-group">
                    <label for="psw-repeat">Confirm Password</label>
                    <input 
                        type="password" 
                        id="psw-repeat" 
                        name="psw-repeat" 
                        class="input-field" 
                        placeholder="Re-enter your password" 
                        required
                        minlength="6"
                    >
                </div>

                <div class="terms">
                    By creating an account you agree to our <a href="#">Terms & Privacy</a>
                </div>

                <button type="submit" class="submit-btn">Start Learning</button>

                <div class="signin-link">
                    Already have an account? <a href="#">Sign in here</a>
                </div>
            </form>
        </div>
    </div>

    <script>
        const form = document.getElementById('registrationForm');
        const successMessage = document.getElementById('successMessage');
        const errorMessage = document.getElementById('errorMessage');
        const inputs = document.querySelectorAll('.input-field');

        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            successMessage.style.display = 'none';
            errorMessage.style.display = 'none';
            
            const name = document.getElementById('Name').value;
            const mobile = document.getElementById('mobile').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('psw').value;
            const confirmPassword = document.getElementById('psw-repeat').value;
            
            if (!/^[0-9]{10}$/.test(mobile)) {
                errorMessage.textContent = 'Please enter a valid 10-digit mobile number!';
                errorMessage.style.display = 'block';
                document.getElementById('mobile').focus();
                return false;
            }

            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                errorMessage.textContent = 'Please enter a valid email address!';
                errorMessage.style.display = 'block';
                document.getElementById('email').focus();
                return false;
            }
            
            if (password !== confirmPassword) {
                errorMessage.textContent = 'Passwords do not match!';
                errorMessage.style.display = 'block';
                document.getElementById('psw-repeat').focus();
                return false;
            }

            if (password.length < 6) {
                errorMessage.textContent = 'Password must be at least 6 characters!';
                errorMessage.style.display = 'block';
                document.getElementById('psw').focus();
                return false;
            }
            
            successMessage.textContent = 'Registration Successful! Welcome, ' + name + '!';
            successMessage.style.display = 'block';
        });

        inputs.forEach(input => {
            input.addEventListener('blur', function() {
                if (this.value) {
                    if (this.id === 'mobile') {
                        if (/^[0-9]{10}$/.test(this.value)) {
                            this.classList.add('valid');
                            this.classList.remove('invalid');
                        } else {
                            this.classList.add('invalid');
                            this.classList.remove('valid');
                        }
                    } else if (this.id === 'email') {
                        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                        if (emailPattern.test(this.value)) {
                            this.classList.add('valid');
                            this.classList.remove('invalid');
                        } else {
                            this.classList.add('invalid');
                            this.classList.remove('valid');
                        }
                    } else if (this.id === 'psw-repeat') {
                        const password = document.getElementById('psw').value;
                        if (this.value === password && this.value.length >= 6) {
                            this.classList.add('valid');
                            this.classList.remove('invalid');
                        } else {
                            this.classList.add('invalid');
                            this.classList.remove('valid');
                        }
                    } else if (this.id === 'psw') {
                        if (this.value.length >= 6) {
                            this.classList.add('valid');
                            this.classList.remove('invalid');
                        } else {
                            this.classList.add('invalid');
                            this.classList.remove('valid');
                        }
                    } else {
                        if (this.value.trim() !== '') {
                            this.classList.add('valid');
                            this.classList.remove('invalid');
                        }
                    }
                }
            });

            input.addEventListener('input', function() {
                this.classList.remove('valid', 'invalid');
            });
        });

        document.getElementById('psw-repeat').addEventListener('input', function() {
            const password = document.getElementById('psw').value;
            if (this.value && password !== this.value) {
                this.classList.add('invalid');
                this.classList.remove('valid');
            } else if (this.value && password === this.value && this.value.length >= 6) {
                this.classList.add('valid');
                this.classList.remove('invalid');
            }
        });
    </script>
</body>
</html>
