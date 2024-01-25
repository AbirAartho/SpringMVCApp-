<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bangladesh</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
<a href="/form" class="btn btn-primary"><i class="fas fa-user-plus ml-2">Add Student</i></a>


<p> Show List:</p>
<ol>
<c:forEach var="abc" items="${list}">
<li>${abc}</li>
</c:forEach>
</ol>


</body>
</html>