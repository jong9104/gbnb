<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <link rel="stylesheet" type="text/css" href="../css/style.css">
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
            .dateLeft{
                border: none;
                background-color: rgb(252,236,203);
                font-size: 14px;
                margin-left: -50px;
            }
            .dateRight{
                border: none;
                background-color: rgb(252,236,203);
                font-size: 14px;
                margin-right: -50px;
            }


        </style>
    </head>
    <html>
	    <body>
		    <form name="frmLogin" method="post" action="centerReg" encType="multipart/form-data">
		        <div class="tempDiv">
		        <h2><input type="text" name="vTitle"></h2>
		        <table class="tempTable">
		            <tr>
		                <td class="tempTd">봉사기간</td>
		                <td>
		                    <input class="dateLeft" type="date" name="vStartDate">
		                    ~
		                    <input class="dateRight" type="date" name="vEndDate">
		                </td>
		                <td class="tempTd">봉사시간</td>
		                <td>
		                    <input class="dateLeft" type="time" name="vStartTime">
		                    ~
		                    <input class="dateRight" type="time" name="vLastTime">
		                </td>
		            </tr>
		            <tr>
		                <td class="tempTd">모집기간</td>
		                <td>
		                    <input class="dateLeft" type="date" name="vRStartDate">
		                    ~
		                    <input class="dateRight" type="date" name="vREndDate">
		                </td>
		                <td class="tempTd">활동요일</td>
		                <td>
		                    <input type="checkbox" name="vWorkingDay1" value="월">월
		                    <input type="checkbox" name="vWorkingDay2" value="화">화
		                    <input type="checkbox" name="vWorkingDay3" value="수">수
		                    <input type="checkbox" name="vWorkingDay4" value="목">목
		                    <input type="checkbox" name="vWorkingDay5" value="금">금
		                    <input type="checkbox" name="vWorkingDay6" value="토">토
		                    <input type="checkbox" name="vWorkingDay7" value="일">일

		                </td>
		            </tr>
		            <tr>
		                <td class="tempTd">모집인원</td>
		                <td><input type="text" name="vRegAmnt"></td>
		                <td class="tempTd">봉사분야</td>
		                <td>
		                <select  name="vServiceCode">
		                        <option value="">선택</option>
		                        <option value="1">청소/배식</option>
		                        <option value="2">산책</option>
		                        <option value="3">목욕</option>
		                        <option value="4">사진</option>
		                        <option value="5">미용</option>
		                        <option value="6">이동</option>
		                        <option value="7">의료</option>
		                    </select>
		                </td>
		            </tr>
		            <tr>
		               <td class="tempTd">센터명</td>
		                <td>
		                    센터명
		                </td>
		                <td class="tempTd">봉사장소</td>
		                <td>
		                    봉사장소
		                </td>
		            </tr>
		            <tr>
		                <td class="tempTd">첨부파일</td>
		                <td colspan="3"><input type="file" name="vUploadFilePath"></td>
		            </tr>
		        </table>
		        <div class="tempDiv2">
		            <textarea name="vInfo"></textarea>
		        </div>
		        <input type="submit" value="등록">
		        <button>취소</button>
		    </div>
		    </form>
		</body>
    </html>
</html>