<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products/Users List</title>
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
<h2 style="text-align: center ; color:black"> Updation And Deletion Of Products</h2>
<br>
<br>

   <table class="table">
			<thead>
				<tr>
				<th>Product Id</th>
			    	<th>Product Name</th>
					<th>Product Category</th>
					<th>Product Price</th>
					<th>Update Product</th>
					<th>Delete Product</th>
				</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach items="${listProduct}" var="product">
				<tr>
				    <td>${product.pid}</td>
				    <td>${product.prodname}</td>
			        <td>${product.prodcatg}</td>
			        <td>${product.prodcost}</td>
			      
			        <td><a href="editprod/${product.pid}"><span class="glyphicon glyphicon-edit"></span>Update</a></td>
					<td><a href="deleteprod/${product.pid}"><span class="glyphicon glyphicon-trash"></span>Delete</a></td>
			      
			
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<br/>
		<div class="text-danger" style="text-align: center">To Add Products - <a href="admin">Click Here</a></div>
		
		<br>
		<hr>
		<br>
		<h2 style="text-align: center ; color:black">List of Users</h2>
		<br>
		<br>
		 <table class="table">
			<thead>
				<tr>
				
					<th>UserName</th>
					<th>Phone Number</th>
					<th>Email Id</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach items="${listUser}" var="user">
				<tr>
				     
					<td>${user.username}</td>
			        <td>${user.phonenum}</td>
			        <td>${user.emailid}</td>
			        <td>${user.password}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
<br>
<br>
<br>
<hr>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>