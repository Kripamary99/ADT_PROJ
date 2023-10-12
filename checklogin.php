<?php 
session_start();
ob_start(); 
require ('config.php');

$email = $_POST['email'];
$pass = $_POST['pass'];

$query = "SELECT * FROM `admin` WHERE email = '$email' AND passsword = '$pass'";
$result_query = mysqli_query($con, $query);
$row = mysqli_fetch_array($result_query);
$count_query = mysqli_num_rows($result_query);

if ($count_query != 0) 
	{

	$username = $row['username'];
	$_SESSION['username']= $username;
    header("Location: controller/index.php");
	exit();
	} 
else {
		   echo '<script>alert("Incorrect Credentials Entered"); location.replace(document.referrer);</script>';
	}

//echo $email;
//echo '</br>';
//echo $password;



//ob_end_flush();*/
?>