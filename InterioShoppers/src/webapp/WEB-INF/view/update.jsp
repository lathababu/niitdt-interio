<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update Products</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1"> 
</head>
<body>
<div class="container">
<div class="col-md-4 col-md-offset-4">
    <h2><a href="index" class="logo" style="font-size:35px ;font-family:black">iD</a></h2>
     <h2><a href="about">Interio Decor</a></h2>
      <h4 class="text-success">Complete store..!</h4>
      </div>
   </div>


<br>
<br>
<br>
<br>
<div class="container">
      <div class="col-md-4 col-md-offset-4">
          <h3 style="text-align: center">Update Products</h3>
      <br>
      <br> 

        <center>
          <form:form action="/InterioShoppers/updateProd" method="POST" >
             <b><form:label path="pid" >Product Id:</form:label></b>
                <form:input type="text" path="pid" class="form-control" id="pid" 
                                                     placeholder="Product ID" required="" />
       <br>
       <br>  
             <b><form:label path="prodname" >Product Name:</form:label></b>
                <form:input type="text" path="prodname" class="form-control" id="Prodname" 
                                                     placeholder="Product Name" required="" />
       <br>
       <br>
             <b><form:label path="prodcatg">Product Category:</form:label></b>
                <form:input type="text" path="prodcatg" class="form-control" id="Prodcatg" 
                                                     placeholder="Product Category" required="" />
       <br>
       <br>
             <b><form:label path="prodcost" >Product Price:</form:label></b>
                <form:input type="text" path="prodcost" class="form-control" id="Prodcost" 
                                                     placeholder="Product Price" required="" />
       <br>
       <br>
            <input type="submit" value="Update"  />
      </form:form>
    </center>
  </div>
 </div>
</div>  
</body>
</html>