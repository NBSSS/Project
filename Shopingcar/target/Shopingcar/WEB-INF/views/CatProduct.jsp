<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/resources/image/" var="image"/>
  <html>
  
    <head>
    
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
             <title>Shop-Kar</title>

   </head>
<body>
                           <h1>All Products</h1>


     <c:forEach items="${listCatPro}" var="cp">

           <img alt="${cp.name}" src="${image}${cp.productId}.jpg">
    <img alt="${cp.name}" src="<c:url value='/resources/image/${cp.productId}.jpg'/>">
    </c:forEach>







</body>
</html>