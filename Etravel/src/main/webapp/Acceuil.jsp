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
        <link href="acceuilStyle.css" rel="stylesheet" type="text/css"/>
        <title>Acceuil</title>
    </head>
    <body>
        <div class="divConnect" >
            <div class="loginBox">
                <img src="User_Avatar_2.png" alt="" class="imageAvatar"/>
            </div>
        </div>
        <c:out value="adib dont worry jstl is working" />
    </body>
</html>
