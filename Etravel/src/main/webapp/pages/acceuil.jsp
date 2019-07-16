<%-- 
    Document   : Acceuil
    Created on : 14 juil. 2019, 15:09:49
    Author     : Utilisateur 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../styles/acceuilStyle.css" rel="stylesheet" type="text/css"/>
        <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous">
        </script>

        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>Acceuil</title>
    </head>
    <body>
        <c:import url="header.jsp" />
        <div class="divConnect" >
            <div class="loginBox">
                <img src="../img/User_Avatar_2.png" alt="" class="imageAvatar"/>
                <h1 class="titleLogin"><b>Login</b></h1>
                <div class="text-center social-btn">
                    <a href="#" class="facebookTwitter btn btn-primary btn-lg btn-block "><i class="fa fa-facebook"> &nbsp;</i> Sign in with <b>Facebook</b></a>
                    <a href="#" class="facebookTwitter btn btn-danger btn-lg btn-block"><i class="fa fa-google"> &nbsp;</i> Sign in with <b>Google</b></a>
                    <div class="or-seperator"><b>or</b></div>
                </div>
                
                <div id="userNameDiv">
                    <p>Username</p>
                    <input type="text" name="" placeholder="Enter Username or Email"/> <br/>
                    <button type="button" id="NextButton" >Next</button>
                </div>
                <div style="display: none;" id="passwordDiv">
                    <p>Password</p>
                    <input type="password" name="" placeholder="Enter Password"/> <br/>
                    <a href="#" class="textForget forgetSignUp">Forget password ?</a><br/> 
                    <button type="submit" name="">Login</button><br/>
                </div>
                <br/>
                <a href="#" class="signUp forgetSignUp">Don't have an account ?</a>
            </div>
        </div>
        <c:out value="adib dont worry jstl is working" />
    </body>
    <script src="../JS/headerJS.js" type="text/javascript"></script>
</html>