<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <title>Shop-Kar</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src = "http://getbootstrap.com/dist/js/bootstrap.min.js"></script> -->
 
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
      <a class="navbar-brand" href="Home">Shop_kar</a>
    </div>
    <div class="collapse navbar-collapse"  id="myNavbar">
      <ul class="nav navbar-nav">
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:forEach items="${listCategory}" var="cat">
            <li><a href="productbyCategory/${cat.catId}">${cat.catId}</a></li>
          </c:forEach>
          </ul>
          
        </li>
       
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
  

  </body>
</html>