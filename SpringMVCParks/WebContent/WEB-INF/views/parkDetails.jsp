<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>TEST</h1>

${park.name}

<h3>Edit Park</h3>

<form action="edit.do" method="GET">
<input type="hidden" value ="${park.id}" name= "id">
<input type="submit" value="Edit">
</form>

<form action="delete.do" method="GET">
<input type="hidden" value ="${park.id}" name= "id">
<input type="submit" value="Delete">
</form>

<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>


</body>
</html>