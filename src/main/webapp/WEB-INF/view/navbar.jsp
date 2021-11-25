<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#"
     style="padding-top: .75rem; padding-bottom: .75rem;">Company name</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
          data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
          aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <form:form action="search" method="get" style="width: 100%;margin-bottom: 0px;padding-bottom: 0;">
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"
           name="theSearchName" id="search">
    <input class="btn hidden" type="submit" value="Search">
  </form:form>

  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <form:form method="post" action="${pageContext.request.contextPath}/logout" style="margin-bottom: 0;">
        <input class="nav-link px-3" type="submit" value="Sign out" style="background-color: #202224;border: 0px">
      </form:form>
    </div>
  </div>
</header>
