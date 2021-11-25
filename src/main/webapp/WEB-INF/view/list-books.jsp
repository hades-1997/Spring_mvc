<%@ page import="com.ray.books.constant.SortBookColumn" %>
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
            <security:authorize access="hasRole('EMPLOYEE')">
                <div class="d-flex justify-content-center pt-3">
                    <h2> Welcome to CRM system - <security:authentication property="principal.username" /> </h2>
                </div>
                <div class="d-flex justify-content-center pb-3">
                    <h5> You have roles: <security:authentication property="principal.authorities" /> </h5>
                </div>
            </security:authorize>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" style="float:left"><i class="fa fa-pencil"></i> Danh sách của Sách</h3>
                    <security:authorize access="hasRole('ADMIN')">
                    <div class="pull-right">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="" class="btn btn-success" data-original-title="Thêm mới"
                           onclick="window.location.href='showFormForAdd'; return false;"><i class="fa fa-plus"></i></a>
                    </div>
                    </security:authorize>
                    <div style="clear:both"></div>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                            <c:url value="/customer/list" var="sortLinkTitle">
                                <c:param name="sort" value="<%=String.valueOf(SortBookColumn.NAME_TITLE) %>" />
                            </c:url>
                            <c:url value="/customer/list" var="sortLinkUnitPrice">
                                <c:param name="sort" value="<%=String.valueOf(SortBookColumn.UNIT_PRICE) %>" />
                            </c:url>
                            <c:url value="/customer/list" var="sortLinkDate">
                                <c:param name="sort" value="<%=String.valueOf(SortBookColumn.CREATE_DATE) %>" />
                            </c:url>
                            <tr>
                                <th scope="col"><a href="${sortLinkTitle}">Title</a></th>
                                <th scope="col">Description</th>
                                <th scope="col"><a href="${sortLinkUnitPrice}">Price</a></th>
                                <th scope="col">Author</th>
                                <th scope="col"><a href="${sortLinkDate}">Time</a></th>
                                <th scope="col">Image</th>
                                <th scope="col">Category</th>
                                <security:authorize access="hasRole('ADMIN')"> <th scope="col">Action</th></security:authorize>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${books}" var="tempBooks">
<%--                                 Example link http://...//customer/showFormForUpdate?customerId=1 --%>
                                <c:url var="updateLink" value="/books/showFormForUpdate">
                                    <c:param name="booksId" value="${tempBooks.id}" />
                                </c:url>
                                <c:url var="deleteLink" value="/books/delete">
                                    <c:param name="booksId" value="${tempBooks.id}" />
                                </c:url>
                                <tr>
                                    <td>${tempBooks.title}</td>
                                    <td>${tempBooks.hometext}</td>
                                    <td style="color: red">${tempBooks.unitprice}$</td>
                                    <td>${tempBooks.author}</td>
                                    <td>${tempBooks.createdate}</td>
                                    <td><img src="${pageContext.request.contextPath}/resources/images/${tempBooks.imageurl}" style="height: 150px;width: 100px"></td>
                                    <td>${tempBooks.categoryBook.title}</td>
                                    <security:authorize access="hasRole('ADMIN')">
                                        <td>
                                            <a href="${updateLink}" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Sửa">
                                                <i class="fa fa-pencil"></i></a>
                                            <a href="${deleteLink}"
                                               onclick="if (!confirm('Are you sure you want to delete this?')) return false;" data-toggle="tooltip" title="" class="btn btn-danger" data-original-title="Xóa">
                                                <i class="fa fa-trash-o"></i></a>
                                        </td>
                                    </security:authorize>
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