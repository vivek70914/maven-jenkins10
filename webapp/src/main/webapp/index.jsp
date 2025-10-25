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
            background: linear-gradient(-45deg, #1e3c72, #2a5298, #7e22ce, #c2185b);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 12px 12px;
        }

        @keyframes gradientShift {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        form {
            width: 100%;
            max-width: 500px;
        }

        .container {
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
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
            color: #1a202c;
            text-align: center;
            margin-bottom: 3px;
            line-height: 1.15;
            background: linear-gradient(135deg, #7e22ce, #2a5298, #c2185b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: textGlow 3s ease-in-out infinite;
        }

        @keyframes textGlow {
            0%, 100% {
                text-shadow: 0 0 10px rgba(126, 34, 206, 0.3);
                filter: brightness(1);
            }
            50% {
                text-shadow: 0 0 20px rgba(126, 34, 206, 0.6);
                filter: brightness(1.1);
            }
        }

        .container > p {
            text-align: center;
            font-size: 12px;
            color: #718096;
            margin-bottom: 12px;
            font-weight: 400;
        }

        .container > p strong {
            font-weight: 700;
            font-size: 13px;
            background: linear-gradient(135deg, #2a5298, #7e22ce, #c2185b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: subtitleShine 4s ease-in-out infinite;
        }

        @keyframes subtitleShine {
            0%, 100% {
                filter: brightness(1);
                text-shadow: 0 0 10px rgba(42, 82, 152, 0.2);
            }
            50% {
                filter: brightness(1.2);
                text-shadow: 0 0 20px rgba(194, 24, 91, 0.4);
            }
        }

        hr {
            border: none;
            height: 1.5px;
            background: linear-gradient(90deg, #7e22ce, #2a5298, #7e22ce);
            margin: 10px 0;
            border-radius: 2px;
            animation: colorFlow 3s ease-in-out infinite;
        }

        @keyframes colorFlow {
            0% {
                background: linear-gradient(90deg, #7e22ce, #2a5298, #7e22ce);
                box-shadow: 0 0 10px rgba(126, 34, 206, 0.5);
            }
            50% {
                background: linear-gradient(90deg, #2a5298, #c2185b, #2a5298);
                box-shadow: 0 0 15px rgba(194, 24, 91, 0.5);
            }
            100% {
                background: linear-gradient(90deg, #7e22ce, #2a5298, #7e22ce);
                box-shadow: 0 0 10px rgba(126, 34, 206, 0.5);
            }
        }

        label {
            display: block;
            font-size: 11px;
            font-weight: 600;
            color: #2d3748;
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
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            background: #f7fafc;
            color: #2d3748;
            font-family: 'Poppins', sans-serif;
            transition: all 0.3s ease;
            margin-bottom: 1px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #7e22ce;
            background: #ffffff;
            box-shadow: 0 0 0 2px rgba(126, 34, 206, 0.1);
            transform: translateY(-1px);
        }

        input[type="text"]::placeholder,
        input[type="password"]::placeholder {
            color: #a0aec0;
            font-weight: 300;
            font-size: 12px;
        }

        br {
            display: none;
        }

        .container > p:last-of-type {
            text-align: center;
            font-size: 10px;
            color: #718096;
            margin: 8px 0;
            line-height: 1.4;
        }

        .container > p:last-of-type a {
            color: #7e22ce;
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .container > p:last-of-type a:hover {
            text-decoration: underline;
            color: #c2185b;
        }

        .registerbtn {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            font-weight: 600;
            color: #ffffff;
            background: linear-gradient(135deg, #7e22ce 0%, #2a5298 100%);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(126, 34, 206, 0.4);
            font-family: 'Poppins', sans-serif;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            margin-top: 2px;
            animation: buttonGlow 2s ease-in-out infinite;
        }

        @keyframes buttonGlow {
            0%, 100% {
                box-shadow: 0 4px 15px rgba(126, 34, 206, 0.4);
            }
            50% {
                box-shadow: 0 6px 25px rgba(194, 24, 91, 0.6);
            }
        }

        .registerbtn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(126, 34, 206, 0.8);
            background: linear-gradient(135deg, #6b1fa8 0%, #1e3c72 100%);
        }

        .registerbtn:active {
            transform: translateY(0);
        }

        .container.signin {
            background: #ffffff;
            border: 2px solid #48bb78;
            padding: 10px 16px;
            animation-delay: 0.2s;
            box-shadow: 0 4px 15px rgba(72, 187, 120, 0.3);
            transition: all 0.3s ease;
        }

        .container.signin:hover {
            box-shadow: 0 6px 25px rgba(72, 187, 120, 0.5);
            border-color: #38a169;
        }

        .container.signin p {
            text-align: center;
            font-size: 12px;
            color: #1a202c;
            font-weight: 500;
            margin: 0;
        }

        .container.signin a {
            color: #2f855a;
            text-decoration: none;
            font-weight: 700;
            transition: color 0.3s ease;
        }

        .container.signin a:hover {
            text-decoration: underline;
            color: #22543d;
        }

        form > h1 {
            text-align: center;
            font-size: 16px;
            font-weight: 700;
            color: #ffffff;
            margin-top: 8px;
            padding: 10px;
            background: linear-gradient(135deg, rgba(126, 34, 206, 0.3), rgba(230, 126, 34, 0.3));
            border-radius: 10px;
            border: 2px solid rgba(255, 255, 255, 0.4);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
            animation: slideUp 0.6s ease-out, titleShine 4s ease-in-out infinite;
            animation-delay: 0.3s;
            animation-fill-mode: both;
            line-height: 1.2;
        }

        @keyframes titleShine {
            0%, 100% {
                text-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
            }
            50% {
                text-shadow: 0 0 40px rgba(255, 255, 255, 0.6);
            }
        }

        /* Input validation styles */
        input.valid {
            border-color: #48bb78 !important;
            animation: validPulse 0.5s ease;
        }

        input.invalid {
            border-color: #f56565 !important;
            animation: invalidShake 0.5s ease;
        }

        @keyframes validPulse {
            0%, 100% {
                box-shadow: 0 0 0 0 rgba(72, 187, 120, 0.3);
            }
            50% {
                box-shadow: 0 0 0 5px rgba(72, 187, 120, 0);
            }
        }

        @keyframes invalidShake {
            0%, 100% {
                transform: translateX(0);
            }
            25% {
                transform: translateX(-5px);
            }
            75% {
                transform: translateX(5px);
            }
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
            background: linear-gradient(135deg, #48bb78, #38a169);
            color: white;
            animation: successGlow 2s ease-in-out infinite;
        }

        @keyframes successGlow {
            0%, 100% {
                box-shadow: 0 0 10px rgba(72, 187, 120, 0.5);
            }
            50% {
                box-shadow: 0 0 20px rgba(72, 187, 120, 0.8);
            }
        }

        .error-message {
            background: linear-gradient(135deg, #f56565, #e53e3e);
            color: white;
            animation: errorGlow 2s ease-in-out infinite;
        }

        @keyframes errorGlow {
            0%, 100% {
                box-shadow: 0 0 10px rgba(245, 101, 101, 0.5);
            }
            50% {
                box-shadow: 0 0 20px rgba(245, 101, 101, 0.8);
            }
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
