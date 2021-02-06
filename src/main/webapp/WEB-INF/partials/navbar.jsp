<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">SoJu</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
<%--            <li><a href="/login">Login</a></li>--%>
            <c:choose>
                <c:when test="${sessionScope.user == null}" >
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${sessionScope.user != null}" >
                    <li class="nav-item">
                        <a class="nav-link" href="/profile">Profile</a>
                    </li>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${sessionScope.user != null}" >
                    <li class="nav-item">
                        <a class="nav-link" href="/ads">Ad Index</a>
                    </li>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${sessionScope.user != null}" >
                    <li class="nav-item">
                        <a class="nav-link" href="/ads/create">Create Ad</a>
                    </li>
                </c:when>
            </c:choose>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
