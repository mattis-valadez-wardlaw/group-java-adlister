<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link href="../css/ads-index.css" rel="stylesheet" type="text/css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <div>
        <h2>Here are all of your posts</h2>

        <div class="card-container">
                <c:forEach var="ad" items="${ads}">
                    <div class="ad-card">
                        <h3>${ad.title}</h3>
                        <img src="<c:out value="${ad.imageUrl}"/>" alt=${ad.title} width="300" height="350">
                        <p>${ad.description}</p>
                        <a class="btn btn-primary deletebtn" id="deletebtn" href="/ads/delete?id=${ad.id}">Delete</a>
                        <a class="btn btn-primary editbtn" id="editbtn" href="/ads/edit?id=${ad.id}">Edit</a>
                    </div>
                </c:forEach>
        </div>
    </div>
</body>
</html>
