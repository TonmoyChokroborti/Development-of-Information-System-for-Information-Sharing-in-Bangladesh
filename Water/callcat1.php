
<div style="width: 70%; margin-left: 25%; margin-top: 10%">
<div class="text-right">


</div>
<table class="table table-bordered">
<tr>
<th>Id</th>
<th>City</th>
<th>Ward</th>
<th>Number</th>

</tr>
<?php
include('db/connection.php');
$query=mysqli_query($conn,"select * from catagory");
while($row=mysqli_fetch_array($query)){
?>
<tr>
<td><?php echo $row['id'];?></td>
<td><?php echo $row['city'];?></td>
<td><?php echo $row['ward'];?></td>
<td><?php echo $row['number'];?></td>



</tr>    


<?php } ?>


</table>




</div>
