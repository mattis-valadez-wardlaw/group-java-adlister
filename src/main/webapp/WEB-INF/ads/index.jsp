<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <a href="/ads/ad?id=${ad.id}" class="btn btn-primary">View Ad</a>
        </div>
    </c:forEach>

    <c:forEach var="ad" items="${title}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>

    <c:forEach var="ad" items="${description}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>


<div class="container">
    <%-- Created forms to search by the title or the desciprion --%>
    <form action="/ads/title" method="get">
        <div class="form-group">
            <label for="title">Search by Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>

    <form action="/ads/description" method="get">
        <div class="form-group">
            <label for="description">Search by Description</label>
            <input id="description" name="description" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>

</div>

</body>
</html>
