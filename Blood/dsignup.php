<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Blood Donators </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Muli:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Flattern - v4.3.0
  * Template URL: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<style >
  body {
  background-color: lightblue;
}
</style>

<body>
  <?php 

error_reporting(0);

?>





<div style="width: 70%; margin-left: 25%; margin-top: 10%">
<div class="text-right">
</div>


<form action="callcat.php" method="post" name="catagoryform" onsubmit="return validateform()" >
<h1> Be a Donators </h1>
<hr>
  <div class="form-group">
    <label for="email">Name</label>
    <input type="text" name ="uname" placeholder="Enter Your Name " class="form-control" id="email">
  </div>
  <br>
  <br>
  <div class="form-group">
    <label for="email">Gender</label>
    <input type="text" name ="ugender" placeholder="Enter Your Gender " class="form-control" id="email">
  </div>
  <br>
  <br>
  <div class="form-group">
    <label for="email">Blood  Group</label>
    <input type="text" name ="ugroup" placeholder="Enter Your Blood Group  " class="form-control" id="email">
  </div>
  <br>
  <br>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="text" name ="uemail" placeholder="Enter Your Email " class="form-control" id="email">
  </div>
  <br>
  <br>
  <div class="form-group">
    <label for="email">Password</label>
    <input type="text" name ="upass" placeholder="Enter Your Password " class="form-control" id="email">
  </div>
  <br>
  <br>
<input type="submit" name="submit" class="btn btn-primary"value="Signup">
  
</form>
<script>
function  validateform() {
    var x = document.forms['catagoryform']['uname'].value;
   if (x=="") {
       alert('Name Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var y = document.forms['catagoryform']['ugender'].value;
   if (y=="") {
       alert('gender Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var z = document.forms['catagoryform']['ugroup'].value;
   if (z=="") {
       alert(' blood group Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var z = document.forms['catagoryform']['uemail'].value;
   if (z=="") {
       alert('email Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var z = document.forms['catagoryform']['upass'].value;
   if (z=="") {
       alert('password Must Be Filled Out !');
       return false;
   } 
}
</script>

</div>

<?php 
 
 include('db/connection.php');
 
 if (isset($_POST['submit'])){
   $name = $_POST['name'];
   $gender = $_POST['gender'];
   $group = $_POST['group'];
   $email = $_POST['email'];
   $pass = $_POST['pass'];
 
   $query = mysqli_query($conn,"insert into user(name,gender,group,email,pass)values('$name','$gender','$group','$email','$pass')");
   if($query){
     echo"<script>alert('User Add Successfully')</script>";
     echo"<script>window.location='http://localhost/DevelopmentBd/Blood/ulogin.php';</script>";

   
   }
   else{
     echo"<script> alert('Please try Again')</script>";
   }
 }

?>

  
  

 

  

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>


</html>
