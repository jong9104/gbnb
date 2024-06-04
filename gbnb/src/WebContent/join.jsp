<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입 페이지</title>
        <link rel="stylesheet" href="css/join.css">
        <script>
            function toggleSubmitButton() {
                var checkbox = document.getElementById('agree');
                var submitButton = document.getElementById('submitBtn');
                submitButton.disabled = !checkbox.checked;
            }
            function validateForm() {
            	var u_Name = document.getElementsByName("u_Name")[0].value;
            	var u_Sex = document.getElementById("u_sex").value;
                var u_Id = document.getElementById("u_Id").value;
                var u_Pwd = document.getElementsByName("u_Pwd")[0].value;
                var u_Number = document.getElementsByName("u_Number")[0].value;
                var u_Email = document.getElementsByName("u_Email")[0].value;
				
                
                if (u_Name.trim() === "") {
                    alert("이름을 입력해주세요.");
                    return false;
                }
                if (u_Birth.trim() === "") {
                    alert("생년월일을 입력해주세요.");
                    return false;
                }
                if (u_Id.trim() === "") {
                    alert("아이디를 입력해주세요.");
                    return false;
                }
                if (u_Pwd.trim() === "") {
                    alert("비밀번호를 입력해주세요.");
                    return false;
                }
                if (u_Phone.trim() === "") {
                    alert("휴대폰번호를 입력해주세요.");
                    return false;
                }
                if (u_Email.trim() === "") {
                    alert("이메일을 입력해주세요.");
                    return false;
                }
                return true;
            }
        </script>   
    </head>
    <body>
        <a href="main.html">
            <img src="logo.png" class="joinLogo">
        </a>
        <form action="join" method="post" onsubmit="return validateForm()">
        
        <input type="text" name="u_Name" placeholder="이름 *" class="joinText"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="u_Sex" value="남성" class="checkBox" checked>Male
        <input type="radio" name="u_Sex" value="여성" class="checkBox">Femal<br>
        
        <input type="date" name="u_Birth" placeholder="생년월일 *" class="joinText"><br>
        
       <!-- <form action="join" method="post"> -->
            <input type="text" name="u_Id" required class="joinId" placeholder="아이디 *">
            <!-- <input type="submit" value="중복 확인" class="IdCheck"> -->
       <!-- </form> -->
       
        <input type="password" name="u_Pwd" placeholder="비밀번호 *" class="joinText"><br>
        <input type="password" name="u_PwdConfirm" placeholder="비밀번호 확인 *" class="joinText"><br>
        <input type="text" name="u_Addr1" placeholder="주소" class="joinText"><br>
        <input type="number" name="u_Phone" placeholder="휴대폰 번호 *" class="joinText"><br>
        <input type="email" name="u_Email" placeholder="이메일 *" class="joinText"><br>
        <div class="container">
            <h1>약관 동의</h1>
            <div class="terms">
                <h2>서비스 이용 약관</h2>
                <p>
                    제 1 조 (목적)<br>
                    이 약관은 회사(전자상거래 사업자)가 운영하는 웹사이트에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어
                    사이버 몰과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                </p>
                <p>
                    제 2 조 (정의)<br>
                    ① "몰"이란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>
                    ② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                </p>
                <!-- 약관의 나머지 내용 추가 -->
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="agree" onclick="toggleSubmitButton()"> 약관에 동의합니다.
                </label>
            </div>
            <button type="submit" id="submitBtn" class="submit-btn" disabled>동의하고 가입하기</button>
        </div>
    </form>
       <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <script>alert("<%= message %>");</script>
    <%
        }
    %>
    <script>
    	function checkDuplicate() {
    		var u_Id = document.getElementsByName("u_Id")[0].value;
    		var xhr = new XMLHttpRequest();
    		xhr.open("POST","checkDuplicate",true);
    		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    		xhr.onreadystatechange = function() {
    			if(xhr.readyState == 4 && xhr.status == 200) {
    				if(xhr.responseText == "true") {
    					alert("아이디가 중복되었습니다.");
    				} else {
    					alert("사용할 수 있는 아이디입니다.");
    				}
    			}
    		};
    		xhr.send("u_Id=" + u_Id);
    	}
    </script>
    </body>
</html>