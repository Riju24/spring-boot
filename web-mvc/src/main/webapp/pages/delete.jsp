<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Delete a particular record</h1>
</br>
${msg }
</br>
<form action ="delete" method ="post" >
Id : <input type = "text" id = "id" name ="id"/>
<input type="submit">
<input type ="reset">
</form>
</br>
</br>
<a href ="index"><button type = "button" height ="100px" width="30px">Home</button></a>
<a href ="display"><button type = "button" height ="100px" width="30px">Display Record</button></a>
</body>
</html>