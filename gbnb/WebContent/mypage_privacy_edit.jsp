<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HumanConnect</title>
    <link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" type="text/css" href="../css/nevi.css">
    <link rel="stylesheet" type="text/css" href="../css/mypage.css">
    
</head>

<body>

<form action="mypage_privacy_edit" method="post">
<!--여기부터 아래 내용 메인-->
<div class="mypage">
    <div>개인정보수정</div><!--메뉴마다 수정-->
    <div class="mypagePrivacyEdit">
        <div>
            <div>
                <table>
                    <tr>
                        <td>성명</td>
                        <td><input type="text" name="u_name"></td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td><input type="text" name="u_id"></td>
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
                        <td>주소</td>
                        
                    </tr>
                    <tr>
                        
                        <td>상세주소. 표 확인해보기</td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" name="u_email"></td>
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