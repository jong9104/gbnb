<%@ page contentType="text/html;charset=UTF-8" language="java" 
	import="java.util.*"
	pageEncoding="UTF-8"
	isELIgnored="false"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Volunteer List</title>
</head>
<body>
<h1>Volunteer List</h1>
<table border="1">
    <tr>
        <th>U_ID</th>
        <th>V_TITLE</th>
        <th>V_START_DATE</th>
        <th>V_END_DATE</th>
        <th>V_START_TIME</th>
        <th>V_LAST_TIME</th>
        <th>V_RSTART_DATE</th>
        <th>V_REND_DATE</th>
        <th>V_WORKING_DAY</th>
        <th>SERVICE_CODE</th>
        <th>V_MAX_AMNT</th>
        <th>V_REG_AMNT</th>
        <th>V_STATE</th>
        <th>V_UPLOAD_FILE_PATH</th>
        <th>V_INFO</th>
        <th>CREATED_DATE</th>
        <th>CREATED_ID</th>
        <th>UPDATED_DATE</th>
        <th>UPDATED_ID</th>
    </tr>
<c:forEach var="volunteer" items="${volunteerList}">
    <tr>
        <td>${volunteer.u_id}</td>
        <td>${volunteer.v_title}</td>
        <td>${volunteer.v_start_date}</td>
        <td>${volunteer.v_end_date}</td>
        <td>${volunteer.v_start_time}</td>
        <td>${volunteer.v_last_time}</td>
        <td>${volunteer.v_rStart_date}</td>
        <td>${volunteer.v_rend_date}</td>
        <td>${volunteer.v_working_day}</td>
        <td>${volunteer.service_Code}</td>
        <td>${volunteer.v_Max_Amnt}</td>
        <td>${volunteer.v_Reg_Amnt}</td>
        <td>${volunteer.v_State}</td>
        <td>${volunteer.v_Upload_File_Path}</td>
        <td>${volunteer.v_Info}</td>
        <td>${volunteer.created_Date}</td>
        <td>${volunteer.created_Id}</td>
        <td>${volunteer.updated_Date}</td>
        <td>${volunteer.updated_Id}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
