<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Persons</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<h1>
		<c:out value="${person.firstName}"></c:out>
		<span> </span>
		<c:out value="${person.lastName}"></c:out>
	</h1>
	<p>
		License Number:
		<fmt:formatNumber pattern="000000" value="${person.license.id}" />
	</p>
	<p>
		State:
		<c:out value="${person.license.state}"></c:out>
	</p>
	<p>
		Expiration:
		<fmt:formatDate pattern="MM/dd/yyyy"
			value="${person.license.expirationDate}" />
	</p>
</body>
</html>