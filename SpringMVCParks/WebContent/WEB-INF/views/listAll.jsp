<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Park List</title>
</head>
<body>
<c:forEach items="${parks}" var="park">
<a href="getpark.do?id=${park.id}"> ${park.name}</a><br>

</c:forEach>


</body>
</html>