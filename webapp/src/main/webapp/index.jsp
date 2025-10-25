<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>User Registration</title>
<!-- Google Fonts for clean typography -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', sans-serif;
    background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }

  .container {
    background: #fff;
    padding: 40px;
    max-width: 400px;
    width: 90%;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
  }

  h2 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
  }

  p {
    text-align: center;
    color: #555;
    font-size: 14px;
  }

  form {
    display: flex;
    flex-direction: column;
  }

  label {
    margin-top: 15px;
    margin-bottom: 5px;
    font-weight: 600;
    color: #222;
  }

  input {
    padding: 12px;
    border: 2px solid #ccc;
    border-radius: 8px;
    font-size: 14px;
    transition: 0.3s;
  }
  input:focus {
    border-color: #66a6ff;
    outline: none;
    box-shadow: 0 0 8px rgba(102, 166, 255, 0.5);
  }

  button {
    margin-top: 25px;
    padding: 14px;
    background: linear-gradient(45deg, #ff7e5f, #feb47b);
    border: none;
    border-radius: 10px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
  }
  button:hover {
    background: linear-gradient(45deg, #feb47b, #ff7e5f);
  }

  .footer {
    text-align: center;
    margin-top: 20px;
    font-size: 14px;
    color: #555;
  }

  /* Responsive adjustments */
  @media(max-width: 500px){
    .container {
      padding: 30px 20px;
    }
  }

</style>
</head>
<body>

<div class="container">
  <h2>User Registration</h2>
  <form id="registerForm">
    <label for="name">Full Name</label>
    <input type="text" id="name" placeholder="Enter your full name" required />

    <label for="mobile">Mobile Number</label>
    <input type="tel" id="mobile" placeholder="Enter 10-digit mobile" pattern="\d{10}" required />

    <label for="email">Email Address</label>
    <input type="email" id="email" placeholder="Enter your email" required />

    <label for="password">Create Password</label>
    <input type="password" id="password" placeholder="Create password" required />

    <label for="confirmPassword">Confirm Password</label>
    <input type="password" id="confirmPassword" placeholder="Confirm password" required />

    <button type="submit">Register</button>
  </form>
  <div class="footer">
    <p>Already have an account? <a href="#">Sign In</a></p>
  </div>
</div>

<script>
  document.getElementById('registerForm').addEventListener('submit', function(e){
    e.preventDefault();

    const name = document.getElementById('name').value.trim();
    const mobile = document.getElementById('mobile').value.trim();
    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;

    if(password !== confirmPassword){
      alert('Passwords do not match!');
      return;
    }

    if(mobile.length !== 10 || isNaN(mobile)){
      alert('Please enter a valid 10-digit mobile number.');
      return;
    }

    alert(`Registration successful! Welcome, ${name}.`);
    // Here, you can add AJAX to send data to backend or further processing
  });
</script>

</body>
</html>
