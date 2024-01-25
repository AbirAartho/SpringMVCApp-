<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bangladesh</title>
<link rel="stylesheet" href="test.css">
</head>
<body>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
    
    <c:forEach var="student" items="${list}">
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td><a href="/student-update/${student.id}" class="btn btn-primary"> <i class="fas fa-user-edit ml-2"></i></a></td>
      <td><a href="/student-delete/${student.id}" class="btn btn-primary"> <i class="fas fa-user-edit ml-2"></i></a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>