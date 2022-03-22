<?php 

include('db/connection.php');

if (isset($_POST['submit'])){
  $name = $_POST['name'];
  $nid=$_POST['nidnumber'];
  $ward=$_POST['ward'];
  $area=$_POST['area'];
  $city =$_POST['city'];
  $problem=$_POST['problem'];
  $solution=$_POST['solution'];
  $councilor =$_POST['councilor'];
  $address=$_POST['address'];
  

  $query1 = mysqli_query($conn,"insert into garbazeproblem(name,nidnumber,ward,area,city,problem,solution,councilor,address)values('$name','$nidnumber','$ward','$area','$city','$problem','$solution','$councilor','$address')");
  if ($query1) {
    echo "<script>alert(' Submitted !!')</script>";
  }else{
    echo "<script>alert('Please Try Again !!')</script>";
  }

}


?>