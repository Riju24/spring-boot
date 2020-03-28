<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style>

*
{
	margin:30px;
}

.incont
{
	width:45%;
}


</style>
</head>
<body>
<div class="jumbotron">
<h1>Insert Details</h1>
<br/>
${msg}
</br>
<div class="container" align="center">
<form action ="insert" method ="post" >
	Id : <input type = "text" id = "id" name ="id" required/> &nbsp; &nbsp; &nbsp;
	Name : <input type = "text" id = "name" name ="name" required /> &nbsp; &nbsp; &nbsp;
	Course : <input type = "text" id = "course" name ="course" required/>
	<div class="incont">
	<input type="submit" class="btn btn-danger" style="float:left";>
	<input type ="reset" class="btn btn-danger" style="float:right";>
	</div>
</form>
<div>
</br>
</br>
</div>
<a href ="index"><button  type = "button" class="btn btn-warning" height ="100px" width="30px" style="float:left;">Home</button></a>
<a href ="display"><button type = "button" class="btn btn-warning" height ="100px" width="30px" style="float:right;">Display Record</button></a>
</div>

</body>
</html>