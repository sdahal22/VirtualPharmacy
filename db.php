<?php
// use your own db details to connect DB
$servername = "localhost";
$username = "";
$password = "";
$db = "";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>
