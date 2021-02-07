"use strict";

$(document).ready(function(){
    $("#confirm_password").keyup(function() {
        if ($("#password").val() !== $("#confirm_password").val()) {
            $(".error").text("Passwords do not match").fadeIn("slow");

        } else {
            $(".error").fadeOut("slow");
        }
    })
});