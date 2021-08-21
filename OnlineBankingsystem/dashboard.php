<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="newcss.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
        h1{ color: white;}
         
    </style>
</head>
<body>
    <div style="background-image: url('dashboard.jpg');">
    <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b><br>
    Always Logout while leaving the site!</h1>
    
    <div class="navbar">
        
        <ul>
            <li><a href="index.php">Home </a></li>
            <li><a href="transfermoney.php">Transaction</a></li>
            <li><a href="history.php">History</a></li>
            <li><a href="reset-password.php" class="btn btn-warning">Reset Password</a></li>
            <li><a href="logout.php" class="btn btn-danger ml-3">Log Out</a></li>
            <li id="last"><a href="contact.php">Contact Us</a></li>
        </ul>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
