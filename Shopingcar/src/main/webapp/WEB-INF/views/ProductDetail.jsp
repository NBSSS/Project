<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
body {
    
  
 max-width: 100%;
    height: auto;
    
}
</style>

</head>
<center>
<h1 style="color">Product Page</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addProduct" commandName="product" modelAttribute="product" class="form-horizontal">
    
    
     <div class="form-group">
      <label class="control-label col-sm-3" >Name:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="name"></fm:input>
       
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="descp"></fm:input>
       
      </div>
    </div>
        <div class="form-group">
      <label class="control-label col-sm-3" >Category</label>
      <div class="col-sm-3">   
           
       <fm:select path="category">
       <c:forEach items="${listCategory}" var="cat">
       <fm:option value="${cat.catId}">${cat.catId}</fm:option>
       </c:forEach>
       </fm:select>  
      </div>
    </div>
    <div class="form-group">        
      
      <label class="control-label col-sm-3" >Quantity:</label>
        <div class="col-sm-3">
        <fm:input type="text" class="form-control"  path="qty"></fm:input>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-3">
      <c:if test="${empty product.name }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
        </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty product.name }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
  <c:if test="${not empty listProduct}">
<h1>Product</h1>
<table class="table table-hover">

<thread>
<tr>

<th>Product name</th>

<th>Description</th>
<th>Qty</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thread>
<c:forEach items="${listProduct}" var="prd">

<tr>
<thread>

<th>${prd.catId}</th>
<th>${prd.name}</th>
<th>Edit</th>
<th>Delete</th>
</thread>
</tr>


</c:forEach>

</table>



</c:if>
  
  


  
  
</div>
</body>
</html>