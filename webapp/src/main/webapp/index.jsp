<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Diwali - Registration</title>
    <style>
        :root {
            --diwali-orange: #FF6B35;
            --diwali-gold: #FFD23F;
            --diwali-red: #D2042D;
            --diwali-purple: #8B2E8F;
            --diwali-dark: #1a0f0f;
            --diwali-light: #FFF8E7;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1a0f0f 0%, #4a1a1a 50%, #1a0f0f 100%);
            min-height: 100vh;
            padding: 20px;
            position: relative;
            overflow-x: hidden;
        }

        /* Animated Background Diyas */
        .diya-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 0;
        }

        .floating-diya {
            position: absolute;
            font-size: 40px;
            animation: float 6s ease-in-out infinite;
            opacity: 0.6;
        }

        .floating-diya:nth-child(1) { left: 10%; animation-delay: 0s; }
        .floating-diya:nth-child(2) { left: 30%; animation-delay: 1s; }
        .floating-diya:nth-child(3) { left: 50%; animation-delay: 2s; }
        .floating-diya:nth-child(4) { left: 70%; animation-delay: 3s; }
        .floating-diya:nth-child(5) { left: 90%; animation-delay: 4s; }

        @keyframes float {
            0%, 100% { transform: translateY(100vh) rotate(0deg); }
            50% { transform: translateY(-20vh) rotate(180deg); }
        }

        /* Sparkle Effects */
        .sparkle {
            position: fixed;
            width: 4px;
            height: 4px;
            background: var(--diwali-gold);
            border-radius: 50%;
            animation: sparkle 3s ease-in-out infinite;
            pointer-events: none;
            z-index: 1;
        }

        @keyframes sparkle {
            0%, 100% { opacity: 0; transform: scale(0); }
            50% { opacity: 1; transform: scale(1.5); }
        }

        /* Main Container */
        .main-wrapper {
            max-width: 600px;
            margin: 0 auto;
            position: relative;
            z-index: 2;
        }

        /* Header Section */
        .diwali-header {
            text-align: center;
            margin-bottom: 30px;
            animation: fadeInDown 1s ease-out;
        }

        .diwali-header h1 {
            font-size: 48px;
            color: var(--diwali-gold);
            text-shadow: 0 0 20px var(--diwali-orange), 0 0 40px var(--diwali-red);
            margin-bottom: 10px;
            animation: glow 2s ease-in-out infinite;
        }

        @keyframes glow {
            0%, 100% { text-shadow: 0 0 20px var(--diwali-orange), 0 0 40px var(--diwali-red); }
            50% { text-shadow: 0 0 30px var(--diwali-gold), 0 0 60px var(--diwali-orange); }
        }

        .diya-row {
            display: flex;
            justify-content: center;
            gap: 20px;
            font-size: 50px;
            margin: 20px 0;
            animation: bounce 2s ease-in-out infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .rangoli-divider {
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, 
                transparent, 
                var(--diwali-orange), 
                var(--diwali-gold), 
                var(--diwali-red), 
                var(--diwali-purple),
                var(--diwali-gold), 
                var(--diwali-orange), 
                transparent);
            margin: 20px 0;
            animation: shimmer 3s linear infinite;
        }

        @keyframes shimmer {
            0% { opacity: 0.6; }
            50% { opacity: 1; }
            100% { opacity: 0.6; }
        }

        /* Form Container */
        .form-container {
            background: linear-gradient(135deg, rgba(255, 248, 231, 0.95), rgba(255, 248, 231, 0.98));
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 0 40px rgba(255, 107, 53, 0.4), 0 0 80px rgba(210, 4, 45, 0.2);
            border: 3px solid var(--diwali-gold);
            position: relative;
            animation: fadeInUp 1s ease-out;
            overflow: hidden;
        }

        /* Rangoli Corner Decorations */
        .rangoli-corner {
            position: absolute;
            width: 80px;
            height: 80px;
            opacity: 0.4;
        }

        .rangoli-corner.top-left {
            top: -10px;
            left: -10px;
            background: radial-gradient(circle, var(--diwali-orange), var(--diwali-gold), transparent);
        }

        .rangoli-corner.top-right {
            top: -10px;
            right: -10px;
            background: radial-gradient(circle, var(--diwali-red), var(--diwali-purple), transparent);
        }

        .rangoli-corner.bottom-left {
            bottom: -10px;
            left: -10px;
            background: radial-gradient(circle, var(--diwali-purple), var(--diwali-gold), transparent);
        }

        .rangoli-corner.bottom-right {
            bottom: -10px;
            right: -10px;
            background: radial-gradient(circle, var(--diwali-orange), var(--diwali-red), transparent);
        }

        .form-container h2 {
            color: var(--diwali-red);
            text-align: center;
            margin-bottom: 10px;
            font-size: 28px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .form-container .subtitle {
            text-align: center;
            color: var(--diwali-purple);
            margin-bottom: 25px;
            font-size: 16px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: var(--diwali-dark);
            font-weight: 600;
            font-size: 14px;
        }

        label::before {
            content: '🪔 ';
            margin-right: 5px;
        }

        input {
            width: 100%;
            padding: 14px;
            border: 2px solid var(--diwali-gold);
            border-radius: 10px;
            font-size: 15px;
            background: white;
            transition: all 0.3s ease;
            color: var(--diwali-dark);
        }

        input:focus {
            outline: none;
            border-color: var(--diwali-orange);
            box-shadow: 0 0 15px rgba(255, 107, 53, 0.3);
            transform: translateY(-2px);
        }

        input::placeholder {
            color: #999;
        }

        .decorative-line {
            height: 2px;
            background: linear-gradient(90deg, 
                var(--diwali-orange), 
                var(--diwali-gold), 
                var(--diwali-red), 
                var(--diwali-purple),
                var(--diwali-orange));
            margin: 25px 0;
            border-radius: 2px;
        }

        .terms {
            text-align: center;
            margin: 20px 0;
            color: var(--diwali-dark);
            font-size: 14px;
        }

        .terms a {
            color: var(--diwali-red);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .terms a:hover {
            color: var(--diwali-orange);
            text-decoration: underline;
        }

        .register-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(135deg, var(--diwali-orange), var(--diwali-red));
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(255, 107, 53, 0.4);
            position: relative;
            overflow: hidden;
        }

        .register-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: left 0.5s ease;
        }

        .register-btn:hover::before {
            left: 100%;
        }

        .register-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 25px rgba(255, 107, 53, 0.6);
        }

        .register-btn:active {
            transform: translateY(-1px);
        }

        .signin-container {
            background: linear-gradient(135deg, rgba(139, 46, 143, 0.1), rgba(255, 107, 53, 0.1));
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin-top: 20px;
            border: 2px solid var(--diwali-gold);
        }

        .signin-container p {
            color: var(--diwali-dark);
            font-size: 15px;
        }

        .signin-container a {
            color: var(--diwali-red);
            font-weight: bold;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .signin-container a:hover {
            color: var(--diwali-orange);
            text-decoration: underline;
        }

        .thank-you {
            text-align: center;
            margin-top: 30px;
            padding: 25px;
            background: linear-gradient(135deg, rgba(255, 211, 63, 0.2), rgba(255, 107, 53, 0.2));
            border-radius: 15px;
            border: 2px dashed var(--diwali-gold);
        }

        .thank-you h3 {
            color: var(--diwali-gold);
            font-size: 32px;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.3);
            margin-bottom: 10px;
            animation: pulse 2s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }

        .thank-you p {
            color: var(--diwali-light);
            font-size: 18px;
            font-weight: 600;
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Firework Effect */
        .firework {
            position: fixed;
            width: 6px;
            height: 6px;
            background: var(--diwali-gold);
            border-radius: 50%;
            pointer-events: none;
            z-index: 1;
            animation: firework 2s ease-out infinite;
        }

        @keyframes firework {
            0% {
                transform: translate(0, 0) scale(1);
                opacity: 1;
            }
            100% {
                transform: translate(var(--x), var(--y)) scale(0);
                opacity: 0;
            }
        }

        @media (max-width: 768px) {
            .diwali-header h1 {
                font-size: 36px;
            }
            
            .form-container {
                padding: 25px;
            }
            
            .diya-row {
                font-size: 35px;
            }
        }
    </style>
</head>
<body>
    <!-- Floating Diyas Background -->
    <div class="diya-container">
        <div class="floating-diya">🪔</div>
        <div class="floating-diya">🪔</div>
        <div class="floating-diya">🪔</div>
        <div class="floating-diya">🪔</div>
        <div class="floating-diya">🪔</div>
    </div>

    <div class="main-wrapper">
        <!-- Header -->
        <div class="diwali-header">
            <h1>✨ शुभ दीपावली ✨</h1>
            <div class="diya-row">
                🪔 🪔 🪔 🪔 🪔
            </div>
            <div class="rangoli-divider"></div>
        </div>

        <!-- Registration Form -->
        <form action="action_page.php" method="post">
            <div class="form-container">
                <!-- Rangoli Corner Decorations -->
                <div class="rangoli-corner top-left"></div>
                <div class="rangoli-corner top-right"></div>
                <div class="rangoli-corner bottom-left"></div>
                <div class="rangoli-corner bottom-right"></div>

                <h2>🎊 New User Registration 🎊</h2>
                <p class="subtitle">Deploy using Docker with Vivek Pagi</p>

                <div class="decorative-line"></div>

                <div class="form-group">
                    <label for="Name">Enter Full Name</label>
                    <input type="text" placeholder="Enter your full name" name="Name" id="Name" required>
                </div>

                <div class="form-group">
                    <label for="mobile">Enter Mobile Number</label>
                    <input type="tel" placeholder="Enter your mobile number" name="mobile" id="mobile" required pattern="[0-9]{10}">
                </div>

                <div class="form-group">
                    <label for="email">Enter Email Address</label>
                    <input type="email" placeholder="Enter your email" name="email" id="email" required>
                </div>

                <div class="form-group">
                    <label for="psw">Create Password</label>
                    <input type="password" placeholder="Create a strong password" name="psw" id="psw" required minlength="6">
                </div>

                <div class="form-group">
                    <label for="psw-repeat">Confirm Password</label>
                    <input type="password" placeholder="Re-enter your password" name="psw-repeat" id="psw-repeat" required minlength="6">
                </div>

                <div class="decorative-line"></div>

                <div class="terms">
                    <p>By creating an account you agree to our <a href="#">Terms & Privacy Policy</a></p>
                </div>

                <button type="submit" class="register-btn">
                    🎉 Register Now 🎉
                </button>
            </div>

            <div class="signin-container">
                <p>Already have an account? <a href="#">Sign In Here</a></p>
            </div>

            <div class="thank-you">
                <h3>🎆 Thank You! Happy Learning 🎆</h3>
                <p>May this Diwali bring prosperity and success! 🪔✨</p>
            </div>
        </form>
    </div>

    <script>
        // Create sparkle effects
        function createSparkle() {
            const sparkle = document.createElement('div');
            sparkle.className = 'sparkle';
            sparkle.style.left = Math.random() * 100 + '%';
            sparkle.style.top = Math.random() * 100 + '%';
            sparkle.style.animationDelay = Math.random() * 3 + 's';
            document.body.appendChild(sparkle);
            
            setTimeout(() => sparkle.remove(), 3000);
        }

        // Create sparkles periodically
        setInterval(createSparkle, 300);

        // Create firework effect on form submission
        document.querySelector('form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            // Validate password match
            const password = document.getElementById('psw').value;
            const confirmPassword = document.getElementById('psw-repeat').value;
            
            if (password !== confirmPassword) {
                alert('🪔 Passwords do not match! Please try again.');
                return;
            }
            
            // Create firework effect
            for (let i = 0; i < 50; i++) {
                setTimeout(() => {
                    const firework = document.createElement('div');
                    firework.className = 'firework';
                    firework.style.left = '50%';
                    firework.style.top = '50%';
                    firework.style.setProperty('--x', (Math.random() - 0.5) * 1000 + 'px');
                    firework.style.setProperty('--y', (Math.random() - 0.5) * 1000 + 'px');
                    firework.style.background = `hsl(${Math.random() * 360}, 100%, 50%)`;
                    document.body.appendChild(firework);
                    
                    setTimeout(() => firework.remove(), 2000);
                }, i * 20);
            }
            
            setTimeout(() => {
                alert('🎉 Registration Successful! Happy Diwali! 🪔');
                this.submit();
            }, 1000);
        });

        // Add hover effect to inputs
        const inputs = document.querySelectorAll('input');
        inputs.forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'scale(1.02)';
                this.parentElement.style.transition = 'transform 0.3s ease';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'scale(1)';
            });
        });
    </script>
</body>
</html>
