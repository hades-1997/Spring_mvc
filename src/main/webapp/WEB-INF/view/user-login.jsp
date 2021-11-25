<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <title>Sign IN</title>
</head>

<body>
<div class="container" >
    <div class="container container--mini">
        <img class="img-fluid mx-auto d-block mb-3" src="https://themes.getbootstrap.com/wp-content/themes/bootstrap-marketplace/assets/images/elements/bootstrap-logo.svg" alt="">
        <div class="row form-mini">
            <form  method="post" action="${pageContext.request.contextPath}/authenticateTheUser">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" placeholder="username">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="password">
                </div>
                <p class="login-remember"><label>
<%--                    <input name="rememberMe" type="checkbox"  value="forever"> Remember Me</label></p>--%>
                <div class="form-group">
                    <input type="submit" name="submit"  class="btn btn-brand btn-block mb-4 btn-primary" value="Sign In">
                    <div class="d-flex justify-content-center links">
                        Don't have an account?
                        <a href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a>
                    </div>
                </div>
                <div>

                    <c:if test="${param.error != null}">
                        <div class="alert alert-primary" role="alert">
                            Sorry! you entered invalid username / password
                        </div>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <div class="alert alert-success" role="alert">
                            You have been logged out.
                        </div>
                    </c:if>
                </div>
            </form>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
