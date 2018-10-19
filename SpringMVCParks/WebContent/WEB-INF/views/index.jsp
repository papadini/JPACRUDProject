<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>TEST</h1>

<h3>Find Park by ID</h3>
<form action="getpark.do" method="GET">
  <input type="text" name="id"/>
  <input type="submit" value="Find Park"/>
  
</form>

<h3>Add a new Park</h3>
<form action="createpark.do" method="POST">
Name<input type="text" name="name"/><br>
Location<input type="text" name="location"/><br>
Size(acres)<input type="text" name="size"/><br>
Annual Visits<input type="text" name="visits"/><br>
Dangers<input type="text" name="dangers"/><br>
Founded(year)<input type="text" name="founded"/><br>
Admission cost $<input type="text" name="admission"/><br>
Attraction<input type="text" name="attraction"/><br>
Distance from Denver<input type="text" name="distance"/><br>
<input type="submit" value="Add Park">

</form>
<h3>Delete Park by ID</h3>
<form action="deletePark.do" method="POST">
  <input type="text" name="id"/>
  <input type="submit" value="Delete"/>
  
</form>


</body>
</html>