<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ads-index.css" />--%>
    <style>
        .multiselect {
            width: 200px;
        }

        .selectBox {
            position: relative;
        }

        .selectBox select {
            width: 100%;
            font-weight: bold;
        }

        .overSelect {
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
        }

        #checkboxes {
            display: none;
            border: 1px #dadada solid;
        }

        #checkboxes label {
            display: block;
        }

        #checkboxes label:hover {
            background-color: #f5d782;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here are all the resources! Dive right in! 😊</h1>

    <%--Search By Category--%>
    <form action="/ads/categories" method="get">
        <div class="multiselect">
            <div class="selectBox" onclick="showCheckboxes()">
                <select>
                    <option>Select Categories</option>
                </select>
                <div class="overSelect"></div>
            </div>
            <div id="checkboxes">
                <c:forEach var="category" items="${categories}">
                    <label for="category-${category.getId()}">
                        <input type="checkbox" id="category-${category.getId()}" name="categories" value="${category.getId()}"/>${category.getName()}</label>
                </c:forEach>
            </div>
        </div>
        <input type = "submit" value="Search By Categories" />
    </form>

    <%--Display Ads--%>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><c:out value="${ad.title}"/></h2>
            <p><c:out value="${ad.description}"/></p>
            <p>Categories: <c:out value="${fn:join(categoriesDao.getCategoriesLinkedWithAd(ad.id).toArray(), ',')}"/></p>
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

<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/ads-index.js" ></script>--%>
<script>
    "use strict";
    var expanded = false;

    function showCheckboxes() {
        var checkboxes = document.getElementById("checkboxes");
        if (!expanded) {
            checkboxes.style.display = "block";
            expanded = true;
        } else {
            checkboxes.style.display = "none";
            expanded = false;
        }
    }
</script>
</body>
</html>
