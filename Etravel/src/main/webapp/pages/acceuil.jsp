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
        <script type="text/javascript" src="https://formden.com/static/cdn/formden.js"></script>

        <!-- Special version of Bootstrap that is isolated to content wrapped in .bootstrap-iso -->
        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

        <!--Font Awesome (added because you use icons in your prepend/append)-->
        <link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />

        <!-- Inline CSS based on choices in "Settings" tab -->
        <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>

        <c:import url="header.jsp" />
        <div class="divConnect" >
            <div class="loginBox transparenceEffect">
                <img src="../img/User_Avatar_2.png" alt="" class="imageAvatar"/>
                <div class="signinDiv">
                    <h1 class="titleLogin"><b>Sign in</b></h1>
                    <div class="text-center social-btn">
                        <button class="facebookTwitter btn-primary btn-block "><i class="fa fa-facebook"> &nbsp;</i> Sign in with <b>Facebook</b></button>
                        <button class="facebookTwitter btn-danger btn-block"><i class="fa fa-google"> &nbsp;</i> Sign in with <b>Google</b></button>
                        <div class="or-seperator"><b>or</b></div>
                    </div>
                    <form action="#" method="POST" id="signinForm">
                        <div id="userNameDiv">
                            <br/>
                            <input type="text" name="" placeholder="Enter Username or Email"/> <br/>
                            <button type="button" id="NextButton" class="loginBoxButton">Next</button>
                        </div>
                        <div class="displayHide" id="passwordDiv">
                            <br/>
                            <input type="password" name="" placeholder="Enter Password"/> <br/>
                            <a href="#" class="textForget">Forget password ?</a><br/> 
                            <button type="submit" name="" class="loginBoxButton">Sign in</button><br/>
                        </div>
                    </form>
                    <br/>
                    <a href="#" class="signUp">Don't have an account ?</a>
                </div>
            </div>
            <div class="displayHide loginBox" id="signUpBox">
                <h1 class="titleLogin"><b>Sign up</b></h1>
                <div class="text-center social-btn">
                    <button class="facebookTwitterSignUp btn-primary"><i class="fa fa-facebook"> &nbsp;</i> Sign up with <b>Facebook</b></button>
                    <button class="facebookTwitterSignUp btn-danger"><i class="fa fa-google"> &nbsp;</i> Sign up with <b>Google</b></button>
                    <div class="or-seperator"><b>or</b></div>
                </div>
                <div id="userNameDiv">
                    <form action="#" method="POST" id="signUPForm">
                        <div class="row">
                            <div class="form-group col-xs-6">
                                <input type="text" name="" placeholder="First name"  title="Enter first name"/>
                            </div>
                            <div class="form-group col-xs-6">
                                <input type="text" name="" placeholder="Last name"  title="Enter last name"/>
                            </div>
                        </div>
                        <input type="text" name="date" id="date" placeholder="Birthday date MM/DD/YYYY" title="Enter Birthday date"/>
                        <input type="text" name="" placeholder="Username" title="Enter username"/>
                        <div class="row">
                            <div class="form-group col-xs-6">
                                <input type="password" name="" placeholder="Password" title="Enter password"/>
                            </div>
                            <div class="form-group col-xs-6">
                                <input type="password" name="" placeholder="Comfirm password" title="Confirm password"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-8">
                                <button type="submit" name="" class="signUPBoxButton1 shareBetweenButtons">Sign up</button>
                            </div>
                            <div class="form-group col-xs-4">
                                <button type="submit" name="" class="signUPBoxButton2 shareBetweenButtons">Sign in <i class="fa fa-angle-right"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="forgetPWDiv displayHide loginBox">
                <h1 class="text-center titleLogin"><b>Forgot Password?</b></h1>
                <br/>
                <p class="text-center">You can reset your password here.</p>
                <form action="#" method="POST" id="forgetPWForm">
                    <div id="">
                        <br/><br/>
                        <input name="" placeholder="Enter your email" type="text"/> <br/>
                        <br/>
                        <button type="button" id="resetPWButton" class="loginBoxButton">Reset Password</button>
                    </div>
                </form>
            </div>

        </div>
        <c:out value="adib dont worry jstl is working" />

        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        <script src="../JS/headerJS.js" type="text/javascript"></script>
    </body>

</html>
