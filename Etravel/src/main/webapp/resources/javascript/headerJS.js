/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $(".menu-icon").on("click", function () {
        $("nav ul").toggleClass("showing");
    });
    
    var date_input = $('input[id="date"]');
    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'dd/mm/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true
    });
});

$("#NextButton").on("click", function () {
    /* Ajax function to find if the username/email is in database */
    $("#userNameDiv").hide(500);
    $("#passwordDiv").show(500);
});

$(".signUp").on("click", function () {
    $(".signinDiv").hide(500);
    $(".loginBox").width(500);
    $(".loginBox").height(330);
    $("#signUpBox").width(500);
    $("#signUpBox").show(500);
});

$(".signUPBoxButton2").on("click", function () {
    $("#signUpBox").hide(500);
    $("#signUpBox").width(260);
    $(".loginBox").width(260);
    $("#signinForm").trigger("reset");
    $(".signinDiv").show(500);
});

$(".textForget").on("click", function () {
    $(".signinDiv").hide(500);
    $(".loginBox").height(250);
    $(".forgetPWDiv").show(500);
});
