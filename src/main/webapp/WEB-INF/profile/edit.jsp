<%--
  Created by IntelliJ IDEA.
  User: calebwardlaw
  Date: 2/4/21
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Please update your information.</h1>
    <form action="/profile/edit" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${sessionScope.user.username}" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${sessionScope.user.email}" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required>
        </div>
        <input id="submit-btn" type="submit" class="btn btn-block btn-primary">
        <input id="id" type="hidden" name="id" value="${sessionScope.user.id}">
    </form>
</div>


</body>
</html>