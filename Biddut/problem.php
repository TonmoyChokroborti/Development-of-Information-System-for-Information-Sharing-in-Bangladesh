<!DOCTYPE html>
<?php
session_start();
include("include/header.php");


?>
<html>
<head>
	<title>Signup</title>
	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	body{
		overflow-x: hidden;
	}
	.main-content{
		width: 50%;
		height: 40%;
		margin: 10px auto;
		background-color: #fff;
		border: 2px solid #e6e6e6;
		padding: 40px 50px;
	}
	.header{
		border: 0px solid #000;
		margin-bottom: 5px;
	}
	.well{
		background-color: #187FAB;
	}
	#signup{
		width: 60%;
		border-radius: 30px;
	}

</style>
<body>
<br><br><br><br>
<div class="row">
	<div class="col-sm-12">
		<div class="main-content">
			<div class="header">
				<h3 style="text-align: center;"><strong>Emergency problem Solution Form </strong></h3>
				<hr>
			</div>
			<div class="l-part">
				<form action="problem.php" method="post">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
						<input type="text" class="form-control" placeholder="Name" name="name" required="required">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
						<input type="text" class="form-control" placeholder="Nid Number" name="nidnumber" required="required">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input id="ward" type="text" class="form-control" placeholder="Ward" name="ward" required="required">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input  type="text" class="form-control" placeholder="Area" name="area" required="required">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
						<select class="form-control input-md" name="city" required="required">
							<option >Select your City</option>
							<option>North Dhaka</option>
							<option>South Dhaka</option>
							<option>Narayongonj</option>
							<option>Keranigonj</option>
						</select>
					</div><br>
					
					<div class="input-group">
 
                 <label for="comment">Problem Name  </label>
               <textarea class="form-control" placeholder=" Problem Name " rows="8" name="problem" id="comment" required="required">
               </textarea>
                </div><br>
					<div class="input-group">
 
                 <label for="comment">Proposed Solution </label>
               <textarea class="form-control" placeholder=" Proposed Solution " rows="8" name="solution" id="comment" required="required">
               </textarea>
                </div><br>
				
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input id="email" type="text" class="form-control" placeholder="Ward Councillor Name" name="councilor" required="required">
					</div><br>		
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						<input type="text" class="form-control input-md" placeholder="Councillor office Adress" name="address" required="required">
					</div><br>
					

					<center><button id="signup" class="btn btn-info btn-lg" name="submit">Submit</button></center>
					<?php include("insert_problem.php"); ?>
				</form>
			</div>
		</div>
	</div>
</div>
<?php
include("include/footer.php");


?>
</body>
</html>