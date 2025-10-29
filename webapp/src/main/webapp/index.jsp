<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration | Vivek Pagi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: grid;
            place-items: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        /* Animated shapes in background */
        body::before,
        body::after {
            content: '';
            position: fixed;
            border-radius: 50%;
            filter: blur(80px);
            opacity: 0.5;
            animation: float 8s ease-in-out infinite;
        }

        body::before {
            width: 400px;
            height: 400px;
            background: rgba(255, 255, 255, 0.1);
            top: -100px;
            left: -100px;
        }

        body::after {
            width: 300px;
            height: 300px;
            background: rgba(118, 75, 162, 0.3);
            bottom: -100px;
            right: -100px;
            animation-delay: 2s;
        }

        @keyframes float {
            0%, 100% { transform: translate(0, 0) scale(1); }
            50% { transform: translate(20px, 20px) scale(1.1); }
        }

        .registration-card {
            background: white;
            max-width: 480px;
            width: 100%;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            position: relative;
            z-index: 1;
            animation: slideIn 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(50px) scale(0.9);
            }
            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }

        /* Header Section */
        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 35px 30px;
            text-align: center;
            position: relative;
        }

        .header::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 20px;
            background: white;
            border-radius: 20px 20px 0 0;
        }

        .header h1 {
            font-size: 26px;
            font-weight: 700;
            color: white;
            margin-bottom: 5px;
            letter-spacing: -0.5px;
        }

        .header p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.9);
            font-weight: 500;
        }

        /* Form Section */
        .form-container {
            padding: 30px;
        }

        .input-group {
            margin-bottom: 18px;
            position: relative;
        }

        .input-group label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #4a5568;
            margin-bottom: 6px;
            transition: color 0.3s;
        }

        .input-wrapper {
            position: relative;
        }

        .input-field {
            width: 100%;
            padding: 12px 16px;
            font-size: 14px;
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            font-family: 'Space Grotesk', sans-serif;
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
        }

        /* Icon indicators */
        .input-wrapper::after {
            content: '';
            position: absolute;
            right: 14px;
            top: 50%;
            transform: translateY(-50%);
            width: 18px;
            height: 18px;
            border-radius: 50%;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .input-field.valid + .input-wrapper::after {
            opacity: 1;
            background: #48bb78;
        }

        .input-field.invalid + .input-wrapper::after {
            opacity: 1;
            background: #f56565;
        }

        /* Submit Button */
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

        /* Terms */
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

        .terms a:hover {
            text-decoration: underline;
        }

        /* Divider */
        .divider {
            display: flex;
            align-items: center;
            text-align: center;
            margin: 25px 0;
        }

        .divider::before,
        .divider::after {
            content: '';
            flex: 1;
            border-bottom: 1px solid #e2e8f0;
        }

        .divider span {
            padding: 0 15px;
            color: #a0aec0;
            font-size: 13px;
            font-weight: 500;
        }

        /* Sign in section */
        .signin-link {
            text-align: center;
            padding: 20px;
            background: #f7fafc;
            border-radius: 10px;
            margin-top: 20px;
        }

        .signin-link p {
            font-size: 14px;
            color: #4a5568;
        }

        .signin-link a {
            color: #667eea;
            text-decoration: none;
            font-weight: 700;
        }

        .signin-link a:hover {
            text-decoration: underline;
        }

        /* Thank you footer */
        .footer {
            text-align: center;
            padding: 20px 30px;
            background: linear-gradient(135deg, rgba(102, 126, 234, 0.1), rgba(118, 75, 162, 0.1));
            border-top: 1px solid #e2e8f0;
        }

        .footer h3 {
            font-size: 16px;
            font-weight: 700;
            color: #2d3748;
            margin-bottom: 3px;
        }

        .footer p {
            font-size: 13px;
            color: #718096;
        }

        /* Messages */
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

        /* Progress indicator */
        .progress-bar {
            height: 3px;
            background: #e2e8f0;
            margin-bottom: 20px;
            border-radius: 10px;
            overflow: hidden;
        }

        .progress-fill {
            height: 100%;
            width: 0%;
            background: linear-gradient(90deg, #667eea, #764ba2);
            transition: width 0.3s ease;
        }

        /* Responsive */
        @media (max-width: 480px) {
            .registration-card {
                border-radius: 15px;
            }

            .header {
                padding: 25px 20px;
            }

            .header h1 {
                font-size: 22px;
            }

            .form-container {
                padding: 20px;
            }

            .input-field {
                padding: 10px 14px;
                font-size: 13px;
            }

            .submit-btn {
                padding: 12px;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="registration-card">
        <div class="header">
            <h1>New User Registration</h1>
            <p><strong>Deploy using Docker with Vivek Pagi</strong></p>
        </div>

        <form id="registrationForm" action="action_page.php" method="POST">
            <div class="form-container">
                <div class="progress-bar">
                    <div class="progress-fill" id="progressFill"></div>
                </div>

                <div id="successMessage" class="message success-message"></div>
                <div id="errorMessage" class="message error-message"></div>

                <div class="input-group">
                    <label for="Name">Full Name</label>
                    <div class="input-wrapper">
                        <input 
                            type="text" 
                            id="Name" 
                            name="Name" 
                            class="input-field" 
                            placeholder="Enter your full name" 
                            required
                        >
                    </div>
                </div>

                <div class="input-group">
                    <label for="mobile">Mobile Number</label>
                    <div class="input-wrapper">
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
                </div>

                <div class="input-group">
                    <label for="email">Email Address</label>
                    <div class="input-wrapper">
                        <input 
                            type="email" 
                            id="email" 
                            name="email" 
                            class="input-field" 
                            placeholder="your.email@example.com" 
                            required
                        >
                    </div>
                </div>

                <div class="input-group">
                    <label for="psw">Password</label>
                    <div class="input-wrapper">
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
                </div>

                <div class="input-group">
                    <label for="psw-repeat">Confirm Password</label>
                    <div class="input-wrapper">
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
                </div>

                <div class="terms">
                    By creating an account you agree to our <a href="#">Terms & Privacy</a>
                </div>

                <button type="submit" class="submit-btn">Create Account</button>

                <div class="divider">
                    <span>or</span>
                </div>

                <div class="signin-link">
                    <p>Already have an account? <a href="#">Sign in</a></p>
                </div>
            </div>

            <div class="footer">
                <h3>Thank You!</h3>
                <p>Happy Learning with Docker Deployment</p>
            </div>
        </form>
    </div>

    <script>
        const form = document.getElementById('registrationForm');
        const successMessage = document.getElementById('successMessage');
        const errorMessage = document.getElementById('errorMessage');
        const progressFill = document.getElementById('progressFill');
        const inputs = document.querySelectorAll('.input-field');

        // Progress bar update
        function updateProgress() {
            const totalFields = inputs.length;
            let filledFields = 0;
            
            inputs.forEach(input => {
                if (input.value.trim() !== '') filledFields++;
            });
            
            const progress = (filledFields / totalFields) * 100;
            progressFill.style.width = progress + '%';
        }

        inputs.forEach(input => {
            input.addEventListener('input', updateProgress);
        });

        // Form submission
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
            
            successMessage.textContent = `Registration Successful! Welcome, ${name}!`;
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

        // Password match check
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
