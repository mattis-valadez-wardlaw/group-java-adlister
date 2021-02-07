<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <link href="css/landing-page.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container">
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
        <h1 id="heading">S O J U</h1>
        <h4 id="sub-heading">You  Home  For  Social  Justice  Resources</h4>
    </div>

    <div class="overlay"></div>

    <div class="bg-video-wrap">
        <video src="img/bookscan.mp4" width="100"  loop muted autoplay></video>
    </div>
</body>
</html>
