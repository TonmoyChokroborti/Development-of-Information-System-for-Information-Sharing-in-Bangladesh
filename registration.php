<?php
session_start();
header('location:login.php');
$con = mysqli_connect('localhost','root','');

mysqli_select_db($con,'userregistration');
$name  = $_POST['user'];
$pass  = $_POST['password'];
$reg = " insert into usertable (name,password) values ('$name','$pass')";
mysqli_query ($con ,$reg);
echo "Registration Successfull ";

?>