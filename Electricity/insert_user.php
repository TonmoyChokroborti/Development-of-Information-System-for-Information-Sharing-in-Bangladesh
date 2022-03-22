<?php 

include('db/connection.php');

if (isset($_POST['submit'])){
  $name = $_POST['name'];
  $city=$_POST['city'];
  $ward=$_POST['ward'];
  $house=$_POST['house'];
  $nid =$_POST['nid'];
  $occupation=$_POST['occupation'];
  $u_gender=$_POST['u_gender'];
  $u_connection =$_POST['u_connection'];
   $u_birthday=$_POST['u_birthday'];
  

  $query1 = mysqli_query($conn,"insert into registration(name,city,ward,house,nid,occupation,u_gender,u_connection,u_birthday)values('$name','$city','$ward','$house','$nid','$occupation','$u_gender','$u_connection','$u_birthday')");
  if ($query1) {
    echo "<script>alert('  Successfully Done !!')</script>";
  }else{
    echo "<script>alert('Please Try Again !!')</script>";
  }

}


?>