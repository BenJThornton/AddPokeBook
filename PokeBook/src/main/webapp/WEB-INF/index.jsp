<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<h1>PokeBook</h1>
		<h3>New Expense</h3>
		<form:form action="/" method="post"
			modelAttribute="newExpense" class="form">

			<form:label path="name">Name</form:label>
			<form:errors path="name" class="text-danger" />
			<form:input path="name" class="form-control" />

			<form:label path="vendor">Vendor</form:label>
			<form:errors path="vendor" class="text-danger" />
			<form:input path="vendor" class="form-control" />

			<form:label path="amount">Amount</form:label>
			<form:errors path="amount" class="text-danger" step="0.01" />
			<form:input path="amount" class="form-control" />

			<form:label path="description">Description</form:label>
			<form:errors path="description" class="text-danger" />
			<form:textarea path="description"></form:textarea>
			<button class="btn btn-primary">Submit</button>
		</form:form>
		<h3>Expenses</h3>
		<table class="table table-striped">
			<tbody>
				<tr>
					<th>Name</th>
					<th>Vendor</th>
					<th>Amount</th>
				</tr>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><c:out value="${expense.name}"></c:out></td>
						<td><c:out value="${expense.vendor}"></c:out></td>
						<td><c:out value="${expense.amount}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>