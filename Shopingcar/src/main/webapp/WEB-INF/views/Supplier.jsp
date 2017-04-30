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
<h1 style="color">Supplier Details

</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addSupplier" commandName="supplier" modelAttribute="supplier" class="form-horizontal">

    <div class="form-group">
      <label class="control-label col-sm-3" >SupId:</label>
      <div class="col-sm-3">
   
        
        <fm:input type="text" class="form-control" path="supId"></fm:input>
    
      </div>
    </div>
   
     <div class="form-group">
      <label class="control-label col-sm-3" >SupName:</label>
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
      
      <c:if test="${empty supplier.supId }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
      </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty supplier.supId }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
 
 <c:if test="${not empty listSup}">
<h1>Supplier List</h1>
<table class="table table-hover">

<thead>
<tr>

<th>Supplier name</th>
<th>Sup Id</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach items="${listSup}" var="sp">
<thead>
<tr>

<th>${sp.sname}</th>
<th>${sp.sdescp}</th>
<th>${sp.supId}</th>
<th><a href="updateSupplier/${sp.supId}">Edit</a></th>
<th><a href="deleteSupplier/${sp.supId}">Delete</a></th>
</tr>
</thead>
</c:forEach>
</table>
</c:if>
  
</div>


</body>
</html>