<?php 

error_reporting(0);

?>




<div style="width: 70%; margin-left: 25%; margin-top: 10%">
<div class="text-right">
</div>


<form action="callcat.php" method="post" name="catagoryform" onsubmit="return validateform()" >
<h1> Add Catagories </h1>
<hr>
  <div class="form-group">
    <label for="email">City</label>
    <input type="text" name ="city" placeholder="Enter City Name " class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="email">Ward Number</label>
    <input type="text" name ="ward" placeholder="Enter ward " class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="email">Number</label>
    <input type="text" name ="number" placeholder="Enter num " class="form-control" id="email">
  </div>
<input type="submit" name="submit" class="btn btn-primary"value="Add Catagory">
  
</form>
<script>
function  validateform() {
    var x = document.forms['catagoryform']['city'].value;
   if (x=="") {
       alert('Catagory Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var y = document.forms['catagoryform']['ward'].value;
   if (y=="") {
       alert('ward Must Be Filled Out !');
       return false;
   } 
}
function  validateform() {
    var z = document.forms['catagoryform']['number'].value;
   if (z=="") {
       alert('number Must Be Filled Out !');
       return false;
   } 
}

</script>

</div>
<?php 
 
 include('db/connection.php');
 
 if (isset($_POST['submit'])){
   $city = $_POST['city'];
   $ward = $_POST['ward'];
   $number = $_POST['number'];
  
   $query = mysqli_query($conn,"insert into catagory(city,ward,number)values('$city','$ward','$number')");
   if($query){
     echo"<script>alert('Catagory Add Successfully')</script>";
     echo"<script>window.location='http://localhost/DevelopmentBd/Electricity/index.html';</script>";

   
   }
   else{
     echo"<script> alert('Please try Again')</script>";
   }
 }

?>