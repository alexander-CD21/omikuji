<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji</title>
	<link rel="stylesheet" href="/css/style.css"/>
	</head>
	<body>
		<h1>Here's Your Omikuji!</h1>
		<div class=contenedor>
			<h2>In <c:out value="${numero}"></c:out> years,you will live in <c:out value="${ciudad}"></c:out> with <c:out value="${persona}"></c:out> as your roommate,<c:out value="${favorito}"></c:out>
			for living.The next time you see a <c:out value="${vivir}"></c:out> , you will have good luck.Also, <c:out value="${comentario}"></c:out>.</h2>
			<h3><a href="/omikuji">Go back</a></h3>
		</div>
	</body>
</html>