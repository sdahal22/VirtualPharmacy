<?php

$servername = "localhost";
$username = "national";
$password = "eQjAG9bC";
$db = "national_ndhdb";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>