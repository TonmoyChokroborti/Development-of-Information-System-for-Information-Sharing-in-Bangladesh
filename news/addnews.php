
<?php

error_reporting(0);


?>





<?php

session_start();
if( $_SESSION['email']==true){

}else
header('location:admin_login.php');
$page ='product';

include('include/header.php');



?>
<div style="margin-left: 17%; width: 80%;">
  <ul class="breadcrumb">
    <li class="breadcrumb-item active"><a href="home.php">Home</a></li>
    <li class="breadcrumb-item active"><a href="news.php">News</a></li>
    <li class="breadcrumb-item active">Add News</li>
    
  </ul>
</div>






<div style="width: 70%; margin-left: 25%;">




<form action="addnews.php" method="post" enctype="multipart/form-data" name="catagoryform" onsubmit="return validateform()" >
<h1> Add News </h1>
<hr>
  <div class="form-group">
    <label for="email">Title</label>
    <input type="text" name ="title" placeholder="Title.... " class="form-control" id="email">
  </div>
  <div class="form-group">
  <label for="comment">Description</label>
  <textarea class="form-control" placeholder=" Description..... " rows="5" name="description" id="comment">
  </textarea>
</div>
<div class="form-group">
    <label for="email">Date</label>
    <input type="Date" name ="date"  class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="email">Thumbnail</label>
    <input type="file" name ="thumbnail" placeholder="Enter Your Catagory Name " class="form-control  img-thumbnail" id="email">
  </div>
  <div class="form-group">
    <label for="email">Catagory:</label>
   
    <select class="form-control" name="catagory" >
       <?php
    include('db/connection.php');

    $query = mysqli_query($conn,"select * from catagory");
     while ($row = mysqli_fetch_array($query)) {
      
 ?>
      <option value="<?php echo $row['catagory_name'];?>"><?php echo $row['catagory_name'];?></option>
      
     
      <?php } ?>
        
     
    </select>
  </div>
  <div class="form-group">
    <label for="admin">Admin</label>
    <input type="text" class="form-control" disabled value="<?php echo $_SESSION['email']; ?>">
    
  </div>


<input type="submit" name="submit" class="btn btn-primary"value="Submit">
  
</form>
<script>
function  validateform() {
    var x = document.forms['catagoryform']['title'].value;
    var y = document.forms['catagoryform']['description'].value;
   

   if (x=="") {
       alert('Title Must Be Filled Out !');
       return false;
   } 
    if (y=="") {
       alert('Description  Must Be Filled Out !');
       return false;
   }
   if (y.length<10) {
    alert('Description Atleast 100 character ');
    return false ;
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
  $title = $_POST['title'];
  $description=$_POST['description'];
  $date=$_POST['date'];
  $thumbnail=$_FILES['thumbnail']['name'];
   $tmp_thumbnail=$_FILES['thumbnail']['tmp_name'];
  $catagory=$_POST['catagory'];
  $admin=$_SESSION['email'];
  move_uploaded_file($tmp_thumbnail, "images/$thumbnail");

  $query1 = mysqli_query($conn,"insert into newsbd(title,description,date,catagory,thumbnail,admin)values('$title','$description','$date','$catagory','$thumbnail','$admin')");
  if ($query1) {
    echo "<script>alert('News uploaded Successfully !!')</script>";
  }else{
    echo "<script>alert('Please Try Again !!')</script>";
  }

}


?>


