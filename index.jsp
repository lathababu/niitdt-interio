<!DOCTYPE html>
<html lang="en">
<head>
  <title>InterioShoppers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
  <script src="Resources/Bootstrap/js/jquery.min.js"></script>
  <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
  </script>

 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>

 </head>
 <body>
 <jsp:include page="head.jsp"></jsp:include>
 
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Resources/Images/images8.jpg" alt=" " style="width:500px ;height:250px">
                  	     
 </div>

      <div class="item">
        <img src="Resources/Images/1.jpg" alt=" " style="width:500px ; height:250px">
             
 </div>
    
      <div class="item">
        <img src="Resources/Images/images3.jpg" alt=" " style="width:500px ;height :250px">
     
 </div>

      <div class="item">
        <img src="Resources/Images/download2.jpg" alt=" " style="width:500px ;height:250px">
     
</div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  <br>
  <br>
  <div class="container">          
  <div class="row">
    <div class="col-md-2">
      <a href="#" class="thumbnail">
        <img src="Resources/Images/images.jpg" alt=" " style="width:100px;height:150px">
           
       </a>
    </div>
    <div class="col-md-2">
      <a href="#" class="thumbnail">
                <img src="Resources/Images/images1.jpg" alt=" " style="width:100px;height:150px">
     </a>
    </div>
    <div class="col-md-2">
      <a href="#" class="thumbnail">
            <img src="Resources/Images/images2.jpg" alt=" " style="width:100px;height:150px">
           
      </a>
    </div>
        <div class="col-md-2">
      <a href="#" class="thumbnail">
            <img src="Resources/Images/download.jpg" alt=" " style="width:100px;height:150px">
            
      </a>
    </div>
        <div class="col-md-2">
      <a href="#" class="thumbnail">
            <img src="Resources/Images/images5.jpg" alt=" " style="width:100px;height:150px">

      </a>
    </div>
  </div>
</div>
      <script type="text/javascript">
  </script>
  <hr>
     <jsp:include page="footer.jsp"></jsp:include>              
</body>
</html>

