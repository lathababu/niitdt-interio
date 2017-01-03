<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Interio Decor</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
  <script src="Resources/Bootstrap/js/angular.min.js"></script>
  <script src="Resources/Bootstrap/js/jquery.min.js"></script>
  <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript">
 function myFunction() {
	    document.getElementById("myDropdown").classList.toggle("show");/* 
	    document.getElementById("myDropdowntmp").classList.toggle("show"); */
	}
//Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
angular.module('myApp',[]).controller('namesCtrl',function($scope)
 {
    $scope.productlist=['Furniture','Lightings','Wall Decor','Decorative Accents','Mirrors','Artwork','Outdoor Lighting',
                          'Flush-Mounts','Holiday Decor','House Plan 3D view','Pet Supplies'];
	}		 
);
 </script>
 <style type="text/css">
 
 .jumbotron {
   margin-bottom:0px;
   background-image: url(Resources/Images/image14.jpg);
   background-position: 0% 30%;
   background-size:cover;
   background-repeat: no-repeat;
   color: white;
   text-shadow:none;
}
 
	img.carousal{
		max-width: 1650px;
		width: 1650px;
		max-height: 300px;
	}

.dropbtn {
    background-color: #333;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
} 

.dropbtn:hover, .dropbtn:focus {
    background-color: #ccc;
}

a.dropdown {
    position: relative;
    display: outline-block;
    background-color:#fff;
}

.dropdown-content {
    display: none;
    position:relative;
    background-color: #fff;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    width:100%;
    
    
    
}

.dropdown-content a {
    color: black;
    padding: 5px 30px;
    text-decoration: none;
    display: block;
    z-index:100;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}

.iconsze
{
padding:7px 15px;
}
.removebrdr
{
border:none;
}

</style>

</head>
<body>
<div  class="jumbotron">
 <jsp:include page="head.jsp"></jsp:include>
 <div class="container">
  <div class="row">
  <div class="col-sm-8">&nbsp;</div>
  <div class="col-sm-4">
  <li >
		<div class="col-sm-12 col-md-12 col-xs-12">
        <form class="navbar-form " role="search">
        <div ng-app="myApp" ng-controller="namesCtrl" class="input-group">
        <div>
            <input onclick="myFunction()" autocomplete="off" type="text" ng-model="test" 
                   class="form-control" style="width:99% ; text-align:center" placeholder="Search Products..." name="search" >
            <div  class="dropdown">
            <div  class="dropbtn">
           <div id="myDropdown"  class="dropdown-content ">
            <div  class="sizerdcr" ><a >&nbsp;</a></div>
            <div  class="sizerdcr" ><a >&nbsp;</a></div>
            <span style="z-index:10000"> <a  href={{rslt}} ng-repeat="rslt in productlist | filter:test">{{rslt}}</a></span>
            </div>
            </div>
            </div>
            </div>
           
            <div class="input-group-btn">
                <button style="border:sharp; width:50px; height:35px" class="btn btn-primary" type="submit">
                               <span class="glyphicon glyphicon-search "></span></button>
            </div>
        </div>
        </form>
       </div>
       </li>
       </div>
     </div>
   </div>
      
   <div class="container container-fluid">
<div class="row">
 <div class="col-xs-12">
  <div id="my-slider" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
      <li data-target="#my-slider" data-slide-to="0" class="active"></li>
      <li data-target="#my-slider" data-slide-to="1"></li>
      <li data-target="#my-slider" data-slide-to="2"></li>
      <li data-target="#my-slider" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" width=100% height="500px">
      <div class="item active">
        <img class="carousal" src="Resources/Images/images8.jpg">
                  	     
 </div>

      <div class="item">
        <img class="carousal" src="Resources/Images/inspiration-wall.jpg">
             
 </div>
    
      <div class="item">
        <img class="carousal" src="Resources/Images/img2.jpg">
     
 </div>

      <div class="item">
        <img class="carousal" src="Resources/Images/download 8.jpg">
     
</div>
    </div>

    <!-- Left and right controls -->
  <div>  
    <a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" area-hidden="true"></span>
    </a>
    <a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" area-hidden="true"></span>
    </a>
  </div>
</div>
</div>
</div>
</div>
  <br>
  <br>
  <div class="container">  
  <h2><a href="productlist">Products</a></h2>
  <hr>        
  <div class="row">
    <div class="col-md-2">
      <a href="productlist" class="thumbnail">
        <img src="Resources/Images/images.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center ;color:black">Sofa</p>
          
       </a>
    </div>
    <div class="col-md-2">
      <a href="productlist" class="thumbnail">
                <img src="Resources/Images/images1.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center ;color:black">Wall shelve</p>
     </a>
    </div>
    <div class="col-md-2">
      <a href="productlist" class="thumbnail">
            <img src="Resources/Images/images2.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center; color:black">Modular Kitchen</p>
           
      </a>
    </div>
        <div class="col-md-2">
      <a href="productlist" class="thumbnail">
            <img src="Resources/Images/download.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center;color:black">Showcase</p>
            
      </a>
    </div>
        <div class="col-md-2">
      <a href="productlist" class="thumbnail">
            <img src="Resources/Images/images5.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center;color:black">Curtains</p>

      </a>
    </div>
     <div class="col-md-2">
      <a href="#" class="thumbnail">
            <img src="Resources/Images/download 10.jpg" alt=" " style="width:150px;height:150px"><p style="text-align: center;color:black">Wall Stickers</p>

      </a>
    </div>
  </div>
</div> 
<hr>
      <jsp:include page="footer.jsp"></jsp:include> 
  </div>  
  <script type="text/javascript">
  </script>      
</body>
</html>