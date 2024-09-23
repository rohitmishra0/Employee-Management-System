<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>HR Dashboard</title>
    <link rel="stylesheet" href="HRDashboard.css">
</head>
<body>

    <header>
        <img src="images\tata_logo.png" alt="Logo" onclick="window.location.href='https://www.tsdpl.in/'">
        <div class="company-name">TSDPL (Tata Steel Downstream Product Limited)</div>
        <img src="images/logout.jpg" alt="User" onclick="window.location.href='loginPage.html'">
    </header>
    
    <div class="container">
        <div class="left-section">
            <h2>Hi, ${hrName}</h2>
            <p>HR ID: ${hrID}</p>
            <p>Department: ${department}</p>
            <p>Date of Joining: ${doj}</p>
            <p>Phone: ${phone}</p>
        </div>
        <div class="right-section">
            <div class="column">
                <h3>Holiday</h3>
                <div class="divider"></div>
                <button>Accept</button>
                <button>Reject</button>
            </div>
            <div class="column">
                <h3>Quarter Allotment</h3>
                <div class="divider"></div>
                <button>Accept</button>
                <button>Reject</button>
            </div>
            <div class="column">
                <h3>Medbook</h3>
                <div class="divider"></div>
                <button>Accept</button>
                <button>Reject</button>
            </div>
        </div>
    </div>
    
</body>
</html>
