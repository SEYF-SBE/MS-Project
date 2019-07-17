/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $(".menu-icon").on("click", function () {
        $("nav ul").toggleClass("showing");
    });
});

$("#NextButton").on("click", function () {
    /* Ajax function to find if the username/email is in database */
    $("#userNameDiv").hide(500);
    $("#passwordDiv").show(500);
});

