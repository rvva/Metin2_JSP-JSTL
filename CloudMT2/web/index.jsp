<%-- 
    Document   : index
    Created on : 2018-01-24, 01:21:24
    Author     : fd3s
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="account" scope="request" class="web.model.account"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Strona główna - CloudMT2</title>
        <link href="logo.png" rel="shortcut icon" type="image/png" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

    </head>    
    <body>

        <div class="formularz">
            <form action="createAccount.jsp" method="POST">
                <table>

                    <td>Login:</td>
                    <td><input type="text" name="login" maxlength="24" required="true" value="<c:out value="${account.login}"/>"></td>
                    <tr>
                        <td>Hasło:</td>
                        <td><input type="password" name="password" maxlength="45" required="true" value="<c:out value="${account.password}"/>"></td>

                    </tr>
                    <tr>
                        <td>Kod usunięcia postaci:</td>
                        <td><input type="number" name="social_id" maxlength="13" required="true" value="<c:out value="${account.social_id}"/> "></td>
                    </tr>
                    <tr>
                        <td>E-Mail:</td>
                        <td><input type="email" name="email" maxlength="64" required="true" value="<c:out value="${account.email}"/>"></td>
                    </tr>
                    <tr>
                        <td>Twoje imię:</td>
                        <td><input type="text" name="real_name" maxlength="16" required="true" value="<c:out value="${account.real_name}"/>"></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <input title="" type="submit" name="submit" value="Zarejestruj">
                            <input title="" type="reset" value="Wyczyść">
                        </td>
                    </tr>
                </table>
                <center><a href="https://mega.nz/#F!zYNFhKAb!WIHDIwuubarAgw8u5fR1Fw"><img src="IMG/client.png" alt="klient CloudMT2" /></a></center> 
                <center><a href="rank.jsp"><img src="IMG/ranking.png" alt="raking CloudMT2" /></a></center> 
                <br />
                <center><a href="http://invite.teamspeak.com/80.211.193.148/"><img src="IMG/teamspeak.png" alt="TeamSpeak CloudMT2" /></a></center>
            </form>
        </div>             
    </body>
</html>

