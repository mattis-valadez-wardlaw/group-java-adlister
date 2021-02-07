<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="../css/ads-index.css" />

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Here are all the resources! Dive right in! 😊</h1>

        <div class="align-forms">

            <form action="/ads/title" method="get">
                <div class="form-group">
                    <input id="title" name="title" type="text" placeholder="Search By Description">
                    <input type="submit">
                </div>
            </form>

            <form action="/ads/description" method="get">
                <div class="form-group">
                    <input id="description" name="description" type="text" placeholder="Search By Title">
                    <input type="submit">
                </div>

            </form>

            <form action="/ads/categories" method="get">
                <div class="multiselect">
                    <div class="selectBox" onclick="showCheckboxes()">
                        <select>
                            <option>Search By Category</option>
                        </select>
                        <div class="overSelect"></div>
                    </div>
                    <div id="checkboxes">
                        <c:forEach var="category" items="${categories}">
                            <label for="category-${category.getId()}">
                                <input type="checkbox" id="category-${category.getId()}" name="categories" value="${category.getId()}"/>${category.getName()}</label>
                        </c:forEach>
                        <input type="submit" value="Search By Categories" id="btn-position" />
                    </div>
                </div>
            </form>

        </div>

        <%--Display Ads--%>
        <c:forEach var="ad" items="${ads}">
            <div class="card">
                <img src="<c:out value="${ad.imageUrl}"/>" alt=${ad.title}>
                <div class="container">
                    <h4><c:out value="${ad.title}"/></h4>
                    <p><c:out value="${ad.description}"/></p>
                    <p><strong>Categories:</strong> <c:out value="${fn:join(categoriesDao.getCategoriesLinkedWithAd(ad.id).toArray(), ',')}"/></p>
                    <a href="/ads/ad?id=${ad.id}" class="btn btn-primary">View Ad</a>
                </div>
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


<%--    <div class="container">--%>
<%--        &lt;%&ndash; Created forms to search by the title or the desciprion &ndash;%&gt;--%>
<%--        <form action="/ads/title" method="get">--%>
<%--            <div class="form-group">--%>
<%--                <label for="title">Search by Title</label>--%>
<%--                <input id="title" name="title" type="text">--%>
<%--            </div>--%>
<%--            <input type="submit">--%>
<%--        </form>--%>

<%--        <form action="/ads/description" method="get">--%>
<%--            <div class="form-group">--%>
<%--                <label for="description">Search by Description</label>--%>
<%--                <input id="description" name="description" type="text">--%>
<%--            </div>--%>
<%--            <input type="submit">--%>
<%--        </form>--%>

<%--    </div>--%>

<%--<script type="text/javascript" src="../" ></script>--%>
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
