<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html class="centerHtml" lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>센터 메인</title>
    <link rel="stylesheet" href="./css/style.css">
    <script>
        function showRejectReason(id) {
            document.getElementById('reject-reason-' + id).style.display = 'block';
        }

        function hideRejectReason(id) {
            document.getElementById('reject-reason-' + id).style.display = 'none';
        }
    </script>
</head>
<body class="centerBody">
    <main class="centerMain">
        <section class="centerSection">
            <h2>모집신청내역</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>상태</th>
                            <th>상세내용보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty RecruitmentList}">
                                <tr>
                                    <td colspan="5" class="centerNoData">표시할 데이터가 없습니다</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="dto" items="${RecruitmentList}">
                                    <tr>
                                        <td>${dto.id}</td>
                                        <td>${dto.name}</td>
                                        <td>${dto.phone}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${dto.status == 'pending'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${dto.id}">
                                                        <input type="hidden" name="action" value="approve">
                                                        <button type="submit">승인</button>
                                                    </form>
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${dto.id}">
                                                        <input type="hidden" name="action" value="reject">
                                                        <button type="button" onclick="showRejectReason('${dto.id}')">거절</button>
                                                    </form>
                                                    <div id="reject-reason-${dto.userId}" style="display:none;">
                                                        <form method="post">
                                                            <input type="hidden" name="userId" value="${dto.id}">
                                                            <input type="hidden" name="action" value="reject">
                                                            <input type="text" name="rejectReason" placeholder="거절 사유를 입력하세요" />
                                                            <button type="submit">등록</button>
                                                            <button type="button" onclick="hideRejectReason('${dto.id}')">취소</button>
                                                        </form>
                                                    </div>
                                                </c:when>
                                                <c:when test="${application.status == 'approved'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${dto.id}">
                                                        <input type="hidden" name="action" value="complete">
                                                        <button type="submit">봉사완료</button>
                                                    </form>
                                                </c:when>
                                                <c:when test="${application.status == 'rejected'}">
                                                    <div>거절됨: ${dto.rejectReason}</div>
                                                </c:when>
                                                <c:when test="${application.status == 'completed'}">
                                                    <div>봉사완료</div>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <form method="get" action="RecruitmentMain.jsp">
                                                <input type="hidden" name="userId" value="${dto.id}">
                                                <button type="submit">상세내용보기</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>                                
            </div>
	            <div class="centerlistViewAllCont">
	                <form name="viewall" method="post" action="봉사모집리스트" encType="utf-8">
	                    <button type="submit" class="centerlistViewAll">전체보기&gt;</button>
	                </form>
	            </div>
            </div>
            <form name="recruitmentRegister" method="post" action="centerReg.jsp" encType="utf-8">
                <button type="submit" class="centerMainRegisterButton">등 록</button>
            </form>
        </section>

        <section class="centerSection">
            <h2>봉사신청내역</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>상태</th>
                            <th>상세내용보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty volunteerApplications}">
                                <tr>
                                    <td colspan="5" class="centerNoData">표시할 데이터가 없습니다</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="application" items="${volunteerApplications}">
                                    <tr>
                                        <td>${application.userId}</td>
                                        <td>${application.name}</td>
                                        <td>${application.phone}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${application.status == 'pending'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${application.userId}">
                                                        <input type="hidden" name="action" value="approve">
                                                        <button type="submit">승인</button>
                                                    </form>
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${application.userId}">
                                                        <input type="hidden" name="action" value="reject">
                                                        <button type="button" onclick="showRejectReason('${application.userId}')">거절</button>
                                                    </form>
                                                    <div id="reject-reason-${application.userId}" style="display:none;">
                                                        <form method="post">
                                                            <input type="hidden" name="userId" value="${application.userId}">
                                                            <input type="hidden" name="action" value="reject">
                                                            <input type="text" name="rejectReason" placeholder="거절 사유를 입력하세요" />
                                                            <button type="submit">등록</button>
                                                            <button type="button" onclick="hideRejectReason('${application.userId}')">취소</button>
                                                        </form>
                                                    </div>
                                                </c:when>
                                                <c:when test="${application.status == 'approved'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${application.userId}">
                                                        <input type="hidden" name="action" value="complete">
                                                        <button type="submit">봉사완료</button>
                                                    </form>
                                                </c:when>
                                                <c:when test="${application.status == 'rejected'}">
                                                    <div>거절됨: ${application.rejectReason}</div>
                                                </c:when>
                                                <c:when test="${application.status == 'completed'}">
                                                    <div>봉사완료</div>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <form method="get" action="VolunteerMain.jsp">
                                                <input type="hidden" name="userId" value="${application.userId}">
                                                <button type="submit">상세내용보기</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
                <div class="centerlistViewAllCont">
                    <form name="viewall" method="post" action="봉사모집리스트" encType="utf-8">
                        <button type="submit" class="centerlistViewAll">전체보기&gt;</button>
                    </form>
                </div>
            </div>
        </section>

        <section class="centerSection">
            <h2>입양상담신청내역</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>상세내용보기</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty adoptionApplications}">
                                <tr>
                                    <td colspan="4" class="centerNoData">표시할 데이터가 없습니다</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="application" items="${adoptionApplications}">
                                    <tr>
                                        <td>${application.userId}</td>
                                        <td>${application.name}</td>
                                        <td>${application.phone}</td>
                                        <td>
                                            <form method="get" action="AdoptionMain.jsp">
                                                <input type="hidden" name="userId" value="${application.userId}">
                                                <button type="submit">상세내용보기</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>                
                <div class="centerlistViewAllCont">
                    <form name="viewall" method="post" action="봉사모집리스트" encType="utf-8">
                        <button type="submit" class="centerlistViewAll">전체보기&gt;</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
</html>