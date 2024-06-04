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

	<div class="mypage">
	    <div>개인정보확인</div><!--메뉴마다 수정-->
	    <div class="mypagePrivacyCheck">
	        <div>
	            <div>
	                <table>
	                    <tr>
	                        <td>성명</td>
	                        <td><c:out value="${user.name}"/></td>
	                    </tr>
	                    <tr>
	                        <td>아이디</td>
	                        <td><c:out value="${user.userId}"/></td>
	                    </tr>
	                    <tr>
	                        <td>비밀번호</td>
	                        <td></td>
	                    </tr>
	                    <tr>
	                        <td>비밀번호 확인</td>
	                        <td></td>
	                    </tr>
	                    <tr>
	                       <td rowspan="2">주소</td> 
                           <td><c:out value="${user.addr}"/></td>
	                    </tr>
	                    <tr>
	                         <td>상세주소. 표 확인해보기</td>
	                    </tr>
	                    <tr>
	                       <td>이메일</td>
                           <td>${user.email}</td>
	                    </tr>
	                     <tr>
                            <td>전화번호</td>
                            <td><c:out value="${user.phone}"/></td>
                        </tr>
	                </table>
	            </div>
	            
	            <div> 
	            <form action="mypagePrivacyEdit.jsp" method="post">
                	<div>                    
                    	<input type="submit" value="냥냥">
               		</div>
            </form></div>
	        </div>
	        
	    </div>
	</div>

</body>
</html>