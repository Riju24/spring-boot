<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
   <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>

*
{
	margin:30px;
}
.table
{
	width:100%;
	margin:auto;
}

.table th,td
{
	text-align:center;
}

.options
{
	width:30%;
}
.table 
</style>
</head>
<body>
<br/>
<div class="jumbotron">
<h1>The Records are :</h1>
<br/>
<table border="1" class="table table-dark table-striped">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Course</th>
			<th class ="options">Options</th>
		</tr>		
		<c:forEach items="${list}" var="stu">
		<tr>
			<td><c:out value="${stu.id}"/></td>
			<td><c:out value="${stu.name}"/></td>
			<td><c:out value ="${stu.course}"/></td>
			<td>
				<a href = "update?id=<c:out value="${stu.id}"/>"><button type ="button" class="btn btn-success">Update</button></a>
				<a href = "delete?id=<c:out value="${stu.id}"/>"><button type = "button" class="btn btn-danger">Delete</button></a>	
		</tr>
		</c:forEach>
	</table>
	</br>
	<p class ="text-center ">Total number of Records are : ${count}</p>
	</br>
	<a href ="index"><button type = "button" height ="100px" width="30px" class="btn btn-dark" style="float:left;">Home</button></a>
	<a href ="insert"><button type = "button" height ="100px" width="30px" class="btn btn-dark" style="float:right;">Insert Record</button></a>
</div>
</body>
</html>