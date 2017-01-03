<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
  <script src="Resources/Bootstrap/js/jquery.min.js"></script>
  <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  </script>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

  <div class="container">
  <div class="row" style="margin-top:70px;">
	<div class="col-md-4 col-md-offset-4">
  
  <h3 style="text-align: center" class="text-success">New Users Register Here!</h3>
   	
 <form method="POST" commandName="customer" action="./registration" role="form" class="form-signin">
   <input name="_token" type="hidden" value=""/>
		<fieldset>
		  <input type="text" class="form-control middle" placeholder="Username" name="username"   required=""/>
          <br>
          <input type="text" class="form-control middle" placeholder="PhoneNumber" name="phonenum" required=""/>
          <br>
			<input type="text" class="form-control middle" placeholder="EmailId" name="emailid" required="" />
		  <br>	
			<input type="password" class="form-control middle" placeholder="Password" name="password" value="" required=""/>
		  <br>	
			<input type="password"class="form-control bottom" placeholder="Confirm_Password" value="" required=""/>
		 <br>
	   
            <br />
            <br />
            <div class="col-md-6 col-md-4">
            <button class="btn btn-lg btn-primary btn-block" type="submit" href="login">Register</button>
	         </div>
	         <br>
	         <br>
	         <br>
	         
	         <div class="text-right">Existing Users :<a href="login">Click Here</a>
	</fieldset>
	</form>
	</div>
	</div>
	</div>	   
	<script type="text/javascript">
	</script>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>