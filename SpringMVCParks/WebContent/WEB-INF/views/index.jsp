<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="styleSheets/indexSheet.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parks</title>
</head>
<body>
<div class="row">


<h1 id="title">National Parks Database</h1>
<!--  <embed id ="vid1" src="media/Rock.mp4" autoplay width=800px height=400px loop/> -->

<video width="120%" height="120%" id ="vid1" autoplay loop >
<source src="media/Rock.mp4">
</video>
</div>





<div class="row" id="find">
<h3>Find Park by ID</h3>
<form action="getpark.do" method="GET">
  <input type="text" name="id" />
  <input type="submit" value="Find Park" class="btn btn-Dark"/>
</form>
</div>

<div class="row" id="find">
<h3>Find Park by Name</h3>
<form action="getparkname.do" method="GET">
  <input type="text" name="name" />
  <input type="submit" value="Find Park" class="btn btn-Dark"/>
</form>
</div>

<div class="row" id="find">
<h3>List all Parks</h3>
<form action="list.do" method="GET">
<input type="submit" value="List Parks" class="btn btn-Dark" />
</form>
</div>

<div class="row" id="find">
<h3>See random Park</h3>
<form action="random.do" method="GET">
<input type="submit" value="Random" class="btn btn-Dark" />
</form>
</div>


<div class="row" id="find">
<h3>Add a new Park</h3>
<form action="add.do" method="GET">
<input type="submit" value="Add Park" class="btn btn-Dark"/>
</form>
</div>



<h5>Created by KP</h5>



</body>
</html>