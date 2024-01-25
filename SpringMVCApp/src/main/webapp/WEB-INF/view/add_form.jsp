<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bangladesh</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
<form:form action="/save-student" method="post" modelAttribute="command">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputId">ID</label>
      <form:input type="number" class="form-control" id="inputEmail4" path="id" placeholder="ID" />
    </div>
    <div class="form-group col-md-6">
      <label for="inputName">Name</label>
      <form:input type="text" class="form-control" id="inputPassword4" path="name" placeholder="Name" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputRoll">RollNo</label>
    <form:input type="number" class="form-control" id="inputAddress" path="rollNo" placeholder="RollNo" />
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <form:input type="text" class="form-control" id="inputAddress2" path="address" placeholder="Address" />
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail">Email</label>
      <form:input type="email" class="form-control" id="inputCity" path="emailId" placeholder="Email" />
    </div>
   <%--  <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <form:input type="text" class="form-control" id="inputZip" />
    </div> --%>
  </div>
<%--   <div class="form-group">
    <div class="form-check">
      <form:input class="form-check-input" type="checkbox" id="gridCheck" />
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div> --%>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form:form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>