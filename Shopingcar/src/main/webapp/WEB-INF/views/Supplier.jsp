<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head>
<style>
body {
    
  ;
 max-width: 100%;
    height: auto;
    
}
</style>

</head>
<center>
<h1 style="color">Supplier Details

</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addSupplier" commandName="supplier" modelAttribute="supplier" class="form-horizontal">

    <div class="form-group">
      <label class="control-label col-sm-3" >CatId:</label>
      <div class="col-sm-3">
   <c:if test="${not empty category.sId }"> 
        <fm:input type="text" class="form-control" path="catId"></fm:input>
     </c:if>
      </div>
    </div>
   
     <div class="form-group">
      <label class="control-label col-sm-3" >Supplier Name:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="sname"></fm:input>
       
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="sdescp"></fm:input>
       
      </div>
    </div>
 
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-3">
      <c:if test="${empty supplier.sId }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
        </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty supplier.sId }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
 
 <c:if test="${not empty listSup}">
<h1>Supplier List</h1>
<table class="table table-hover">

<thread>
<tr>

<th>Supplier name</th>
<th>SupplierId Id</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thread>
<c:forEach items="${listSup}" var="sp">
<thread>
<tr>
<th>${sp.sname}</th>
<th>${sp.sdescp}</th>
<th>${sp.sId}</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</c:forEach>
</table>
</c:if>
  
</div>

</body>
</html>