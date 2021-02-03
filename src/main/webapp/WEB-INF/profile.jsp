<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <div>
        <h2>Here are all of your posts</h2>
        <c:forEach var="ad" items="${ads}">
            <h1>${ad.title}</h1>
            <h2>${ad.description}</h2>
            <a class="btn btn-primary deletebtn" id="deletebtn" href="/ads/delete?id=${ad.id}">Delete</a>
        </c:forEach>
    </div>
</body>
</html>
