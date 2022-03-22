<?php

error_reporting(0);


?>
<?php
session_start();

?>
<!DOCTYPE html>


<html>
<head>
	<title>Admin Login </title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- custom css -->
<link rel="stylesheet" type="text/css" href="style/admin.css">
</head>

<body>
	<div class="container">
		<form action="admin_login.php" method="post">
			<h3>Admin Login </h3>
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="Username" name="email"class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="pwd" placeholder="Password">
  </div>
 
  <button type="submit" name="submit" class="btn btn-primary" value="login">Submit</button> 
</form>
		
	</div>

</body>
</html>
<?php
   include('db/connection.php');

   if(isset($_POST['submit'])){
    $email=$_POST['email'];
    $password =$_POST['password'];
    $query = mysqli_query($conn,"select * from admin_login where name='$email' AND password='$password' ");
    if($query){
      if (mysqli_num_rows($query)>0) {
        $_SESSION['email']= $email;

        header('location:home.php');
        
      }else
      {
        echo "<script> alert('Invalid Credentials,Please Try Again')</script>";

      }

    }
   }


?>





