<%@ page import="com.ray.books.constant.SortCustomerColumn" %>
<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 10/8/21
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>List Customers</title>
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
            <div class="" style="padding: 50px;"></div>
            <security:authorize access="hasRole('ADMIN')">
                <div class="d-flex justify-content-center pt-3">
                    <h2> Welcome to CRM system - <security:authentication property="principal.username" /> </h2>
                </div>
                <div class="d-flex justify-content-center pb-3">
                    <h5> You have roles: <security:authentication property="principal.authorities" /> </h5>
                </div>
            </security:authorize>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" style="float:left"><i class="fa fa-pencil"></i> Danh sách Khách Hàng</h3>
                    <div class="pull-right">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="" class="btn btn-success" data-original-title="Thêm mới"
                           onclick="window.location.href='showFormForAdd'; return false;"><i class="fa fa-plus"></i></a>
                    </div>
                    <div style="clear:both"></div>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                            <c:url value="/customer/list" var="sortLinkFirstName">
                                <c:param name="sort" value="<%=String.valueOf(SortCustomerColumn.FIRST_NAME) %>" />
                            </c:url>
                            <c:url value="/customer/list" var="sortLinkLastName">
                                <c:param name="sort" value="<%=String.valueOf(SortCustomerColumn.LAST_NAME) %>" />
                            </c:url>
                            <c:url value="/customer/list" var="sortLinkEmail">
                                <c:param name="sort" value="<%=String.valueOf(SortCustomerColumn.EMAIL) %>" />
                            </c:url>
                            <tr>
                                <th scope="col"><a href="${sortLinkFirstName}">Fist Name</a></th>
                                <th scope="col"><a href="${sortLinkLastName}">Last Name</a></th>
                                <th scope="col"><a href="${sortLinkEmail}">Email</a></th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${customers}" var="tempCustomer">
                                <%-- Example link http://...//customer/showFormForUpdate?customerId=1 --%>
                                <c:url var="updateLink" value="/customer/showFormForUpdate">
                                    <c:param name="customerId" value="${tempCustomer.id}" />
                                </c:url>
                                <c:url var="deleteLink" value="/customer/delete">
                                    <c:param name="customerId" value="${tempCustomer.id}" />
                                </c:url>
                            <tr>
                                <td>${tempCustomer.firstName}</td>
                                <td>${tempCustomer.lastName}</td>
                                <td>${tempCustomer.email}</td>
                                <td>
                                    <a href="${updateLink}" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Sửa">
                                        <i class="fa fa-pencil"></i></a>
                                    <a href="${deleteLink}"
                                       onclick="if (!confirm('Are you sure you want to delete this?')) return false;" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Xóa">
                                        <i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>