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
    
  ;
 max-width: 100%;
    height: auto;
    
}
</style>

</head>
<center>
<h1 style="color">Category Details

</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addCategory" commandName="category" modelAttribute="category" class="form-horizontal">

    <div class="form-group">
      <label class="control-label col-sm-3" >CatId:</label>
      <div class="col-sm-3">
   <c:if test="${not empty category.cname }"> 
        <fm:input type="text" class="form-control" path="catId"></fm:input>
     </c:if>
      </div>
    </div>
   
     <div class="form-group">
      <label class="control-label col-sm-3" >CategoryName:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="cname"></fm:input>
       
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="cdescp"></fm:input>
       
      </div>
    </div>
 
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-3">
      <c:if test="${empty category.cname }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
        </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty category.cname }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
 
 <c:if test="${not empty listCategory}">
<h1>Category List</h1>
<table class="table table-hover">

<thread>
<tr>

<th>Category name</th>
<th>Cat Id</th>
<th>Description]</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thread>
<c:forEach items="${listCategory}" var="usr">
<thread>
<tr>
<th>${usr.cname}</th>
<th>${usr.cdescp}</th>
<th>${usr.catId}</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</c:forEach>
</table>
</c:if>
  
</div>

</body>
</html>