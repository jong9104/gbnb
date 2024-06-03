<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        <div class="tempDiv">
        <h2><input type="text"></h2>
        <table class="tempTable">
            <tr>
                <td class="tempTd">봉사기간</td>
                <td>
                    <input class="dateLeft" type="date">
                    ~
                    <input class="dateRight" type="date">
                </td>
                <td class="tempTd">봉사시간</td>
                <td>
                    <input class="dateLeft" type="time">
                    ~
                    <input class="dateRight" type="time">
                </td>
            </tr>
            <tr>
                <td class="tempTd">모집기간</td>
                <td>
                    <input class="dateLeft" type="date">
                    ~
                    <input class="dateRight" type="date">
                </td>
                <td class="tempTd">활동요일</td>
                <td>
                    <input type="checkbox">월
                    <input type="checkbox">화
                    <input type="checkbox">수
                    <input type="checkbox">목
                    <input type="checkbox">금
                    <input type="checkbox">토
                    <input type="checkbox">일
                </td>
            </tr>
            <tr>
                <td class="tempTd">모집인원</td>
                <td><input type="text"></td>
                <td class="tempTd">신청인원</td>
                <td>0명</td>
            </tr>
            <tr>
                <td class="tempTd">봉사분야</td>


                <td>
                    <select name="구분">
                        <option value="">선택</option>
                        <option value="청소/배식">청소/배식</option>
                        <option value="산책">산책</option>
                        <option value="목욕">목욕</option>
                        <option value="사진">사진</option>
                        <option value="미용">미용</option>
                        <option value="이동">이동</option>
                        <option value="의료">의료</option>
                    </select>
                </td>
                <td class="tempTd">봉사자유형</td>
                <td>
                    <select name="구분">
                        <option value="">선택</option>
                        <option value="아동">아동</option>
                        <option value="학생">학생</option>
                        <option value="성인">성인</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tempTd">센터명</td>
                <td colspan="3"><input type="text"></td>
            </tr>
            <tr>
                <td class="tempTd">봉사장소</td>
                <td colspan="3"><input type="text"></td>
            </tr>
            <tr>
                <td class="tempTd">첨부파일</td>
                <td colspan="3"><input type="file"></td>
            </tr>
        </table>
        <div class="tempDiv2">
            <textarea></textarea>
        </div>
        <button>등록</button>
        <button>취소</button>
    </div>

    </html>
</html>