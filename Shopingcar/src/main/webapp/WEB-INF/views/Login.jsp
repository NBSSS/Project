<%@ include file="Header.jsp" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body style="background-color:linen">


<div class="container">
<center>
 <h1 style="color:green">Welcome to Login Page</h1>
 </center>
 
  <form method="post" action="logg"
  class="form-horizontal">
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd" >Password:</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" name="pwd" title="@-numeric">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-3">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
     
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-3">
        <button type="submit" class="active"  class="btn btn-default">Login</button>
      
      </div>
    </div>
    
  </form>

</div>


</body>
</html>