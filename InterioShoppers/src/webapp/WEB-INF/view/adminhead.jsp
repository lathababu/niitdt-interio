<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>	

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="robots" content="noindex">
  <title>Header</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
    <script src="Resources/Bootstrap/js/jquery.min.js"></script>
   <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>

 <style type="text/css">
  
 .h2 {
    background-color:white ;
    color: pink;
   }
.p {
    font-family: black;
    font-size: 15px;
}


</style>
</head>

<header>
<div class="container">
  <div class="row">
    <h2><a href="index" class="logo" style="font-size:35px ;font-family:black">iD</a></h2>
     <h2><a href="about">Interio Decor</a></h2>
      <h4 class="text-success">Complete store..!</h4>
   </div>
</div>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <div class="navbar-header"></div>
    <ul class="nav navbar-nav">
     <li  class="active"><a href="index">Home</a></li>
     <li><a href="about">About Us</a></li>
     <li><a href="productlist">Product List</a></li>
     <li><a href="contact">Contact Us</a></li>
     <li><a href="adminlist">View Products</a></li>
    </ul>
   <ul class="nav navbar-nav navbar-right">
           <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
           
   </ul>
  <div>
    </div>
    </nav>
 	</header>
 	 <script type="text/javascript" >
 </script>
  </html>