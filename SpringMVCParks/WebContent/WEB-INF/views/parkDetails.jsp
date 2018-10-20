<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
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
<input type="Submit" value="Delete" class="btn btn-danger"/>
</form>

<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>


</body>
</html>