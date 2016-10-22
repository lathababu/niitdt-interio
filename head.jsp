<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>InterioDecor/header</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  </script>
<style>
body {
    background-color: white;
}

h1 {
    color: black;
    text-align: starting;
}
p {
    font-family: verdana;
    font-size: 15px;
}

</style>
</head>
<body>
<header>
<a href="index.jsp" class="logo"> <img alt=" " class="img-responsive" src="Resources/Images/logo.jpg" style="width:75px;height:75px ;text-align:left"></a>
<h2>Interio Decor</h2>
<p class="text-success">Complete store</p>
  	 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header"></div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
      <li><a href="about">About</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product List<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Living Room</a></li>
          <li><a href="#">Dining</a></li>
          <li><a href="#">Bedroom</a></li>
        </ul>
      </li>
      <li><a href="#">Contact</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="Search" class="topnav-icon fa w3-right" onclick="open_search(this)" title="Search">&#xe802;</a></li>
    </ul>
  </div>
</nav>

<script type="text/javascript">
  </script>
  </header>
</body>
</html>