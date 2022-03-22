<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Emergancy Panel </title>
      
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
  <style >
    head,
body {
    background-color: lightcyan
}

.card {
    cursor: pointer
}

.hd {
    font-size: 25px;
    font-weight: 550
}

.card.hover,
.card:hover {
    box-shadow: 0 20px 40px rgba(0, 0, 0, .2)
}

.img {
    margin-bottom: 35px;
    -webkit-filter: drop-shadow(5px 5px 5px #222);
    filter: drop-shadow(5px 5px 5px #222)
}

.card-title {
    font-weight: 600
}

button.focus,
button:focus {
    outline: 0;
    box-shadow: none !important
}

.ft {
    margin-top: 25px
}

.chk {
    margin-bottom: 5px
}

.rck {
    margin-top: 20px;
    padding-bottom: 15px
}
    
  </style>

  <body>
    <?php
session_start();
include("include/header.php");


?>

    <div class='container-fluid mx-auto mt-5 mb-5 col-12' style="text-align: center">
    <div class="hd">Wasa Solution, Bangladesh </div>
    <p><small class="text-muted">Always render more and better service than <br />is expected of you, no matter what your ask may be.</small></p>
    <div class="row" style="justify-content: center">
      
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="https://i.imgur.com/xUWJuHB.png" />
                    <div class="card-title">Emergency Services  </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">If Your area is facing any water supply problems then contact with us  </small> </p>
                        <a href="dhaka.php">Emergency </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> Report Application </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted"> You can submit  report about your locality's wasa office here  </small> </p>
                        <a href="problem.php">Report Application  </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ft">
        <p class="chk"><small class="text-muted">Still not sure?</small></p>
        <div class="btn btn-primary">Read All Testimonials</div>
    </div>
</div>
   
   
     

   
      
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      
      <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsvyxrMA8HC2LTpzdF_qHNs6YEXUZDpZs & callback=initMap">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <?php
include("include/footer.php");


?>
    </body>

    </html>

        