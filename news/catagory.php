
<?php

error_reporting(0);


?>





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
<a class="btn btn-primary" href="addcatagory.php">Add Catagory</a>

</div>
<table class="table table-bordered">
<tr>
<th>Id</th>
<th>Catagory Name</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<?php
include('db/connection.php');
$query=mysqli_query($conn,"select * from catagory");
while($row=mysqli_fetch_array($query)){
?>
<tr>
<td><?php echo $row['id'];?></td>
<td><?php echo $row['catagory_name'];?></td>
<td><?php echo substr($row['des'],0,200);?></td>
<td><a href="edit.php? edit=<?php echo $row['id'];?>" class="btn btn-info">Edit</a></td>
<td><a href="delete.php? del=<?php echo $row['id'];?>" class="btn btn-danger">Delete</a></td>
</tr>    


<?php } ?>


</table>




</div>
<?php 
include('include/footer.php');
?>