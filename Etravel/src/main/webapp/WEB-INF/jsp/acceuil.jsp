<%-- 
    Document   : Acceuil
    Created on : 14 juil. 2019, 15:09:49
    Author     : Utilisateur 1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="<c:url value="/styles/acceuilStyle.css"/>" rel="stylesheet" type="text/css"/>
        <script
            src="<c:url value="https://code.jquery.com/jquery-3.4.1.js"/>"
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
                <img src="<c:url value="/img/User_Avatar_2.png"/>" class="imageAvatar"/>

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
                    <%--<form:form action="${addUrl}" modelAttribute="user" method="POST" id="signUPForm">--%>
                    <!--<form action="addUser" method="POST" id="signUPForm">-->
                    <spring:url value="/addUserAjax" var="user"/>
                    <form:form role="form" action="${user}" modelAttribute="user" id="signUPForm">

                        <div class="row">
                            <div class="form-group col-xs-6">
                                <form:input type="text" path="firstName" placeholder="First name"/>
                            </div>

                            <div class="form-group col-xs-6">
                                <form:input type="text" path="lastName" placeholder="Last name"  title="Enter last name" autofocus="true"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-6">
                                <form:input type="text" path="birthDate" id="date" placeholder="Birthday date MM/DD/YYYY" title="Enter Birthday date"/>
                            </div> 
                            <div class="form-group col-xs-6">
                                <form:input type="text" path="phoneNumber" placeholder="Phone number"  title="Enter your telphone number"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-6">
                                <form:input type="text" path="userName" placeholder="Username" title="Enter username"/>
                            </div>
                            <div class="form-group col-xs-6">
                                <form:input type="email" path="email" placeholder="Email" title="Enter your email"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-6">
                                <form:input type="password" path="pwHash" class="pw" placeholder="Password" title="Enter password"/>
                            </div>
                            <div class="form-group col-xs-6">
                                <form:input type="password" path="pwHash" class="pwConf" placeholder="Comfirm password" title="Confirm password"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-10">
                                <button type="button" class="signUPBoxButton1 shareBetweenButtons">Sign up</button>
                            </div>
                            <div class="form-group col-xs-2">
                                <a class="signUPBoxButton2">Sign in <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </form:form>
                    <!--
                        <div class="row">
                             <div class="form-group col-xs-6">
                                 <input type="text" name="firstName" placeholder="First name"/>
                             </div>
 
                             <div class="form-group col-xs-6">
                                 <input type="text" name="lastName" placeholder="Last name"  title="Enter last name" autofocus="true"/>
                             </div>
                         </div>
                         <div class="row">
                             <div class="form-group col-xs-6">
                                 <input type="text" name="birthDate" id="date" placeholder="Birthday date MM/DD/YYYY" title="Enter Birthday date"/>
                             </div> 
                             <div class="form-group col-xs-6">
                                 <input type="text" name="phoneNumber" placeholder="Phone number"  title="Enter your telphone number"/>
                             </div>
                         </div>
                         <div class="row">
                             <div class="form-group col-xs-6">
                                 <input type="text" name="userName" placeholder="Username" title="Enter username"/>
                             </div>
                             <div class="form-group col-xs-6">
                                 <input type="email" name="email" placeholder="Email" title="Enter your email"/>
                             </div>
                         </div>
                         <div class="row">
                             <div class="form-group col-xs-6">
                                 <input type="password" name="password" placeholder="Password" title="Enter password"/>
                             </div>
                             <div class="form-group col-xs-6">
                                 <input type="password" name="pwConf" placeholder="Comfirm password" title="Confirm password"/>
                             </div>
                         </div>
                         <div class="row">
                             <div class="form-group col-xs-10">
                                 <button type="button" class="signUPBoxButton1 shareBetweenButtons">Sign up</button>
                             </div>
                             <div class="form-group col-xs-2">
                                 <a class="signUPBoxButton2">Sign in <i class="fa fa-angle-right"></i></a>
                             </div>
                         </div>-->

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

        <div class="servicesDiv">
            <h1 class="ourServices" data-text="Our services"><c:out value="Our services" /></h1>
            <div class="container">
                <div class="card">
                    <div class="face face1">
                        <div class="content">
                            <img src="<c:url value="/img/architecture-and-city.png"/>" alt=""/>
                            <h3>Hotel</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content">
                            <p>Chose your hotel</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="face face1">
                        <div class="content">
                            <img src="<c:url value="/img/taxi.png"/>" alt=""/>
                            <h3>Car</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content">
                            <p>Rent a car</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="face face1">
                        <div class="content">
                            <img src="<c:url value="/img/flight.png"/>" alt=""/>
                            <h3>Plane</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content">
                            <p>Take a plane</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>             

                <div class="card">
                    <div class="face face1">
                        <div class="content">
                            <img src="<c:url value="/img/train.png"/>" alt=""/>
                            <h3>Train</h3>
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="content">
                            <p>Take train</p>
                            <a href="#">Read more</a>
                        </div>
                    </div>
                </div>

            </div>    
        </div>

        <!--Model Popup starts-->
        <button type="button" class="btn btn-default btnHiddenModal" data-toggle="modal" data-target="#myModal">Launch modal</button>
        <div class="container" >
            <div class="row">
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label=""><span>×</span></button>
                            </div>
                            <div class="modal-body">
                                <div class="thank-you-pop">
                                    <img src="http://goactionstations.co.uk/wp-content/uploads/2017/03/Green-Round-Tick.png" alt="">
                                    <h1>Thank You!</h1>
                                    <p>Your submission is received and you will receive a validation email, This email contains a link. Just click on this link to validate your e-mail address </p>
                                    <h3 class="cupon-pop"><span>Etravel wishes you happiness</span></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Model Popup ends-->


        <!-- footer part -->
        <div>
            <c:import url="footer.jsp" />
        </div>

        <script src="<c:url value="/javascript/headerJS.js" />"></script>
        <script type="text/javascript" src="<c:url value="https://code.jquery.com/jquery-1.11.3.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"/>"></script>
        <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>"/>
    </body>
</html>
