<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Manager</title>
</head>
<body>
	<div align="center">

		<h1>Customer Manager</h1>
		<form action="search" method="get">
			<input type="text" name="keyword"/>
			<input type="submit" name="Search"/>
		</form>
		<h1><a href="new">New Customer</a></h1>
		<table border="1"  cellpadding="5">
		<tr>
			<th>ID</th>
			<th>Name </th>
			<th>E-mail </th>
			<th>Address </th>
			<th>Action </th>
		</tr>
		<c:forEach items="${listCustomer }" var="customer">
			<tr>
				<td>${customer.id } </td>
				<td>${customer.name } </td>
				<td>${customer.email } </td>
				<td>${customer.address } </td>
				<td>
					<a href="edit?id=${customer.id }">Edit</a>
					<a href="delete?id=${customer.id }">Delete</a>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	</div>
		<div>
		<h1> chao cac ban minh da thay doi </h1>
	</div>
	<div>
		<h1> chao cac ban minh da thay doi </h1>
	</div>
	

</body>
</html>