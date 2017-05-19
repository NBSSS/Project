<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ include file="template/Header.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

${product.descp}
<img alt="${product.name}" src="${pageContext.request.contextPath }/resources/image/${product.productId}.jpg/">
</body>
</html>