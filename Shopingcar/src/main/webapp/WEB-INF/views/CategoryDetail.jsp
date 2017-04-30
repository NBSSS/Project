<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
<--table css-->
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }

body {
    
  
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
  
  <fm:form action="addCategory" method="POST"  enctype="multipart/form-data" commandName="category" modelAttribute="category"  class="form-horizontal">
<div>
		File1 to upload: <input type="file" name="file">
 
		Name1: <fm:input type="text" path="cname"></fm:input>
 
 
		File2 to upload: <fm:input type="file" path="file"></fm:input>
 
		Name2: <input type="text" name="cname">
 

		<input type="submit" value="Upload"> <h4><b>Press here to upload the file!</b></h4>
	</div>
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
      <c:if test="${! empty category.cname }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
 
 <c:if test="${not empty listCategory}">
<h1>Category List</h1>
<div class="container">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">

<thead>
<tr>
<th>CatId</th>
<th>Category name</th>
<th>Description</th>

<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach items="${listCategory}" var="cat">
<thead>
<tr>
<th>${cat.catId}</th>
<th>${cat.cname}</th>
<th>${cat.cdescp}</th>


<th><a href="updateCategory/${cat.catId}">Edit</a></th>
<th><a href="deleteCategory/${cat.catId}">Delete</a></th>
</tr>
</thead>
</c:forEach>
</table>
</div>
</div>
</c:if>
  
</div>

</body>
</html>