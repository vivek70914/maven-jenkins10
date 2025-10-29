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
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        /* Floating knowledge particles */
        .particle {
            position: fixed;
            font-size: 20px;
            opacity: 0.3;
            animation: floatParticles 15s linear infinite;
            pointer-events: none;
        }

        @keyframes floatParticles {
            0% {
                transform: translateY(100vh) rotate(0deg);
                opacity: 0;
            }
            10% {
                opacity: 0.3;
            }
            90% {
                opacity: 0.3;
            }
            100% {
                transform: translateY(-100px) rotate(360deg);
                opacity: 0;
            }
        }

        .main-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            max-width: 1000px;
            width: 100%;
            background: white;
            border-radius: 24px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            animation: slideUp 0.8s cubic-bezier(0.68, -0.55, 0.265, 1.55);
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
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .student-learning {
            position: relative;
            width: 250px;
            height: 250px;
            animation: breathe 3s ease-in-out infinite;
        }

        @keyframes breathe {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        /* Student with book */
        .student {
            position: absolute;
            width: 120px;
            height: 140px;
            background: #fff;
            border-radius: 60px 60px 40px 40px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .student::before {
            content: '';
            position: absolute;
            width: 80px;
            height: 80px;
            background: #ffd6a5;
            border-radius: 50%;
            top: -30px;
            left: 50%;
            transform: translateX(-50%);
        }

        /* Book */
        .book {
            position: absolute;
            width: 100px;
            height: 70px;
            background: #ff6b6b;
            border-radius: 8px;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            animation: bookFloat 2s ease-in-out infinite;
        }

        @keyframes bookFloat {
            0%, 100% { transform: translateX(-50%) translateY(0); }
            50% { transform: translateX(-50%) translateY(-10px); }
        }

        .book::before {
            content: '';
            position: absolute;
            width: 2px;
            height: 70px;
            background: rgba(255, 255, 255, 0.3);
            left: 50%;
            top: 0;
        }

        /* Floating icons around student */
        .icon {
            position: absolute;
            font-size: 30px;
            animation: orbit 8s linear infinite;
        }

        .icon:nth-child(1) {
            animation-delay: 0s;
        }

        .icon:nth-child(2) {
            animation-delay: -2s;
        }

        .icon:nth-child(3) {
            animation-delay: -4s;
        }

        .icon:nth-child(4) {
            animation-delay: -6s;
        }

        @keyframes orbit {
            0% {
                transform: rotate(0deg) translateX(100px) rotate(0deg);
            }
            100% {
                transform: rotate(360deg) translateX(100px) rotate(-360deg);
            }
        }

        .welcome-text {
            color: white;
            text-align: center;
            margin-top: 30px;
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .welcome-text h2 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .welcome-text p {
            font-size: 14px;
            opacity: 0.95;
        }

        /* Right side - Form */
        .form-section {
            padding: 40px;
        }

        .form-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-header h1 {
            font-size: 26px;
            font-weight: 700;
            color: #2d3748;
            margin-bottom: 5px;
        }

        .form-header p {
            font-size: 14px;
            color: #718096;
            font-weight: 500;
        }

        .form-header p strong {
            color: #667eea;
        }

        .input-group {
            margin-bottom: 18px;
            animation: slideInRight 0.5s ease-out;
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
            font-size: 13px;
            font-weight: 600;
            color: #4a5568;
            margin-bottom: 6px;
        }

        .input-field {
            width: 100%;
            padding: 12px 16px;
            font-size: 14px;
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
            background: #f7fafc;
        }

        .input-field:focus {
            outline: none;
            border-color: #667eea;
            background: white;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            transform: translateY(-2px);
        }

        .input-field::placeholder {
            color: #a0aec0;
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
            padding: 14px;
            font-size: 16px;
            font-weight: 700;
            color: white;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
            position: relative;
            overflow: hidden;
        }

        .submit-btn::before {
            content: '🎓';
            position: absolute;
            left: -30px;
            font-size: 20px;
            transition: left 0.3s ease;
        }

        .submit-btn:hover::before {
            left: calc(50% - 10px);
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(102, 126, 234, 0.5);
        }

        .terms {
            text-align: center;
            font-size: 12px;
            color: #718096;
            margin: 15px 0;
        }

        .terms a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
        }

        .signin-link {
            text-align: center;
            margin-top: 20px;
            padding: 15px;
            background: #f7fafc;
            border-radius: 10px;
            font-size: 14px;
            color: #4a5568;
        }

        .signin-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 700;
        }

        .message {
            padding: 12px;
            border-radius: 10px;
            margin-bottom: 15px;
            font-size: 13px;
            font-weight: 500;
            display: none;
            animation: slideDown 0.3s ease;
        }

        @keyframes slideDown {
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
            background: #c6f6d5;
            color: #22543d;
            border-left: 4px solid #48bb78;
        }

        .error-message {
            background: #fed7d7;
            color: #742a2a;
            border-left: 4px solid #f56565;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .main-container {
                grid-template-columns: 1fr;
            }

            .illustration-section {
                padding: 30px;
                min-height: 300px;
            }

            .form-section {
                padding: 30px 25px;
            }

            .student-learning {
                width: 200px;
                height: 200px;
            }
        }
    </style>
</head>
<body>
    <!-- Floating particles -->
    <div class="particle" style="left: 10%; animation-delay: 0s;">📚</div>
    <div class="particle" style="left: 30%; animation-delay: 3s;">✏️</div>
    <div class="particle" style="left: 50%; animation-delay: 6s;">💡</div>
    <div class="particle" style="left: 70%; animation-delay: 9s;">🎓</div>
    <div class="particle" style="left: 90%; animation-delay: 12s;">📖</div>

    <div class="main-container">
        <!-- Left Section - Illustration -->
        <div class="illustration-section">
            <div class="student-learning">
                <div class="student">
                    <div class="book"></div>
                </div>
                <div class="icon" style="left: 50%; top: 50%;">💻</div>
                <div class="icon" style="left: 50%; top: 50%;">🐳</div>
                <div class="icon" style="left: 50%; top: 50%;">⚙️</div>
                <div class="icon" style="left: 50%; top: 50%;">🚀</div>
            </div>
            
            <div class="welcome-text">
                <h2>Start Your Learning Journey</h2>
                <p>Join thousands of students mastering Docker & DevOps</p>
            </div>
        </div>

        <!-- Right Section - Form -->
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
                    Already have an account? <a href="#">Sign in</a>
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
                errorMessage.textContent = '📱 Please enter a valid 10-digit mobile number!';
                errorMessage.style.display = 'block';
                document.getElementById('mobile').focus();
                return false;
            }

            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                errorMessage.textContent = '📧 Please enter a valid email address!';
                errorMessage.style.display = 'block';
                document.getElementById('email').focus();
                return false;
            }
            
            if (password !== confirmPassword) {
                errorMessage.textContent = '🔒 Passwords do not match!';
                errorMessage.style.display = 'block';
                document.getElementById('psw-repeat').focus();
                return false;
            }

            if (password.length < 6) {
                errorMessage.textContent = '🔑 Password must be at least 6 characters!';
                errorMessage.style.display = 'block';
                document.getElementById('psw').focus();
                return false;
            }
            
            successMessage.textContent = `🎉 Registration Successful! Welcome to the learning journey, ${name}!`;
            successMessage.style.display = 'block';
            
            // Uncomment to submit: this.submit();
        });

        // Real-time validation
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
