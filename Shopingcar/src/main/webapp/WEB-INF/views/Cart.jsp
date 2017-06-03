<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sf:form action="addToCart" modelAttribute="cart" method="post">
				<table class="table">
				<c:forEach items="${cart.listItem}" var="product">
				<c:set var="sum" value="${sum+product.price*product.quantity}"/>
				<tr>
				
				<td>${product.name}</td>
				
					
					<td>${product.category}</td>
					<td>${product.quantity}</td>
					<td>${product.price*product.quantity}</td>
					<td><a class="btn btn-danger"
								href="<c:url value='${session.getContextPath()}/deletep/${product.id}'/>">Delete <span class="glyphicon glyphicon-remove-sign"></span></a></td>
					</tr>
					</c:forEach>
					<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>Total Amount </td>
					<td>${sum}</td>
					</tr>
					
					</tbody>
			</table>
				</sf:form>
	
</body>
</html>