<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
  <title>Save Customers</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>
<body>
<c:import url="navbar.jsp"/>
<div class="container-fluid">
  <div class="row">
    <c:import url="sidebar.jsp"/>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="chartjs-size-monitor">
        <div class="chartjs-size-monitor-expand">
          <div class=""></div>
        </div>
        <div class="chartjs-size-monitor-shrink">
          <div class=""></div>
        </div>
      </div>
      <div class="" style="padding: 5px;"></div>
      <h2>Add Books</h2>
      <div class="" style="padding: 20px;"></div>
      <form:form action="saveCustomer" modelAttribute="customer" method="post">
      <form:hidden path="id" />
        <input name="command" value="ADD" type="hidden"/>
        <div class="col-md-12">
          <label for="firstName" class="form-label">Name</label>
          <form:input path="firstName" class="form-control" id="firstName" placeholder="First Name"/>
        </div>
        <div class="col-md-12">
          <label for="lastName" class="form-label">Last Name</label>
          <form:input path="lastName" class="form-control" id="lastName" placeholder="Last Name"/>
        </div>
        <div class="col-md-12">
          <label for="email" class="form-label">Email</label>
          <form:input path="email" class="form-control" id="email" placeholder="Email"/>
        </div>
        <div class="mb-3"></div>
        <div class="col-12">
          <button type="submit" class="btn btn-primary" name="addBooks">Add Customer</button>
        </div>
      </form:form>
    </main>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>