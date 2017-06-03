<%@ include file="template/Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <html>
<head>
<style>
body { 
background-image: url("resources/image/form1.gif");
background-size:cover;
 background-position: 50% 50%;

 max-width: 100%;
    height: auto;
}
 h1{
   text-align:center;
   
   } 


table, th, td {
    border: 3px solid black;
      border-collapse: collapse;
    
}
th, td {
    padding: 15px;
}
table {
    border-spacing: 5px;
}

th,td {
    text-align: center;
}
caption{
text-align:center;

}

</style>

</head>

<h1 style="color:red;">Supplier Details</h1>



<body >



<div class="container">
  
  <fm:form action="${pageContext.request.contextPath}/addSupplier" commandName="supplier" modelAttribute="supplier" class="form-horizontal">

    <div class="form-group">
      <label class="control-label col-sm-3" >SupId:</label>
      <div class="col-sm-3">
        
        <fm:input type="text" class="form-control" path="supId"></fm:input>
    
      </div>
       <div class="col-sm-3">
       <fm:errors path="supId" cssStyle="color:#ff0000;"></fm:errors>
       </div>
    </div>
   
     <div class="form-group">
     	 <label class="control-label col-sm-3" >SupName:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="sname"></fm:input>
       
      </div>
       <div class="col-sm-3">
       <fm:errors path="sname" cssStyle="color:#ff0000;"></fm:errors>
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
        <fm:button type="submit" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-registration-mark"></span>&nbspRegister</fm:button>
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

<table style="width:100%">
<caption style="color:black"><h3>Supplier List</h3></caption>


<tr>
<th>Sup Id</th>
<th>Supplier name</th>
<th>Description</th>

<th colspan="2">Action</th>

</tr>


<c:forEach items="${listSup}" var="sp">

<tr>
<td>${sp.supId}</td>
<td>${sp.sname}</td>
<td>${sp.sdescp}</td>
<td><a href="updateSupplier/${sp.supId}" class="btn btn-xs btn-warning"><span class="glyphicon glyphicon-edit"></span>&nbsp Edit</a></td>
<td><a href="deleteSupplier/${sp.supId}" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp Del &nbsp</a></td>
</tr>


</c:forEach>
</table>
</c:if>
  
</div>


</body>
</html>