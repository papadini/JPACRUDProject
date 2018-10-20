<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="styleSheets/add.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<img alt="park collage"
		src="http://1.bp.blogspot.com/-t5gtGfGZThc/VeRyosZqM6I/AAAAAAAADtg/cKrDyEsmzTY/s1600/Kai-Carpenter-series.jpg">
	<h1>Add a Park!</h1>

	<img alt="square" id="square"
		src="https://balancehealthclubs.co.uk/wp-content/uploads/grey-square.png">
<div class="row" id="fields">
	<form action="createpark.do" method="POST">
		<div class="row">
			<label>Name</label>
			<div class="col-3">
				<input id="na"type="text" name="name" />
			</div>
		</div>

		<div class="row">
			<label>Location</label>
			<div class="col-3">
				<input id="lo"type="text" name="location" />
			</div>
		</div>
		<div class="row">
			<label>Size(acres)</label> <input id="si"type="number" name="size" />
			<div class="col-3"></div>
		</div>
		<div class="row">
			<label>Annual Visits</label>
			<div class="col-3">
				<input id="an"type="number" name="visits" />

			</div>
		</div>
		<div class="row">
			<label>Dangers</label>
			<div class="col-3">
				<input id="da" type="text" name="dangers" />
			</div>
		</div>
		<div class="row">
			<label>Founded(year)</label>
			<div class="col-3">
				<input  id="fo"type="date" name="founded" />
			</div>
		</div>
		<div class="row">
			<label>Admission cost</label>
			<div class="col-4">
				<input id="mis" type="number" name="admission" />
			</div>
		</div>
		<div class="row">
			<label>Attraction</label>

			<div class="col-5">
				<input id="at" type="text" name="attraction" />
			</div>
		</div>
		<div class="row">
			<label>Distance from Denver</label>
			<div class="col-3">
				<input type="number" name="distance" />

			</div>
		</div>

		<input id="add" type="submit" value="Add Park" class="btn btn-success btn-lg">

	</form>
	
	</div>

	<div id="home">
		<form action="home.do" method="GET">
			<input type="submit" value=" Home " class="btn btn-primary btn-lg">
		</form>
	</div>
</body>
</html>