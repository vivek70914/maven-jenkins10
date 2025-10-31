<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration | The Vivek Pagi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px;
            position: relative;
        }

        /* Animated background circles */
        .bg-circle {
            position: fixed;
            border-radius: 50%;
            opacity: 0.1;
            animation: float 20s ease-in-out infinite;
            pointer-events: none;
        }

        .bg-circle:nth-child(1) {
            width: 300px;
            height: 300px;
            background: white;
            top: -100px;
            left: -100px;
        }

        .bg-circle:nth-child(2) {
            width: 200px;
            height: 200px;
            background: white;
            bottom: -50px;
            right: 100px;
            animation-delay: 5s;
        }

        @keyframes float {
            0%, 100% { transform: translate(0, 0); }
            50% { transform: translate(30px, 30px); }
        }

        .main-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            max-width: 950px;
            width: 100%;
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            animation: slideUp 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
            position: relative;
            z-index: 10;
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
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 35px 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .book-illustration {
            position: relative;
            width: 160px;
            height: 180px;
            margin-bottom: 25px;
        }

        .book-base {
            width: 130px;
            height: 150px;
            background: #fff;
            border-radius: 8px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            animation: bookFloat 3s ease-in-out infinite;
        }

        @keyframes bookFloat {
            0%, 100% { transform: translate(-50%, -50%) translateY(0); }
            50% { transform: translate(-50%, -50%) translateY(-10px); }
        }

        .book-pages {
            width: 120px;
            height: 140px;
            background: linear-gradient(90deg, #f0f0f0 0%, #fff 50%, #f0f0f0 100%);
            position: absolute;
            left: 5px;
            top: 5px;
            border-radius: 6px;
        }

        .book-line {
            width: 80px;
            height: 2px;
            background: rgba(102, 126, 234, 0.3);
            position: absolute;
            left: 20px;
            animation: writeLine 2s ease-in-out infinite;
        }

        .book-line:nth-child(1) { top: 35px; animation-delay: 0s; }
        .book-line:nth-child(2) { top: 50px; animation-delay: 0.5s; }
        .book-line:nth-child(3) { top: 65px; animation-delay: 1s; }
        .book-line:nth-child(4) { top: 80px; animation-delay: 1.5s; }

        @keyframes writeLine {
            0% { width: 0; opacity: 0; }
            50% { width: 80px; opacity: 1; }
            100% { width: 80px; opacity: 1; }
        }

        .float-circle {
            position: absolute;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            animation: orbit 8s linear infinite;
        }

        .float-circle:nth-child(1) {
            background: rgba(255, 255, 255, 0.2);
        }

        .float-circle:nth-child(2) {
            background: rgba(255, 255, 255, 0.15);
            width: 28px;
            height: 28px;
            animation-delay: -2s;
        }

        .float-circle:nth-child(3) {
            background: rgba(255, 255, 255, 0.1);
            width: 30px;
            height: 30px;
            animation-delay: -4s;
        }

        @keyframes orbit {
            0% {
                transform: rotate(0deg) translateX(70px) rotate(0deg);
            }
            100% {
                transform: rotate(360deg) translateX(70px) rotate(-360deg);
            }
        }

        .welcome-text {
            color: white;
            text-align: center;
            animation: fadeIn 1.5s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .welcome-text h2 {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 8px;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            line-height: 1.3;
        }

        .welcome-text p {
            font-size: 13px;
            opacity: 0.95;
            line-height: 1.5;
        }

        .tech-badges {
            display: flex;
            gap: 8px;
            margin-top: 20px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .badge {
            padding: 6px 14px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            font-size: 11px;
            font-weight: 600;
            color: white;
            backdrop-filter: blur(10px);
            animation: badgePulse 2s ease-in-out infinite;
        }

        .badge:nth-child(1) { animation-delay: 0s; }
        .badge:nth-child(2) { animation-delay: 0.3s; }
        .badge:nth-child(3) { animation-delay: 0.6s; }

        @keyframes badgePulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        /* Right side - Form */
        .form-section {
            padding: 35px 30px;
            background: white;
        }

        .form-header {
            text-align: center;
            margin-bottom: 25px;
        }

        .form-header h1 {
            font-size: 22px;
            font-weight: 700;
            color: #2d3748;
            margin-bottom: 5px;
            line-height: 1.3;
        }

        .form-header p {
            font-size: 12px;
            color: #718096;
            font-weight: 500;
        }

        .form-header p strong {
            color: #667eea;
            font-weight: 700;
        }

        .input-group {
            margin-bottom: 15px;
            animation: slideInRight 0.6s ease-out;
            animation-fill-mode: both;
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
            font-size: 12px;
            font-weight: 600;
            color: #4a5568;
            margin-bottom: 6px;
        }

        .input-field {
            width: 100%;
            padding: 11px 14px;
            font-size: 13px;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
            background: #f7fafc;
            color: #2d3748;
        }

        .input-field:focus {
            outline: none;
            border-color: #667eea;
            background: white;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            transform: translateY(-1px);
        }

        .input-field::placeholder {
            color: #a0aec0;
            font-weight: 300;
            font-size: 12px;
        }

        .input-field.valid {
            border-color: #48bb78;
            background: #f0fff4;
        }

        .input-field.invalid {
            border-color: #f56565;
            background: #fff5f5;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            font-weight: 700;
            color: white;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(102, 126, 234, 0.5);
        }

        .submit-btn:active {
            transform: translateY(0);
        }

        .terms {
            text-align: center;
            font-size: 11px;
            color: #718096;
            margin: 12px 0;
            line-height: 1.5;
        }

        .terms a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
        }

        .terms a:hover {
            text-decoration: underline;
        }

        .signin-link {
            text-align: center;
            margin-top: 15px;
            padding: 12px;
            background: linear-gradient(135deg, rgba(102, 126, 234, 0.05), rgba(118, 75, 162, 0.05));
            border-radius: 10px;
            font-size: 12px;
            color: #4a5568;
            border: 1px solid rgba(102, 126, 234, 0.1);
        }

        .signin-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 700;
        }

        .signin-link a:hover {
            text-decoration: underline;
        }

        .message {
            padding: 10px 14px;
            border-radius: 8px;
            margin-bottom: 15px;
            font-size: 12px;
            font-weight: 500;
            display: none;
            animation: messageSlide 0.4s ease;
        }

        @keyframes messageSlide {
            from {
                opacity: 0;
                transform: translateY(-10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .success-message {
            background: linear-gradient(135deg, #c6f6d5, #9ae6b4);
            color: #22543d;
            border-left: 3px solid #48bb78;
        }

        .error-message {
            background: linear-gradient(135deg, #fed7d7, #feb2b2);
            color: #742a2a;
            border-left: 3px solid #f56565;
        }

        /* Mobile Responsive - FIXED */
        @media (max-width: 768px) {
            body {
                padding: 10px;
                align-items: flex-start;
                overflow-y: auto;
            }

            .main-container {
                grid-template-columns: 1fr;
                margin: 10px 0;
                border-radius: 15px;
            }

            .illustration-section {
                padding: 25px 20px;
                min-height: auto;
            }

            .book-illustration {
                width: 120px;
                height: 140px;
                margin-bottom: 20px;
            }

            .book-base {
                width: 100px;
                height: 120px;
            }

            .book-pages {
                width: 90px;
                height: 110px;
            }

            .book-line {
                width: 60px;
                left: 15px;
            }

            .book-line:nth-child(1) { top: 25px; }
            .book-line:nth-child(2) { top: 40px; }
            .book-line:nth-child(3) { top: 55px; }
            .book-line:nth-child(4) { top: 70px; }

            .float-circle {
                width: 25px;
                height: 25px;
            }

            .float-circle:nth-child(2) {
                width: 20px;
                height: 20px;
            }

            @keyframes orbit {
                0% {
                    transform: rotate(0deg) translateX(50px) rotate(0deg);
                }
                100% {
                    transform: rotate(360deg) translateX(50px) rotate(-360deg);
                }
            }

            .welcome-text h2 {
                font-size: 18px;
                margin-bottom: 6px;
            }

            .welcome-text p {
                font-size: 12px;
            }

            .tech-badges {
                margin-top: 15px;
                gap: 6px;
            }

            .badge {
                padding: 5px 12px;
                font-size: 10px;
            }

            .form-section {
                padding: 25px 20px;
            }

            .form-header {
                margin-bottom: 20px;
            }

            .form-header h1 {
                font-size: 18px;
                margin-bottom: 4px;
            }

            .form-header p {
                font-size: 11px;
            }

            .input-group {
                margin-bottom: 12px;
            }

            .input-group label {
                font-size: 11px;
                margin-bottom: 5px;
            }

            .input-field {
                padding: 10px 12px;
                font-size: 13px;
            }

            .input-field::placeholder {
                font-size: 11px;
            }

            .submit-btn {
                padding: 11px;
                font-size: 13px;
                margin-top: 12px;
            }

            .terms {
                font-size: 10px;
                margin: 10px 0;
            }

            .signin-link {
                margin-top: 12px;
                padding: 10px;
                font-size: 11px;
            }

            .message {
                padding: 8px 12px;
                font-size: 11px;
                margin-bottom: 12px;
            }
        }

        /* Extra small mobile */
        @media (max-width: 360px) {
            body {
                padding: 8px;
            }

            .main-container {
                border-radius: 12px;
                margin: 5px 0;
            }

            .illustration-section {
                padding: 20px 15px;
            }

            .book-illustration {
                width: 100px;
                height: 120px;
                margin-bottom: 15px;
            }

            .welcome-text h2 {
                font-size: 16px;
            }

            .welcome-text p {
                font-size: 11px;
            }

            .form-section {
                padding: 20px 15px;
            }

            .form-header h1 {
                font-size: 16px;
            }

            .input-field {
                padding: 9px 11px;
                font-size: 12px;
            }

            .submit-btn {
                padding: 10px;
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="bg-circle"></div>
    <div class="bg-circle"></div>

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
