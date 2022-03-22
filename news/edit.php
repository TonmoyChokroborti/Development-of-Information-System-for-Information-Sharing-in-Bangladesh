<?php

session_start();
error_reporting(0);
if( $_SESSION['email']==true){

}else
header('location:admin_login.php');
$page ='catagory';

include('include/header.php');

?>
<?php 
include('db/connection.php');
$id=$_GET['edit'];
$query=mysqli_query($conn,"select * from catagory where id='$id'");
while($row=mysqli_fetch_array($query)){
    $catagory=$row['catagory_name'];
    $des=$row['des'];
}






?>
<div style="width: 70%; margin-left: 25%; margin-top: 10%">
<div class="text-right">
</div>


<form action="edit.php" method="post" name="catagoryform" onsubmit="return validateform()" >
<h1> Update Catagories </h1>
<hr>
  <div class="form-group">
    <label for="email">Catagory</label>
    <input type="text" name ="catagory" value="<?php echo  $catagory ; ?>" class="form-control" id="email">
  </div>
  <div class="form-group">
  <label for="comment">Add Description</label>
  <textarea class="form-control" rows="5" name="des" id="comment"><?php echo $des ; ?>
  </textarea>
  <input type="hidden" name="id" value="<?php echo $_GET['edit']?>">
</div>
<input type="submit" name="submit" class="btn btn-primary"value="Update Catagory">
  
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
 include('db/connection.php');
 if(isset($_POST['submit'])){
   $id = $_POST['id'];
   $catagory = $_POST['catagory'];
   $des  = $_POST['des'];
   $query1 = mysqli_query($conn,"update catagory set catagory_name ='$catagory',des='$des'  where id='$id'");
   if($query1){
     echo"<script>alert('Catagory Updated Successfully !')</script>";
     echo"<script>window.location='http://localhost/DevelopmentBd/news/catagory.php';</script>";

   }
   else{
     echo "Catagory not updated ";
   }
   
}


?>
<?php
include('include/footer.php');
?>