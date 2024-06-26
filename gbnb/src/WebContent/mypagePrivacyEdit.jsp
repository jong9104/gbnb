<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="dc.human.gbnb.humanConnect.dto.UserDTO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HumanConnect</title>

    <link rel="stylesheet" type="text/css" href="./css/style.css">
    
</head>

<body>

<form action="privacyEdit" method="post">
<!--여기부터 아래 내용 메인-->
<div class="mypage">
    <div>개인정보수정</div><!--메뉴마다 수정-->
    <div class="mypagePrivacyEdit">
        <div>
            <div>
                <table>
                    <tr>
                        <td>성명</td>
                        <td><c:out value="${user.name}"/></td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td>                        	
                        	<label name="u_id" value="${user.userId}">${user.userId}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="text" name="u_pwd"></td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인</td>
                        <td><input type="text" name="u_pwdCheck"></td>
                    </tr>
                    <tr>
                        <td rowspan="2">주소</td> <!--이거 확인해보기 표 보더 만들어서-->
                    </tr>
                    <tr>                        
                        <td>상세주소. 표 확인해보기</td>
                    <tr>
                        <td>상세주소DB</td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" name="u_email"></td>
                    </tr>
                    <tr>
                        <td>전화번호</td>
                        <td><input type="text" name="u_phone"></td>
                    </tr>
                </table>
            </div>
            <div><input type="button" value="탈퇴" name="action"></div>
            <div><input type="submit" value="확인" name="action"></div>
        </div>
        
    </div>
</div>
</form>
</body>
</html>