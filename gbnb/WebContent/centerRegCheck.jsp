<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

String vTitle = (String) request.getAttribute("vTitle");
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/reset.css">
        <style>
            .tempDiv{
                text-align: center;
                margin: auto;
                width: 980px;
                /* background-color:red; */
            }
            .tempDiv h2{
                font-size: 25px;
                border-top:2px solid black;
                border-bottom:2px solid black;
                padding: 5px;
                margin: 10px 0px 30px 0px;
            }
            .tempDiv .tempTable{
                margin: 5px auto;
                border-top: 2px solid black;
                border-bottom: 2px solid black;
                width: 980px;
            }
            .tempDiv .tempTable tr td{
                padding: 5px;
                border-bottom: 1px solid black;
            }
            .tempDiv .tempTable .tempTd{
                border-right: 1px solid black;
            }
            .tempDiv .tempDiv2{
                padding: 10px;
                border: 2px solid black;
                margin: 20px auto;
                width: 960px;
            }
            .tempDiv button{
                width: 300px;
            }
        </style>
    </head>
    <html>
    <body>
        <div class="tempDiv">
        <h2>충남 반려동물 입양센터(천안) 센터 청소(주말)</h2>
        <table class="tempTable">
            <tr>
                <td class="tempTd">봉사기간</td>
                <td>2024.06.01~2024.06.30</td>
                <td class="tempTd">봉사시간</td>
                <td>09시40분~13시40분</td>
            </tr>
            <tr>
                <td class="tempTd">모집기간</td>
                <td>2024.05.20~2024.05.29</td>
                <td class="tempTd">활동요일</td>
                <td>토,일</td>
            </tr>
            <tr>
                <td class="tempTd">모집인원</td>
                <td>10명</td>
                <td class="tempTd">신청인원</td>
                <td>0명</td>
            </tr>
            <tr>
                <td class="tempTd">봉사분야</td>
                <td>산책</td>
                <td class="tempTd">봉사자유형</td>
                <td>성인</td>
            </tr>
            <tr>
                <td class="tempTd">센터명</td>
                <td colspan="3">휴먼보호센터</td>
            </tr>
            <tr>
                <td class="tempTd">봉사장소</td>
                <td colspan="3">충남 천안시 어쩌구 저쩌꾸</td>
            </tr>
            <tr>
                <td class="tempTd">첨부파일</td>
                <td colspan="3">휴먼보호센터 모집요강.hwp</td>
            </tr>
        </table>
        <div class="tempDiv2">
            모집요강 / 자격요건 / 주의사항
        </div>
        <button>수정</button>
        <button>삭제</button>
        <button>확인</button>
    </div>


<p>센터 제목: <%= vTitle %></p>
</body>
    </html>
</html>