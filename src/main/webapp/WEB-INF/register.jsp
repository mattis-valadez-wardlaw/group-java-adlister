<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

    <style>
        .error{
            text-align: center;
            width: 100%;
            background-color: red;
            display: none

        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class = error></div>
    <div class="container">
        <h1>Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" name="email" class="form-control" type="text" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password" required>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>




    <script>
        $(document).ready(function(){
            $("#confirm_password").keyup(function() {
                if ($("#password").val() !== $("#confirm_password").val()) {
                    $(".error").text("Passwords do not match").fadeIn("slow");

                } else {
                    $(".error").fadeOut("slow");
                }
            })
        });
    </script>
</body>
</html>
