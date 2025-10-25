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
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0f172a 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 12px 12px;
        }

        form {
            width: 100%;
            max-width: 500px;
        }

        .container {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.15);
            padding: 28px;
            margin-bottom: 10px;
            animation: slideUp 0.6s ease-out;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container h1 {
            font-size: 20px;
            font-weight: 700;
            color: #0f172a;
            text-align: center;
            margin-bottom: 3px;
            line-height: 1.15;
        }

        .container > p {
            text-align: center;
            font-size: 12px;
            color: #64748b;
            margin-bottom: 12px;
            font-weight: 500;
        }

        .container > p strong {
            font-weight: 700;
            color: #1e40af;
        }

        hr {
            border: none;
            height: 1px;
            background: #e2e8f0;
            margin: 10px 0;
            border-radius: 2px;
        }

        label {
            display: block;
            font-size: 11px;
            font-weight: 600;
            color: #334155;
            margin-bottom: 3px;
            margin-top: 7px;
        }

        label b {
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px 12px;
            font-size: 13px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            background: #f8fafc;
            color: #0f172a;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
            margin-bottom: 1px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #1e40af;
            background: #ffffff;
            box-shadow: 0 0 0 2px rgba(30, 64, 175, 0.08);
        }

        input[type="text"]::placeholder,
        input[type="password"]::placeholder {
            color: #94a3b8;
            font-weight: 300;
            font-size: 12px;
        }

        br {
            display: none;
        }

        .container > p:last-of-type {
            text-align: center;
            font-size: 10px;
            color: #64748b;
            margin: 8px 0;
            line-height: 1.4;
        }

        .container > p:last-of-type a {
            color: #1e40af;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .container > p:last-of-type a:hover {
            color: #1e3a8a;
        }

        .registerbtn {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            font-weight: 600;
            color: #ffffff;
            background: linear-gradient(135deg, #1e40af 0%, #1e3a8a 100%);
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(30, 64, 175, 0.3);
            font-family: 'Poppins', sans-serif;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            margin-top: 2px;
        }

        .registerbtn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(30, 64, 175, 0.4);
            background: linear-gradient(135deg, #1e3a8a 0%, #172554 100%);
        }

        .registerbtn:active {
            transform: translateY(0);
        }

        .container.signin {
            background: #f8fafc;
            border: 1px solid #cbd5e1;
            padding: 10px 16px;
            animation-delay: 0.2s;
            box-shadow: none;
            transition: all 0.3s ease;
        }

        .container.signin:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            border-color: #94a3b8;
        }

        .container.signin p {
            text-align: center;
            font-size: 12px;
            color: #334155;
            font-weight: 500;
            margin: 0;
        }

        .container.signin a {
            color: #1e40af;
            text-decoration: none;
            font-weight: 700;
            transition: color 0.3s ease;
        }

        .container.signin a:hover {
            color: #1e3a8a;
        }

        form > h1 {
            text-align: center;
            font-size: 16px;
            font-weight: 700;
            color: #ffffff;
            margin-top: 8px;
            padding: 10px;
            background: transparent;
            border-radius: 10px;
            border: none;
            box-shadow: none;
            animation: slideUp 0.6s ease-out;
            animation-delay: 0.3s;
            animation-fill-mode: both;
            line-height: 1.2;
        }

        /* Input validation styles */
        input.valid {
            border-color: #16a34a !important;
        }

        input.invalid {
            border-color: #dc2626 !important;
        }

        /* Success/Error Messages */
        .message {
            padding: 10px;
            border-radius: 6px;
            margin-bottom: 10px;
            text-align: center;
            font-weight: 500;
            display: none;
            font-size: 11px;
            animation: messageSlide 0.5s ease;
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
            background: #dcfce7;
            color: #166534;
            border: 1px solid #86efac;
        }

        .error-message {
            background: #fee2e2;
            color: #991b1b;
            border: 1px solid #fca5a5;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            body {
                padding: 10px 10px;
            }

            .container {
                padding: 24px;
                margin-bottom: 8px;
            }

            .container h1 {
                font-size: 18px;
            }

            .container > p {
                font-size: 11px;
                margin-bottom: 10px;
            }

            input[type="text"],
            input[type="password"] {
                padding: 7px 10px;
                font-size: 12px;
            }

            label {
                font-size: 10px;
                margin-top: 6px;
            }

            .registerbtn {
                padding: 9px;
                font-size: 13px;
            }

            form > h1 {
                font-size: 14px;
                padding: 8px;
                margin-top: 6px;
            }
        }

        @media (max-width: 480px) {
            body {
                padding: 8px 8px;
            }

            .container {
                padding: 20px;
                margin-bottom: 6px;
            }

            .container h1 {
                font-size: 17px;
                margin-bottom: 2px;
            }

            .container > p {
                font-size: 11px;
                margin-bottom: 8px;
            }

            hr {
                margin: 8px 0;
            }

            input[type="text"],
            input[type="password"] {
                padding: 7px 10px;
                font-size: 12px;
                margin-bottom: 0px;
            }

            label {
                font-size: 10px;
                margin-top: 5px;
                margin-bottom: 2px;
            }

            .registerbtn {
                padding: 8px;
                font-size: 13px;
            }

            form > h1 {
                font-size: 13px;
                padding: 7px;
                margin-top: 5px;
            }

            .container.signin {
                padding: 8px 12px;
            }

            .container.signin p {
                font-size: 11px;
            }
        }
    </style>
</head>
<body>
    <form action="action_page.php" method="POST" id="registrationForm">
        <div class="container">
            <div id="successMessage" class="message success-message"></div>
            <div id="errorMessage" class="message error-message"></div>

            <h1>New user Register for training</h1>
            <p><strong>Deploy using Docker with Vivek Pagi</strong></p>
            <hr>
            
            <label for="Name"><b>Enter Name</b></label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
            
            <label for="mobile"><b>Enter mobile</b></label>
            <input type="text" placeholder="Enter mobile number" name="mobile" id="mobile" required pattern="[0-9]{10}" title="Please enter a valid 10-digit mobile number">
            
            <label for="email"><b>Enter Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email" required>
            
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required minlength="6">
            
            <label for="psw-repeat"><b>Confirm Password</b></label>
            <input type="password" placeholder="Confirm Password" name="psw-repeat" id="psw-repeat" required minlength="6">
            
            <hr>
            
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="registerbtn">Register</button>
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>

        <h1>Thankyou, Happy Learning</h1>
    </form>

    <script>
        const form = document.getElementById('registrationForm');
        const successMessage = document.getElementById('successMessage');
        const errorMessage = document.getElementById('errorMessage');

        // Form submission handler
        form.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Hide previous messages
            successMessage.style.display = 'none';
            errorMessage.style.display = 'none';
            
            const name = document.getElementById('Name').value;
            const mobile = document.getElementById('mobile').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('psw').value;
            const confirmPassword = document.getElementById('psw-repeat').value;
            
            // Mobile Number Validation
            if (!/^[0-9]{10}$/.test(mobile)) {
                errorMessage.textContent = 'Please enter a valid 10-digit mobile number!';
                errorMessage.style.display = 'block';
                document.getElementById('mobile').focus();
                return false;
            }

            // Email Validation
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                errorMessage.textContent = 'Please enter a valid email address!';
                errorMessage.style.display = 'block';
                document.getElementById('email').focus();
                return false;
            }
            
            // Password Match Validation
            if (password !== confirmPassword) {
                errorMessage.textContent = 'Passwords do not match! Please try again.';
                errorMessage.style.display = 'block';
                document.getElementById('psw-repeat').focus();
                return false;
            }

            // Password Length Validation
            if (password.length < 6) {
                errorMessage.textContent = 'Password must be at least 6 characters long!';
                errorMessage.style.display = 'block';
                document.getElementById('psw').focus();
                return false;
            }
            
            // Show Success Message
            successMessage.textContent = `Registration Successful! Welcome, ${name}!`;
            successMessage.style.display = 'block';
            
            // Uncomment the next line to actually submit the form
            // this.submit();
        });

        // Real-time validation feedback
        const inputs = document.querySelectorAll('input');
        
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

        // Password match real-time check
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
