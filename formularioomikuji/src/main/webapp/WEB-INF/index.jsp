<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Omikuji</title>
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	</head>
	<body>
		<div class="container-md">
			<h1> Send an Omikuji!</h1>
			<form action="/omikuji/procesar" method="post">
				<!-- Crenado el boton de numeros  -->
				<div class="form-group">
                    <label for="number">Pick any number between 5 to 25:</label>
                    <select class="custom-select" id="number" name="number">
                    	<c:forEach begin="5" step="1" end="25" var="variable">
							<option value="${variable}">${variable}</option>          
						</c:forEach>
                    </select>
                </div>
				<!-- Creando las entradas solicitadas  -->
				<label>Enter the name of any city.</label>
				<div class="input-group mb-3">
					<input type="text" name="city" class="form-control" placeholder="Enter the name of any city" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<label>Enter the name of any real person.</label>
				<div class="input-group mb-3">
					<input type="text" name="person" class="form-control" placeholder="Enter the name of any real person" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<label>Enter professional endeavor or hobby.</label>
				<div class="input-group mb-3">
					<input type="text" name="hobby" class="form-control" placeholder="Enter professional endeavor or hobby" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<label>Enter any type of living thing.</label>
				<div class="input-group mb-3">
					<input type="text" name="living" class="form-control" placeholder="Enter any type of living thing" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				
				<label>Say asomething nice to someone</label>
				<div class="input-group">
				  <textarea class="form-control" name="someone" aria-label="With textarea" placeholder="Say asomething nice to someone"></textarea>
				</div>
				<h4> Send and show a friend</h4>
				<button type="submit"> Send</button>
			</form>
		</div>
	</body>
</html>