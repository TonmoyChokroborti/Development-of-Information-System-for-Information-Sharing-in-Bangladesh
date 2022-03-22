<?php

session_start();
if( $_SESSION['email']==true){

}else
header('location:admin_login.php');
$page ='catagory';

include('include/header.php');



?>
<div style="width: 70%; margin-left: 25%; margin-top: 10%">
<div class="text-right">
</div>


<form action="addcatagory.php" method="post" name="catagoryform" onsubmit="return validateform()" >
<h1> Add Catagories </h1>
<hr>
  <div class="form-group">
    <label for="email">Catagory</label>
    <input type="text" name ="catagory" placeholder="Enter Your Catagory Name " class="form-control" id="email">
  </div>
  <div class="form-group">
  <label for="comment">Add Description</label>
  <textarea class="form-control" placeholder="Enter Your Catagory Description " rows="5" name="des" id="comment">
  </textarea>
</div>
<input type="submit" name="submit" class="btn btn-primary"value="Add Catagory">
  
</form>
<script>
function  validateform() {
    var x = document.forms['catagoryform']['catagory'].value;
   if (x=="") {
       alert('Catagory Must Be Filled Out !');
       return false;
   } 
}

</script>

</div>
<?php 
include('include/footer.php');


?>
<?php 
 
 include('db/connection.php');
 
 if (isset($_POST['submit'])){
   $catagory_name = $_POST['catagory'];
   $des = $_POST['des'];
   $check=mysqli_query($conn,"select * from catagory where catagory_name='$catagory_name'");
   if(mysqli_num_rows($check)>0){
     echo"<script> alert('Catagory Name Already Be taken !! ')</script>";
     exit();     
   }
   $query = mysqli_query($conn,"insert into catagory(catagory_name,des)values('$catagory_name','$des')");
   if($query){
     echo"<script>alert('Catagory Add Successfully')</script>";
     echo"<script>window.location='http://localhost/DevelopmentBd/news/catagory.php';</script>";

   
   }
   else{
     echo"<script> alert('Please try Again')</script>";
   }
 }

?>