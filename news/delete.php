<?php
 include('db/connection.php');
 $id = $_GET['del'];
 $query = mysqli_query($conn,"delete from catagory where id='$id'");
 if($query){
     echo"<script>alert('catagory deleted')</script>";
     echo"<script>window.location='http://localhost/DevelopmentBd/news/catagory.php';</script>";


 }else{
     echo"Please Try again";
     
 }

?>