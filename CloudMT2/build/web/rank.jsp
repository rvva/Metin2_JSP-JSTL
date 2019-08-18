<%-- 
    Document   : rank
    Created on : 2018-01-24, 22:35:05
    Author     : fd3s
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="WEB-INF/dbConnection.jsp" />
<c:set var="db" value="${requestScope.db}" />
<jsp:useBean id="player" scope="request" class="web.model.player"/>




<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ranking graczy - CloudMT2</title>
        <link href="logo.png" rel="shortcut icon" type="image/png" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">    
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="CSS/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">


    </head>
    <body>
        <br />
        <h2>Ranking graczy:</h2>
        <br />
        <div class="container">

            <table class="table table-dark table-striped table-bordered">
                <thead class="thead-inverse">
                    <tr>
                        <th>Nick</th>
                        <th>Level</th>
                        <th>Pkt. doświadczenia</th>
                        <th>Klasa</th>
                        <th>Królestwo</th>
                        <th>Ostatnia gra</th>
                        <th>Łączny czas gry</th>
                    </tr>
                </thead>
                <tbody>
                    <sql:query var="rank" dataSource="${db}" sql="SELECT name, playtime, exp, level, job, last_play, empire from player.player 
                               JOIN player.player_index on player.player.account_id=player.player_index.id order by level desc, exp desc;" />
                    <c:forEach var="player" items="${rank.rows}">
                        <tr>
                            <td class="align-middle"><c:out value="${player.name}"/></td>
                            <td class="align-middle"><c:out value="${player.level}"/></td>
                            <td class="align-middle"><c:out value="${player.exp}"/></td>

                            <c:choose>
                                <c:when test = "${player.job == 0}">
                                    <td class="align-middle"><c:out value="Wojownik"/></td>
                                </c:when>
                                <c:when test = "${player.job == 2}">
                                    <td class="align-middle"><c:out value="Sura"/></td>
                                </c:when>
                                <c:when test = "${player.job == 1}">
                                    <td class="align-middle"><c:out value="Ninja"/></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="align-middle"><c:out value="Szaman"/></td>
                                </c:otherwise> 
                            </c:choose>

                            <c:choose>
                                <c:when test = "${player.empire == 1}">
                                    <td class="align-middle"><c:out value="Shinsoo"/></td>
                                </c:when>
                                <c:when test = "${player.empire == 2}">
                                    <td class="align-middle"><c:out value="Chunjo"/></td>
                                </c:when>
                                <c:otherwise>
                                    <td class="align-middle"><c:out value="Jinno"/></td>
                                </c:otherwise> 
                            </c:choose>

                            <td class="align-middle"><fmt:formatDate type="both" value="${player.last_play}"/></td>
                            <td class="align-middle"><c:out value="${player.playtime} min"/></td>                      
                        </tr>
                    </c:forEach> 
                </tbody>
            </table>    
        </div>
    </body>
</html>

