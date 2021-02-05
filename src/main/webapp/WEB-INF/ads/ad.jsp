<%--
  Created by IntelliJ IDEA.
  User: calebwardlaw
  Date: 2/4/21
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${ad.title}" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />



<div class="container">
    <h1><c:out value="${ad.title}"/></h1>
    <h2><c:out value="Posted by: ${usersDao.findById(ad.userId).getUsername()}"/></h2>
    <p><c:out value="Description: ${ad.description}"/></p>
</div>


</body>
</html>