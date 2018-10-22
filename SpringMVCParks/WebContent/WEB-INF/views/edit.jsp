<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="styleSheets/update.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Edit ${park.name} National Park </h2>

<div class="row">
<div class="col-8">
<img id="narrows" alt="" src="media/narrows.jpeg">
</div>


<div class="col-4">
<h3>Edit Film</h3>

<form action="updatePark.do" method="POST">

<div id="edittext">
<input type="hidden" name="id" value= "${park.id }"/>

<label>Name</label>
<input id="name"type="text" name="name" value= "${ park.name}"/><br>
<label>Location</label>
<input id="loc" type="text" name="location" value= "${ park.location}"/><br>
<label>Size(acres)</label>
<input id="size"type="number" name="size" value= "${ park.size}"/><br>
<label>Annual Visits</label>
<input id="vis" type="number" name="visits" value= "${ park.visits}"/><br>
<label>Dangers</label>
<input type="text" id="dan" name="dangers" value= "${ park.dangers}"/><br>
<label>Date Founded</label>
<input type="date" id="found" name="founded" value= "${ park.founded}"/><br>
<label>Admission cost $</label>
<input type="number" id="ad" name="admission" value= "${ park.admission}"/><br>
<label>Attraction</label>
<input type="text" id="att" name="attraction" value= "${ park.attraction}"/><br>
<label>Distance </label>
<input type="text" id="dis" name="distance" value= "${ park.distance}"/><br>

</div>
<input type="submit" value="Edit Park" class="btn btn-warning btn-lg">
</form>


<form action="home.do" method="GET">
<input type="submit" value="Home" class="btn btn-primary btn-lg">
</form>
</div>
</div>




</body>


</html>

