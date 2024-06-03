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
                <td class="tempTd">����Ⱓ</td>
                <td>
                    <input class="dateLeft" type="date">
                    ~
                    <input class="dateRight" type="date">
                </td>
                <td class="tempTd">����ð�</td>
                <td>
                    <input class="dateLeft" type="time">
                    ~
                    <input class="dateRight" type="time">
                </td>
            </tr>
            <tr>
                <td class="tempTd">�����Ⱓ</td>
                <td>
                    <input class="dateLeft" type="date">
                    ~
                    <input class="dateRight" type="date">
                </td>
                <td class="tempTd">Ȱ������</td>
                <td>
                    <input type="checkbox">��
                    <input type="checkbox">ȭ
                    <input type="checkbox">��
                    <input type="checkbox">��
                    <input type="checkbox">��
                    <input type="checkbox">��
                    <input type="checkbox">��
                </td>
            </tr>
            <tr>
                <td class="tempTd">�����ο�</td>
                <td><input type="text"></td>
                <td class="tempTd">��û�ο�</td>
                <td>0��</td>
            </tr>
            <tr>
                <td class="tempTd">����о�</td>


                <td>
                    <select name="����">
                        <option value="">����</option>
                        <option value="û��/���">û��/���</option>
                        <option value="��å">��å</option>
                        <option value="���">���</option>
                        <option value="����">����</option>
                        <option value="�̿�">�̿�</option>
                        <option value="�̵�">�̵�</option>
                        <option value="�Ƿ�">�Ƿ�</option>
                    </select>
                </td>
                <td class="tempTd">����������</td>
                <td>
                    <select name="����">
                        <option value="">����</option>
                        <option value="�Ƶ�">�Ƶ�</option>
                        <option value="�л�">�л�</option>
                        <option value="����">����</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tempTd">���͸�</td>
                <td colspan="3"><input type="text"></td>
            </tr>
            <tr>
                <td class="tempTd">�������</td>
                <td colspan="3"><input type="text"></td>
            </tr>
            <tr>
                <td class="tempTd">÷������</td>
                <td colspan="3"><input type="file"></td>
            </tr>
        </table>
        <div class="tempDiv2">
            <textarea></textarea>
        </div>
        <button>���</button>
        <button>���</button>
    </div>

    </html>
</html>