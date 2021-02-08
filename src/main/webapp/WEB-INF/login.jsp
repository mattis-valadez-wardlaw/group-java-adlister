<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link href="../css/login.css" rel="stylesheet" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <header>
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    </header>
    <div class="container">
        <div class="login">
            <h2>PLEASE LOG IN</h2>
            <form action="/login" method="POST">
                <div >
                    <input id="username" name="username" class="login-box-design" type="text" placeholder="U S E R N A M E" required>
                </div>
                <div>
                    <input id="password" name="password" class="login-box-design" type="password" placeholder="P A S S W O R D" required>
                </div>
                <input type="submit" class="login-btn" value="LOG IN">
            </form>
        </div>
    </div>


    <%--JavaScript--%>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>
