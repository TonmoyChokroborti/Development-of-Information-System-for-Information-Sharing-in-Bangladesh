<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Development  Bangladesh </title>
      
       <link href="main.css" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Lobster&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style>
    body{
      overflow-x: hidden;
    }
#centered1{
  position: absolute;
  font-size: 10vw;
  top: 30%;
  left: 30%;
  transform: translate(-50%,-50%);
}
#centered2{
  position: absolute;
  font-size: 10vw;
  top: 50%;
  left: 40%;
  transform: translate(-50%,-50%);
}
#centered3{
  position: absolute;
  font-size: 10vw;
  top: 70%;
  left: 30%;
  transform: translate(-50%,-50%);
}
#signup{
    width: 60%;
    border-radius: 30px;
  }
  #login{
    width: 60%;
    background-color: #fff;
    border: 1px solid #1da1f2;
    color: #1da1f2;
    border-radius: 30px;
  }
  #login:hover{
    width: 60%;
    background-color: #fff;
    color: #1da1f2;
    border: 2px solid #1da1f2;
    border-radius: 30px;
  }
  .well{
    background-color: #187FAB;
  }








  </style>
  
  <body>
    <div class="row">
      <div class="col-sm-12">
        <div class="well">
          <center><h1>Develop Bangladesh </h1></center>
        </div>
        
      </div>
      
    </div>
    <div class="row">
      <div class="col-sm-6" style="left: 0.5%;">
        <img src="images\dev1.jpg" class="img-rounded" title="Develop Bangladesh" width="650px" height="565px">
        <div id = "centered1" class="centered"><h3 style="color: black;"><span class="glyphicon glyphicon-heart-empty"></span>&nbsp&nbsp<strong>Your City Your Service </strong></h3>
        </div>
        <div id = "centered2" class="centered"><h3 style="color: black;"><span class="glyphicon glyphicon-eye-open"></span>&nbsp&nbsp<strong>Hear  what people are talking about  </strong></h3>
        </div>
        <div id = "centered3" class="centered"><h3 style="color: black;"><span class="glyphicon glyphicon-send"></span>&nbsp&nbsp<strong> Join in the devlelopment</strong></h3>
        </div>
      </div>
      <div class="col-sm-6" style=":8%:">
        <img src="images\success.png" class="img-rounded" title="Development" width="80px" height="80px">
        <h2><strong>See whats happening in <br> the country right now</strong></h2><br><br>
        <h4><strong>join develope Bangladesh Today </strong></h4>
        <form method="post" action="">
        <button id="signup" class="btn btn-info btn-lg" name="signup">Sign up</button><br><br>
        <?php
          if(isset($_POST['signup'])){
            echo "<script>window.open('signup.php','_self')</script>";
          }
        ?>
        <button id="login" class="btn btn-info btn-lg" name="login">Login</button><br><br>
        <?php
          if(isset($_POST['login'])){
            echo "<script>window.open('signin.php','_self')</script>";
          }
        ?>
      </form>
    </div>
   </div>
 
     
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      
      <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsvyxrMA8HC2LTpzdF_qHNs6YEXUZDpZs & callback=initMap">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>

    </html>

        