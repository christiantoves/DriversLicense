<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>License</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<h1>New License</h1>
	<form action="/licenses" method="post">
		<p>
			<label for="person">Persons</label> <select name="person" id="person">
				<c:forEach items="${persons}" var="person">
					<option value="${person.id}">
						<c:out value="${person.firstName} ${person.lastName}" />
					</option>
				</c:forEach>
			</select>
		</p>
		<p>
			<label for="state">State</label> <input type="text" name="state"
				id="state" />
		</p>
		<p>
			<label for="expirationDate">Expiration Date:</label> <input
				type="date" name="expirationDate" id="expirationDate" />
		</p>
		<input type="submit" value="Create" />
	</form>
</body>
</html>