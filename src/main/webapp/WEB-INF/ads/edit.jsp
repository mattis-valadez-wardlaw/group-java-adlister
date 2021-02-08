<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Edit Ad</h1>
        <form action="/ads/edit" method="post">

            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${ad.title}" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text" required>${ad.description}</textarea>
            </div>
            <div class="form-group">
                <label for="image">Image</label>
                <textarea id="image" name="image" class="form-control" type="text" required>${ad.imageUrl}</textarea>
            </div>
            <input type="hidden" name="id" value="${ad.id}">
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>


    <%--JavaScript--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
