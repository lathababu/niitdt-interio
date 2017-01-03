<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show product</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.min.css">
  <script src="Resources/Bootstrap/js/angular.min.js"></script>
  <script src="Resources/Bootstrap/js/jquery.min.js"></script>
  <script src="Resources/Bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript">
   </script>
  
</head>
<body>
 <jsp:include page="head.jsp"></jsp:include>
 <br>
 <br>
<div>
		<div class="container">
			<br />
			<div class="row text-center">
				<c:forEach items="${showProduct}" var="product">
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="${path}${product.prodname}.jpg" alt=" "
								width="400px" height="300px">
							<p>
								<strong>${product.prodname}</strong>
							</p>
							<p>${product.prodcatg}</p>
							<p>Rs.${product.prodcost}</p>
							<a href="addToCart?productid=${product.prodname}" class="btn">Add to cart</a>
							<br /> <br />
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<hr>
      <jsp:include page="footer.jsp"></jsp:include> 
 
  <script type="text/javascript">
  </script>  
</body>
</html>