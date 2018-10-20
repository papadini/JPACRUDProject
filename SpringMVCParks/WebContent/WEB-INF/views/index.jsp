<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parks</title>
</head>
<body>
<h1>TEST</h1>

<h3>Find Park by ID</h3>
<form action="getpark.do" method="GET">
  <input type="text" name="id"/>
  <input type="submit" value="Find Park"/>
</form>

<h3>List all Parks</h3>
<form action="list.do" method="GET">
<input type="submit" value="List Parks" >
</form>


<h3>Add a new Park</h3>
<form action="add.do" method="GET">
<input type="submit" value="Add Park" >
</form>







</body>
</html>