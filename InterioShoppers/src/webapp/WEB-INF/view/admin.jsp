<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Products</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
  <script src="Resources/Bootstrap/js/angular.min.js"></script>
  <script src="Resources/Bootstrap/js/jquery.min.js"></script>
  <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  </script> 
  
</head>
<body>
 <jsp:include page="adminhead.jsp"></jsp:include>

	<h1>Message : ${message}</h1>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />

	<!-- csrt for log out-->
	<form action="${logoutUrl}" method="post" id="logoutForm">
	  <input type="hidden"
		name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	</form>

	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
<div class="container">
 <div class="row" style="margin-top:45px;">
   <div class="col-md-4 col-md-offset-4">
      <h3 class="text-danger" style="text-align: center">Add Products</h3>
   <br>
   <br> 

<form  method="POST" commandName="saveProduct" action="./addProd" role="form" class="form-horizontal">
<input name="_token" type="hidden" value="" />
<fieldset>

  <label path="prodname" >Product Name:</label>
     <input type="text" name="prodname" class="form-control" id="Prodname" placeholder="Product Name" required="">
  <br>
  <label path="prodcatg">Product Category:</label>
     <input type="text" name="prodcatg" class="form-control" id="Prodcatg" placeholder="Product Category" required="">
  <br>
  <label path="prodcost" >Product Price:</label>
     <input type="text" name="prodcost" class="form-control" id="Prodcost" placeholder="Product Price" required="">
  </br>
  </br>
<div class="col-md-12 col-sm-12">
   <div class="col-md-6">
     <button type="submit" class="btn btn-success btn-sm"  href="admin">Save</button> 
   </div>
   <div class="col-md-6">
     <button type="reset" class="btn btn-primary btn-sm" href="admin">Reset</button>
   </div>
 </div>
 </fieldset>
</form>
</br>
</br>
</br>
        <h3 class="text-danger" style="text-align: center">Upload Image File</h3>
        <br>
        <br>
   <form action="./fileUpload" method="POST" enctype="multipart/form-data">
	 <label path="prodname" >Product Name:</label>
     <input type="text" name="prodname" class="form-control" id="Prodname" placeholder="Product Name" required="">
	<br /> 
	
	 <label path="prodimage" >Image:</label> 
	<input type="file" name="prodimage" placeholder="Upload" required=" " /> 
	<br />

	<button type="submit" class="btn btn-warning btn-sm"  value="upload">Upload</button>
  </form>
</div>
</div>
</div>
<br>
<br>
<hr>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>