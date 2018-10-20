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
<h2>Edit ${park.name} National Park </h2>

<h3>Edit Film</h3>
<form action="updatePark.do" method="POST">
<input type="hidden" name="id" value= "${park.id }"/>
Name<input type="text" name="name" value= "${ park.name}"/><br>
Location<input type="text" name="location" value= "${ park.location}"/><br>
Size(acres)<input type="text" name="size" value= "${ park.size}"/><br>
Annual Visits<input type="text" name="visits" value= "${ park.visits}"/><br>
Dangers<input type="text" name="dangers" value= "${ park.dangers}"/><br>
Founded(year)<input type="text" name="founded" value= "${ park.founded}"/><br>
Admission cost $<input type="text" name="admission" value= "${ park.admission}"/><br>
Attraction<input type="text" name="attraction" value= "${ park.attraction}"/><br>
Distance from Denver<input type="text" name="distance" value= "${ park.distance}"/><br>
<input type="submit" value="Edit Park">

</form>

<form action="home.do" method="GET">
<input type="submit" value="Home">
</form>

</body>
</html>

