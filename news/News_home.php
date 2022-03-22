


<?php
  
   error_reporting(0);

  
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Development Bangladesh </title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="style/blog.css" rel="stylesheet">
    <script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

  </head>

  <body>

    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a class="text-muted" href="#"><div id="google_translate_element"></div></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Development Bangladesh</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <form action="search.php" method="post">
              <div class="input-group sm-3">
                <input type="text" name="search" class="form-control" placeholder="Search">
                <div class="input-group-append">
                  <button class="btn btn-success" name="submit" type="submit">Go 
                  </button>

                 </div>
                
              </div>
              
            </form>














            <a class="text-muted" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
           
          </div>
        </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
          <a class="p-2 text-muted" href="News_home.php">Home</a>
         
          
        </nav>
      </div>
      <div class="card" style="width:100% ; height: 20%">
        <img class="card-img-top"  src="https://images.pexels.com/photos/723072/pexels-photo-723072.jpeg?cs=srgb&dl=pexels-jane-d-723072.jpg&fm=jpg" alt="Card image" height="300">
        <div class="card-img-overlay">
          <h4 style="color: white">Development Bangladesh</h4>
          <p style="color: yellow" class="card-text">It is a Online  News Portal for development news for Bangladesh  </p>
          <a href="#" class="btn btn-primary">See Profile</a>
          
        </div>
        
      </div>

      <div class="row mb-2">
    <?php
    include('db/connection.php');
    $query1 = mysqli_query($conn," select * from news order by id desc  limit 1,2  ");
    while ($row = mysqli_fetch_array($query1)){
      $catagory = $row['catagory'];
      $date = $row['date'];
      $title = $row['title'];
      $thumbnail = $row['thumbnail'];
    
    ?>

        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary"><?php echo $catagory ; ?></strong>
              <h3 class="mb-0">
                <a class="text-dark" href="single_page.php?single=<?php echo $row['id']; ?>"><?php echo $title ; ?></a>
              </h3>
              <div class="mb-1 text-muted"><?php echo $date ; ?></div>
              
              <a href="single_page.php?single=<?php echo $row['id']; ?>">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="images/<?php echo $thumbnail ?>" alt="Card image cap" width="150">
          </div>
        </div>
      <?php } ?>
        
    </div>

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
         

     <?php 
     include('db/connection.php');
          $page=$_GET['page'];
         if ($page=="" || $page==1) {
          $page1=0;
      }
       else{
         $page1=($page*5)-5;
      }
     $query = mysqli_query($conn,"select * from newsbd limit $page1,5 ");
     while($row=mysqli_fetch_array($query)){

     


     ?>



  
         <div class="blog-post">
          <h4 class="blog-post-title"><a href="single_page.php?single=<?php echo $row['id'];?>"><?php echo $row['title'];?></a></h4>
          <p class="blog-post-meta"><?php echo $row['date']; ?>
            <a href="#"><?php echo $row ['admin'];?></a>
          </p>
          <p><img class="img img-thumbnail" src="images/<?php echo $row['thumbnail'];?>" alt=""></p>
          <hr>
          
            <blockquote>
              <?php echo substr($row['description'],0,300 ); ?>
              <a href="single_page.php?single=<?php echo $row['id']; ?>" class="btn btn-primary btn-sm">Read More</a>
              
            </blockquote>
              
            
             
            </ol>
            
          </div><!-- /.blog-post -->
          <?php } ?>


<ul class="pagination">
  <li class="page-item disabled">
    <a href="#" class="page-link">Previous</a>
  </li>
  <?php 
$sql=mysqli_query($conn,"select * from newsbd");
$count=mysqli_num_rows($sql);
$a=$count/1;
echo ceil($a);
 for ($b=1; $b <=$a ; $b++) { 
  ?>


  <li class="page-item "><a class="page-link" href="News_home.php?page=<?php echo $b; ?>"><?php echo $b; ?></a></li>
  <?php
}
?>
<li class="page-item disabled">
    <a href="#" class="page-link">next </a>
  </li>
  
</ul>

 


         

        </div><!-- /.blog-main -->

        <aside class="col-md-4 blog-sidebar">
         

          <div class="p-3">
            <h4 class="font-italic">Catagorys</h4>
            <ol class="list-unstyled mb-0">
              <?php
              include('db/connection.php');
              $query1 = mysqli_query($conn,"select * from catagory");
              while ($row=mysqli_fetch_array($query1)) {

              ?>
              <li><a href="catagory_page.php?single=<?php echo $row['catagory_name'];?>"><?php echo $row['catagory_name']; ?></a></li>
              <?php } ?>

            </ol>
          </div>




          

          
        </aside><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </main><!-- /.container -->

  

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>
