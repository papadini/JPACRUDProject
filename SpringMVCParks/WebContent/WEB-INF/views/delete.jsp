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


<h3>Are you sure you want to delete ${park.name} National Park!</h3>
<h2>What would Smokey say!</h2>
<form action="deletePark.do" method="POST">
  <input type="hidden" value=${park.id } name="id"/>
  <input type="submit" value="Delete"/>
  
</form>

</body>
</html>