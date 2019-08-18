<%-- 
    Document   : createAccount
    Created on : 2018-01-24, 01:42:41
    Author     : fd3s
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="account" scope="request" class="web.model.account"/>
<fmt:requestEncoding value="UTF-8"/>
<jsp:setProperty name="account" property="*"/>

<c:catch var="exception">
    <jsp:include page="WEB-INF/dbConnection.jsp"/>
    <sql:update dataSource="${requestScope.db}" sql="INSERT INTO account.account(login,password,social_id,email,real_name) VALUES (?,?,?,?,?);" var="dodanie">
        <sql:param value="${account.login}"/>
        <sql:param value="${account.MySQLPassword(account.password)}"/>
        <sql:param value="${account.social_id}"/>
        <sql:param value="${account.email}"/>
        <sql:param value="${account.real_name}"/>
    </sql:update>
    <c:if test="${dodanie>=1}">
        <div class="formularz">
            <img src="IMG/woj.png" alt="">
            <h2>Pomyślnie dodano konto ${account.login} 😎</h2>
        </div>
    </c:if>

</c:catch>
<c:if test="${exception!=null}">
    <div class="formularz">
        <img src="IMG/woj.png" alt="">
        <h2>Podany login jest już zajęty 😕</h2>
    </div>   
</c:if> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rejestracja - CloudMT2</title>
        <link href="logo.png" rel="shortcut icon" type="image/png" />
        <link rel="stylesheet" href="CSS/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <meta http-equiv="refresh" content="5; URL=index.jsp">
    </head>
    <body>

    </body>
</html>
