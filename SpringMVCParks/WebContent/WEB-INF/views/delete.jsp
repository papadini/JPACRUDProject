<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="styleSheets/deleteSheet.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete page</title>
</head>
<body>
<img id="trees" alt="forest" src="https://images8.alphacoders.com/788/thumb-1920-788889.jpg">
<img id="park" alt="save the parks" src="media/park.jpeg">
<div class="row">
<h1>Are you sure you want to delete ${park.name} National Park!</h1>
</div>
<div id="para1" class="row">
<h2>What would Smokey say!</h2>
<form action="deletePark.do" method="POST">
  <input type="hidden" value=${park.id } name="id"/>
  <input id="del" type="submit" value="Delete" class="btn btn-danger btn-lg"/>
</form>

<form action="home.do" method="GET">
<input id="home" type="submit" value="Home" class="btn btn-primary btn-lg">
</form>

</div>

</body>
</html>