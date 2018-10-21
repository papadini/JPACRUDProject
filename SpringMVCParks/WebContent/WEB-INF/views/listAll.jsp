<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="styleSheets/list.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Park List</title>
</head>
<img alt="usparks" src="media/listall.jpeg">

<body>





<div id="forloop" class = "row">
<c:forEach items="${parks}" var="park" varStatus="loop">
<div class="col-2">
<a id="park" href="getpark.do?id=${park.id}"> ${park.name}</a>

</div>
</c:forEach>
</div>


<form action="home.do" method="GET">
<input id="home" type="submit" value="Home" class="btn btn-primary btn-lg">
</form>






</body>
</html>