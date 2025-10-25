<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Diwali - Registration | Vivek Pagi</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #0a0404 0%, #2d1810 25%, #4a1a0f 50%, #2d1810 75%, #0a0404 100%);
            min-height: 100vh;
            padding: 40px 20px;
            position: relative;
            overflow-x: hidden;
        }

        /* Animated Background Pattern */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                radial-gradient(circle at 20% 30%, rgba(255, 107, 53, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 80% 70%, rgba(255, 210, 63, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 40% 80%, rgba(210, 4, 45, 0.1) 0%, transparent 50%);
            pointer-events: none;
            z-index: 0;
        }

        /* Floating Diyas */
        .diya-float {
            position: fixed;
            font-size: 50px;
            animation: floatDiya 8s ease-in-out infinite;
            opacity: 0.4;
            pointer-events: none;
            z-index: 1;
            filter: drop-shadow(0 0 10px rgba(255, 165, 0, 0.6));
        }

        .diya-float:nth-child(1) { left: 5%; top: 20%; animation-delay: 0s; }
        .diya-float:nth-child(2) { left: 85%; top: 15%; animation-delay: 2s; }
        .diya-float:nth-child(3) { left: 10%; top: 70%; animation-delay: 4s; }
        .diya-float:nth-child(4) { left: 90%; top: 65%; animation-delay: 6s; }

        @keyf
