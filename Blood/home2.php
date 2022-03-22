<!DOCTYPE html>

<html>
    <head>
        <style>
            body, html {
                height: 100%;
                margin: 0;
            }
            
            
            
            
            .content{
                background-color:blueviolet;
                padding-left: 10%;
                padding-right: 10%;
                padding-top: 2%;
                padding-bottom: 2%;
            }
            
            .text{
                margin-bottom: 10%;
                font-size: 25px;
                color: white;
                font-family: Bookman;
            }
            
            .button {
                display: block;
                margin: auto;
                background-color: white; /* Green */
                border: 2px solid #fd5a5a;
                color: #fd5a5a;
                width: 40%;
                padding-top: 3%;
                padding-bottom: 3%;
                text-align: center;
                text-decoration: none;
                font-size: 30px;
                font-weight: bold;
                border-radius: 10px;
                transition-duration: 1s;
            }
            
            .button:hover{
                border: 2px solid white;
                background-color: #fd5a5a;
                color: white;
            }
            
            ul.menubar{ 
                display: block;
                margin: auto;
                text-align: center;
                padding-top: 5%;
                padding-bottom: 5%;
                margin: 0px;
                list-style-type:none;
                background-color:red;
               }
            li.menubar{
                display:inline;
                padding-left: 60px;
                padding-right: 30px;
            }
            a.menubar{
                display: inline;
                text-decoration:none;
                font-weight:bolder;
                color:white;
                font-size:30px;
                font-family: sans-serif;
                transition-duration: 1s;
            }
            a.menubar:hover{
                color:lightpink;
            }
            
        </style>
    </head>
    <body>
        <?php

include("include/header.php");


?>
<br><br><br>
       <div class="container"> 
        
        <div class = "content"> 
            <p class = "text">Anycone can join  as blood donor who wants to give blood for save peoples life.By filling some information of you along with contact information  you can easily join .Any hospital can find you by  seraching  to donate blood .The hospitals will directly contact with you . </p>
            <a class = "button" href="Register_Donor.php">BECOME A DONOR</a>
        </div>
        </div>
        
        <br><br>
        <div class="container">
        
        <div class = "content">
            <p class = "text">Hospitals can  register and login . After login with hospital id and password  they can find the database of their required blood .Then hospitals can directly contact with the donors from databse information. </p>
            <a class = "button" href="Login.php"> HOSPITAL LOGIN </a>
        </div>
        </div>
        
        <br><br>
        <div class="container">
        
      
        
       
        
        <ul class = "menubar">
			<li class = "menubar"><a class = "menubar" href="Home2.php">Home</a></li>
			<li class = "menubar"><a class = "menubar" href="Info.html">Information</a></li>
            <li class = "menubar"><a class = "menubar" href="Eligibility.html">Eligibility</a></li>
            <li class = "menubar"><a class = "menubar" href = "Stories.html">Stories</a></li>
			<li class = "menubar"><a class = "menubar" href = "ContactUs.html">Contact</a></li>
            
        </ul>
    </div>
    <br><br>
        <?php

include("include/footer.php");


?>
    </body>
</html>