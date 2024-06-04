<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userBookList</title>
</head>
<body>
	<form method="post" action="bookList">
		<input type="submit" value="submit">
	</form>
	<h1>예약 내역</h1>
	<ul>
		<c:forEach items="${bookList}" var="book">
			<div>
				<li>
					예약한 식당 : ${book.restaurant_name } <br>
					예약 날짜 : ${book.date } <br>
					예약 시간 : ${book.time } <br>
					예약 상태 : ${book.status } <br>
					예약 인원 수 : ${book.a_count + book.k_count } 명 <br>
					유모차 사용 : ${book.s_count } 개<br>
					휠체어 사용 : ${book.w_count } 개<br>
					요청 사항 : ${book.requirement } <br>
				</li>
			</div>
		</c:forEach>
	</ul>
</body>
</html>