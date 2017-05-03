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

${msg}

<div class="container">

  
  <fm:form action="${pageContext.request.contextPath}/addProduct"  method="post" enctype="multipart/form-data" commandName="product" modelAttribute="product" class="form-horizontal">
    
    
    <div class="form-group">
      <label class="control-label col-sm-3" >Product Id:</label>
      <div class="col-sm-3">
   <c:if test="${not empty product.name }"> 
        <fm:input type="text" class="form-control" path="productId"></fm:input>
     </c:if>

      </div>
    </div>
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
       <label class="control-label col-sm-3" >Product Image:</label>
      <div class="col-sm-3">
   <fm:input type="file" path="image" required="true"></fm:input>
    </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-3" >Price:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="price"></fm:input>
       
      </div>
    </div>
        <div class="form-group">
      <label class="control-label col-sm-3" >Category</label>
      <div class="col-sm-3">   
           
       <fm:select path="catId">
       <c:forEach items="${listCategory}" var="cat">
       <fm:option value="${cat.catId}">${cat.catId}</fm:option>
       </c:forEach>
       </fm:select>  
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-3" >Supplier</label>
      <div class="col-sm-3">   
           
       <fm:select path="supId">
       <c:forEach items="${listSup}" var="sup">
       <fm:option value="${sup.supId}">${sup.supId}</fm:option>
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
      <c:if test="${ not empty product.name }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
       </c:if>
      </div>
    </div>
  </fm:form>
  
 
  <c:if test="${not empty listProduct}">
<h1>Product</h1>
<table class="table table-hover">

<thead>
<tr>
<th>PId</th>
<th>Product name</th>


<th>Description</th>
<th>Price</th>
<th>Qty</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach items="${listProduct}" var="prd">
<thead>
<tr>


<th>${prd.productId}</th>
<th>${prd.name}</th>
<th>${prd.descp}</th>
<th>${prd.price}</th>
<th>${prd.qty}</th>


<th><a href="<c:url value='updateProduct/${prd.name}'/>">Edit</a></th>
<th><a href="<c:url value='deleteProduct/${prd.name}'/>">Delete</a></th>

</tr>

</thead>
</c:forEach>

</table>



</c:if>
  
  


  
  
</div>
</body>
</html>