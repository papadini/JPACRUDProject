<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="styleSheets/detailsSheet.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Park Info</title>
</head>
<body>

<img alt="" src="media/details.jpeg">

<div class="row">
<h1>Park Info</h1>
</div>

<div id="block1" class="row">
<label >Name:&nbsp </label>
${park.name}
<label>ID: &nbsp</label>
${park.id}
<label>Location:&nbsp </label>
${park.location}
<label>Size(arces):&nbsp </label>
${park.size}
</div>

<div id="block2"class="row">
<label>Annual visits: &nbsp</label>
${park.visits}
<label>Dangers: &nbsp</label>
${park.dangers}
<label>Year founded: &nbsp</label>
${park.founded}
</div>

<div id="block3">
<label>Main attraction: &nbsp</label>
${park.attraction}
<label>Admission cost: &nbsp</label>
${park.admission}
<label>Distance from Denver:&nbsp </label>
${park.distance}
</div>


<div id="button" class="row">
<div id="edit" class="col-1">
<form action="edit.do" method="GET">
<input type="hidden" value ="${park.id}" name= "id">
<input type="submit" value="Edit" class="btn btn-warning btn-lg"/>
</form>
</div>
<div id="delete" class="col-1">
<form action="delete.do" method="GET">
<input type="hidden" value ="${park.id}" name= "id">
<input type="submit" value="Delete" class="btn btn-danger btn-lg"/>
</form>
</div>
<div id="home" class="col-1">
<form action="home.do" method="GET">
<input type="submit" value="Home" class="btn btn-primary btn-lg"/>
</form>
</div>

</div>



</body>
</html>