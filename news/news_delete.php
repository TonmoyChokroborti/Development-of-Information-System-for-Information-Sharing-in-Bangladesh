<?php
include('db/connection.php');

$id = $_GET['del'];
$query = mysqli_query($conn,"delete from newsbd where id ='$id'");
if ($query) {
	echo"<script>alert('News deleted !')</script>";
	echo "<script>window.location='http://localhost/DevelopmentBd/news/news.php';</script>";
	
} else{
	echo " Please Try agin ";
}








?>