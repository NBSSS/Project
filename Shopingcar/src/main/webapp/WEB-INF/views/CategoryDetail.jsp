
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="template/Header.jsp" %>
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
<div class="row col-md-6 col-md-offset-5 custyle">
 
  <fm:form action="${pageContext.request.contextPath}/addCategory" commandName="category" class="form-horizontal">
    
      <c:if test="${not empty category.cname }"> 
       <div class="form-group">
       <label class="control-label col-sm-3" >CatId:</label>
      	<div class="col-sm-3">
  		<fm:input type="text" class="form-control" path="catId" disabled="true" readonly="true"></fm:input>
  		<fm:hidden path="catId"/>
        
        </div>
        </div>
     </c:if>

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

    
    <table class="responsive" class="table table-striped custab" border="1">
    <thead>
   
        <tr>
            <th>Cat-ID</th>
            <th>Category Name</th>
            <th>Description</th>
            <th colspan="2" class="text-center" >Action</th>
        </tr>

</thead>

<c:forEach items="${listCategory}" var="cat">

<tr>
<td>${cat.catId}</td>
<td>${cat.cname}</td>
<td>${cat.cdescp}</td>
<td><a href="<c:url value='updateCategory/${cat.catId}'/>"  class="btn btn-info btn-xs"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
	<a href="<c:url value='deleteCategory/${cat.catId}'/>" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>Del</a>
</td>
</tr>

</c:forEach>

</table>
</c:if>
</div>
</div>


  


</body>
</html>