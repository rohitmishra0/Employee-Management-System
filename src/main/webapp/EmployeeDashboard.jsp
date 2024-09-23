<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="EmployeeDashboard.css">
</head>
<body>

    <header>
        <img src="images\tata_logo.png" alt="Logo" onclick="window.location.href='https://www.tsdpl.in/'">
        <div class="company-name">TSDPL (Tata Steel Downstream Product Limited)</div>
        <img src="images/logout.jpg" alt="User" onclick="window.location.href='loginPage.html'">
    </header>
    
    <div class="container">
        <div class="left-section">
            <div class="left-box">
                <h2>Hi, ${ename}</h2>
                <p>Employee ID: ${userId}</p>
                <p>Department: ${department}</p>
                <p>Date of Joining: ${doj}</p>
                <p>Phone: ${phone}</p>
            </div>
        </div>
        <div class="right-section">
            <div class="right-box">
                <h3>Options</h3>
                <form action="EmployeeDashboardServlet" method="POST">
                    <ul>
                        <li><input type="radio" name="requestType" value="quarter" required> Apply for Quarter Allotment</li>
                        <li><input type="radio" name="requestType" value="medbook" required> Apply for New Medical Book</li>
                        <li><input type="radio" name="requestType" value="holiday" required> Apply for Holiday</li>
                    </ul>
                    <textarea name="remarks" id="remarks" placeholder="Remarks/Request" required></textarea>
                    <input type="hidden" name="eid" value="${userId}"> <!-- Hidden field for eid -->
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <footer>
        <div class="copyright">
            Copyright: <a href="https://www.linkedin.com/in/rohitmishra0/" class="footer-link">Rohit Mishra</a> & 
            <a href="https://www.linkedin.com/in/ayush-kumar-tiwary-26525321b/" class="footer-link">Ayush Tiwary</a>
        </div>
    </footer>
</body>
</html>
