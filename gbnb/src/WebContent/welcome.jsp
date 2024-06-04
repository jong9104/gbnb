<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h1>Welcome, <c:out value="${sessionScope.user.userId}"/>!</h1>
    <form action="logout" method="post">
        <button type="submit">Logout</button>
    </form>
    <br>
    <form action="mypagePrivacyCheck" method="get">
        <button type="submit">개인정보 수정</button>
    </form>
</body>
</html>