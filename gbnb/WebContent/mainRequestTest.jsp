<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Main Request Test</title>
</head>
<body>
  <c:forEach var="title" items="${volList}" begin="0" end="3">
  
  <table>
  <tr>
  <td>${title}</td>
  </tr>
   <tr>
  	<td>냑냑</td>
  </tr>
  </table>     
    
    </c:forEach>
</body>
</html>