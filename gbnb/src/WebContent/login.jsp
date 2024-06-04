<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <form action="login" method="post">
        <div>
            <label for="userId">아이디</label>
            <input type="text" id="userId" name="userId" required>
        </div>
        <div>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <button type="submit">로그인</button>
        </div>
        <c:if test="${param.error != null}">
            <div style="color: red;">Invalid userId or password</div>
        </c:if>
    </form>
</body>
</html>