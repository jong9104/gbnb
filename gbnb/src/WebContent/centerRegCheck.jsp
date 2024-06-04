<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

String vTitle = (String) request.getAttribute("vTitle");
String vStartDate = (String) request.getAttribute("vStartDate");
String vEndDate = (String) request.getAttribute("vEndDate");
String vStartTime = (String) request.getAttribute("vStartTime");
String vLastTime = (String) request.getAttribute("vLastTime");
String vRStartDate = (String) request.getAttribute("vRStartDate");
String vREndDate = (String) request.getAttribute("vREndDate");
String vWorkingDay = (String) request.getAttribute("vWorkingDay");
int vServiceCode = (int) request.getAttribute("vServiceCode");
int vRegAmnt = (int) request.getAttribute("vRegAmnt");
String vUploadFilePath = (String) request.getAttribute("vUploadFilePath");
String vInfo = (String) request.getAttribute("vInfo");
vWorkingDay = vWorkingDay.replace("null",",");

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

    
    
    
    <form name="centerRegCheck" method="post" action="centerRegCheck" encType="UTF-8">
        <div class="tempDiv">
    <input type="hidden" name="vTitle" value=<%= vTitle %>>
    <input type="hidden" name="vStartDate" value=<%= vStartDate %>>
    <input type="hidden" name="vEndDate" value=<%= vEndDate %>>
    <input type="hidden" name="vStartTime" value=<%= vStartTime %>>
    <input type="hidden" name="vLastTime" value=<%= vLastTime %>>
    <input type="hidden" name="vRStartDate" value=<%= vRStartDate %>>
    <input type="hidden" name="vREndDate" value=<%= vREndDate %>>
    <input type="hidden" name="vWorkingDay" value=<%= vWorkingDay %>>
    <input type="hidden" name="vServiceCode" value=<%= vServiceCode %>>
    <input type="hidden" name="vRegAmnt" value=<%= vRegAmnt %>>
    <input type="hidden" name="vUploadFilePath" value=<%= vUploadFilePath %>>
    <input type="hidden" name="vInfo" value=<%= vInfo %>>
        <h2><%= vTitle %></h2>
        <table class="tempTable">
            <tr>
                <td class="tempTd">봉사기간</td>
                <td><%= vStartDate %> ~ <%= vEndDate %></td>
                <td class="tempTd">봉사시간</td>
                <td><%= vStartTime %> ~ <%= vLastTime %></td>
            </tr>
            <tr>
                <td class="tempTd">모집기간</td>
                <td><%= vRStartDate %> ~ <%= vREndDate %></td>
                <td class="tempTd">활동요일</td>
                <td><%= vWorkingDay %></td>
            </tr>
            <tr>
                <td class="tempTd">모집인원</td>
                <td><%= vRegAmnt %>명</td>
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
                <td colspan="3"><%= vUploadFilePath %></td>
            </tr>
        </table>
        <div class="tempDiv2">
            <%= vInfo %>
        </div>
        <a href ="centerReg.jsp">수정</a>
        <a href ="#">삭제</a>
        <input type="submit" value="확인">
    </div>
</form>
</body>
    </html>
</html>