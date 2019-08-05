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

/* Ajax function to find if the username/email is in database */
$("#NextButton").on("click", function () {
    /* if isn't empty */
    if (!$("#userNameEmail").val()) {
        //$("#userNameEmail").css()
        $("#userNameEmail").css("border-color", "#03d4e3");
        $("#userNameEmail").css("color", "#03d4e3");
        $("#userNameEmail").attr("placeholder", "Type your username or email here");
        //alert("it is empty");
    } else {
        //alert("isn't empty");
        /* if is an email */
        if ($("#userNameEmail").val().search("@") !== -1) {
            //alert("is an email");
            $.ajax({
                type: 'POST',
                url: "./findUserByEmail",
                //timeout: 100000,
                catch : false,
                data: {
                    email: $("#userNameEmail").val()
                },
                success: function (data) {
                    //console.log(data);
                    if (data === "success") {
                        $("#userNameDiv").hide(500);
                        $("#passwordDiv").show(500);
                    }
                },
                error: function (e) {
                    alert("Error while request ajax!!");
                    //console.log("Error", e);
                }
            });

        } else { /* if is an username*/
            // alert("isn't an email");
            $.ajax({
                type: 'POST',
                url: "./findUserByUserName",
                //timeout: 100000,
                catch : false,
                data: {
                    userName: $("#userNameEmail").val()
                },
                success: function (data) {
                    //console.log(data);
                    if (data === "success") {
                        $("#userNameDiv").hide(500);
                        $("#passwordDiv").show(500);
                    }

                },
                error: function (e) {
                    alert("Error while request ajax!!");
                    //console.log("Error", e);
                }
            });
        }
    }
});

/* connction button */
$(".loginBoxButton").on("click", function(){
    if (!$("#passwordFeildConnct").val()) {
        $("#passwordFeildConnct").css("border-color", "#03d4e3");
        $("#passwordFeildConnct").css("color", "#03d4e3");
        $("#passwordFeildConnct").attr("placeholder", "Type your passeword here");
        //alert("it is empty");
    } else {
        //ajax
    }
    
});

$(".signUp").on("click", function () {
    $(".signinDiv").hide(500);
    $(".loginBox").width(500);
    $(".loginBox").height(350);
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

$(".signUPBoxButton1").on("click", function () {

    var pw = $(".pw").val();
    var pwConf = $(".pwConf").val();

    if (pw === pwConf) {
        $.ajax({
            type: 'POST',
            url: "./addUserAjax",
            //timeout: 100000,
            catch : false,
            data: {firstName: $("#firstName").val(),
                lastName: $("#lastName").val(),
                birthDate: $("#date").val(),
                phoneNumber: $("#phoneNumber").val(),
                userName: $("#userName").val(),
                email: $("#email").val(),
                password: $("#pwHash").val()
            },
            success: function (data) {
                //console.log(data);
                if (data === "success") {
                    $(".btnHiddenModal").trigger("click");
                }
                /*setTimeout(function () {
                 $('#myModal').hide();
                 }, 60000);
                 location.reload(true);
                 /*if (data === "success") {
                 }*/

            },
            fail: function () {
                alert("we can not add it in DB");
            },
            error: function (e) {
                alert("Error while request ajax!!");
                //console.log("Error", e);
            }
        });
        // show a p success class to informe use that it's ok
    } else {
        // show a p danger class to informe use that it's not ok
    }
    /**/
});
