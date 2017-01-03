<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
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
<br>
<br>
<br>
<div class="container">
<div class="row" style="margin-top:40px;">
<div class="col-md-4 col-md-offset-4">

	<h3 style="text-align: center" class="text-success">Login with your Username and Password</h3>
	
	<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
  </br>
  <form method="POST" action="<c:url value='j_spring_security_check' />" accept-charset="UTF-8" role="form" class="form-signin"><input name="_token" type="hidden" value="">
	<fieldset>
       <input class="form-control middle" placeholder="Username" name="username" type="text">
       <br />
	   <input class="form-control middle" placeholder="Password" name="password" type="password">
	   
	  <a class="pull-right" href="http://bootsnipp.com/password">Forgot password?</a>
	  </br>
					<div class="checkbox" style="width:140px;">
				    	<label><input name="remember" type="checkbox" value="Remember Me"> Remember Me</label>
				    </div>
    <div class="col-md-6 col-md-4">
     <button class="btn btn btn-primary " type="submit" value="Log In" href="admin">Sign In</button>
    </div>
    <br>
    <br>
    <br>
     New Users-<a href="register"><span class="onclick"></span> Click Here</a>    
     
       <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
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

