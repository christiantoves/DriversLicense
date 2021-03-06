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
	<h1>New Person</h1>
	<form:form action="/persons" method="post" modelAttribute="person">
		<p>
			<form:label path="firstName">First Name</form:label>
			<form:input path="firstName" />
			<form:errors path="firstName" />
		</p>
		<p>
			<form:label path="lastName">Last Name</form:label>
			<form:input path="lastName" />
			<form:errors path="lastName" />
		</p>
		<input type="submit" value="Create" />
	</form:form>
</body>
</html>