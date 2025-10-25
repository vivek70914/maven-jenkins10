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
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 50%, #7e22ce 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px 20px;
        }

        form {
            width: 100%;
            max-width: 550px;
        }

        .container {
            background: #ffffff;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.4);
            padding: 35px;
            margin-bottom: 15px;
            animation: slideUp 0.6s ease-out;
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container h1 {
            font-size: 24px;
            font-weight: 700;
            color: #1a202c;
            text-align: center;
            margin-bottom: 5px;
            line-height: 1.2;
        }

        .container > p {
            text-align: center;
            font-size: 13px;
            color: #718096;
            margin-bottom: 18px;
            font-weight: 500;
        }

        hr {
            border: none;
            height: 2px;
            background: linear-gradient(90deg, #7e22ce, #2a5298, #7e22ce);
            margin: 15px 0;
            border-radius: 2px;
        }

        label {
            display: block;
            font-size: 12px;
            font-weight: 600;
            color: #2d3748;
            margin-bottom: 5px;
            margin-top: 10px;
        }

        label b {
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px 14px;
            font-size: 14px;
            border: 2px solid #e2e8f0;
            border-radius: 10px;
            background: #f7fafc;
            color: #2d3748;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
            margin-bottom: 2px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #7e22ce;
            background: #ffffff;
            box-shadow: 0 0 0 3px rgba(126, 34, 206, 0.1);
            transform: translateY(-1px);
        }

        input[type="text"]::placeholder,
        input[type="password"]::placeholder {
            color: #a0aec0;
            font-weight: 300;
        }

        br {
            display: none;
        }

        .container > p:last-of-type {
            text-align: center;
            font-size: 11px;
            color: #718096;
            margin: 12px 0 12px 0;
            line-height: 1.5;
        }

        .container > p:last-of-type a {
            color: #7e22ce;
            text-decoration: none;
            font-weight: 600;
        }

        .container > p:last-of-type a:hover {
            text-decoration: underline;
        }

        .registerbtn {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            font-weight: 600;
            color: #ffffff;
            background: linear-gradient(135deg, #7e22ce 0%, #2a5298 100%);
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 6px 20px rgba(126, 34, 206, 0.4);
            font-family: 'Poppins', sans-serif;
            text-transform: uppercase;
            letter-spacing: 0.8px;
        }

        .registerbtn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(126, 34, 206, 0.6);
            background: linear-gradient(135deg, #6b1fa8 0%, #1e3c72 100%);
        }

        .registerbtn:active {
            transform: translateY(0);
        }

        .container.signin {
            background: linear-gradient(135deg, rgba(126, 34, 206, 0.1), rgba(42, 82, 152, 0.1));
            border: 2px solid rgba(126, 34, 206, 0.3);
            padding: 12px 20px;
            animation-delay: 0.2s;
        }

        .container.signin p {
            text-align: center;
            font-size: 13px;
            color: #2d3748;
            font-weight: 500;
            margin: 0;
        }

        .container.signin a {
            color: #7e22ce;
            text-decoration: none;
            font-weight: 700;
        }

        .container.signin a:hover {
            text-decoration: underline;
        }

        form > h1 {
            text-align: center;
            font-size: 20px;
            font-weight: 700;
            color: #ffffff;
            margin-top: 12px;
            padding: 15px;
            background: linear-gradient(135deg, rgba(126, 34, 206, 0.2), rgba(42, 82, 152, 0.2));
            border-radius: 12px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            animation: slideUp 0.6s ease-out;
            animation-delay: 0.4s;
            animation-fill-mode: both;
        }

        /* Input validation styles */
        input.valid {
            border-color: #48bb78 !important;
        }

        input.invalid {
            border-color: #f56565 !important;
        }

        /* Success/Error Messages */
        .message {
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 12px;
            text-align: center;
            font-weight: 500;
            display: none;
            font-size: 12px;
        }

        .success-message {
            background: #48bb78;
            color: white;
        }

        .error-message {
            background: #f56565;
            color: white;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            body {
                padding: 15px 15px;
            }

            .container {
                padding: 28px;
                margin-bottom: 12px;
            }

            .container h1 {
                font-size: 22px;
            }

            .container > p {
                font-size: 12px;
                margin-bottom: 14px;
            }

            input[type="text"],
            input[type="password"] {
                padding: 9px 12px;
                font-size: 13px;
            }

            .registerbtn {
                padding: 11px;
                font-size: 14px;
            }

            form > h1 {
                font-size: 18px;
                padding: 12px;
                margin-top: 10px;
            }
        }

        @media (max-width: 480px) {
            body {
                padding: 12px 12px;
            }

            .container {
                padding: 22px;
                margin-bottom: 10px;
            }

            .container h1 {
                font-size: 20px;
            }

            input[type="text"],
            input[type="password"] {
                padding: 8px 11px;
                font-size: 13px;
            }

            label {
                font-size: 11px;
                margin-top: 8px;
            }

            .registerbtn {
                padding: 10px;
                font-size: 13px;
            }

            form > h1 {
                font-size: 16px;
                padding: 10px;
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
            <p>Deploy using Docker with Vivek Pagi</p>
            <hr>
            
            <label for="Name"><b>Enter Name</b></label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>
            
            <label for="mobile"><b>Enter mobile</b></label>
            <input type="text" placeholder="Enter mobile number" name="mobile" id="mobile" required pattern="[0-9]{10}" title="Please enter a valid 10-digit mobile number">
            
            <label for="email"><b>Enter Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email" required>
            
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required minlength="6">
            
            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required minlength="6">
            
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
