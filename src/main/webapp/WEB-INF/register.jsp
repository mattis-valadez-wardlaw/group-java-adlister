<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
    <link href="../css/registration.css" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class = error></div>
    <div class="container">

        <div class="registration">
            <h2>COMPLETE REGISTRATION</h2>
            <form action="/register" method="post">
                <div class="">

                    <input id="username" name="username" class="box-design" type="text" placeholder="U S E R N A M E" required>
                </div>
                <div class="">

                    <input id="email" name="email" class="box-design" type="text" placeholder="E M A I L" required>
                </div>
                <div class="">

                    <input id="password" name="password" class="box-design" type="password"placeholder="P A S S W O R D"required>
                </div>
                <div class="">

                    <input id="confirm_password" name="confirm_password" class="box-design" type="password"placeholder="C O N F I R M   U S E R N A M E"required>
                </div>
                <input type="submit" class="btn" value="S U B M I T">
            </form>

        </div>
    </div>




    <script>
        $(document).ready(function(){
            $("#confirm_password").keyup(function() {
                if ($("#password").val() !== $("#confirm_password").val()) {
                    $(".error").text("PASSWORDS DON'T MATCH").fadeIn("slow");

                } else {
                    $(".error").fadeOut("slow");
                }
            })
        });
    </script>
</body>
</html>
