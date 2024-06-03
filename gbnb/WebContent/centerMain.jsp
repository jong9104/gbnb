<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html class="centerHtml" lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���� ����</title>
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
            <h2>������û����</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>���̵�</th>
                            <th>�̸�</th>
                            <th>��ȭ��ȣ</th>
                            <th>����</th>
                            <th>�󼼳��뺸��</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty RecruitmentList}">
                                <tr>
                                    <td colspan="5" class="centerNoData">ǥ���� �����Ͱ� �����ϴ�</td>
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
                                                        <button type="submit">����</button>
                                                    </form>
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${dto.id}">
                                                        <input type="hidden" name="action" value="reject">
                                                        <button type="button" onclick="showRejectReason('${dto.id}')">����</button>
                                                    </form>
                                                    <div id="reject-reason-${dto.userId}" style="display:none;">
                                                        <form method="post">
                                                            <input type="hidden" name="userId" value="${dto.id}">
                                                            <input type="hidden" name="action" value="reject">
                                                            <input type="text" name="rejectReason" placeholder="���� ������ �Է��ϼ���" />
                                                            <button type="submit">���</button>
                                                            <button type="button" onclick="hideRejectReason('${dto.id}')">���</button>
                                                        </form>
                                                    </div>
                                                </c:when>
                                                <c:when test="${application.status == 'approved'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${dto.id}">
                                                        <input type="hidden" name="action" value="complete">
                                                        <button type="submit">����Ϸ�</button>
                                                    </form>
                                                </c:when>
                                                <c:when test="${application.status == 'rejected'}">
                                                    <div>������: ${dto.rejectReason}</div>
                                                </c:when>
                                                <c:when test="${application.status == 'completed'}">
                                                    <div>����Ϸ�</div>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <form method="get" action="RecruitmentMain.jsp">
                                                <input type="hidden" name="userId" value="${dto.id}">
                                                <button type="submit">�󼼳��뺸��</button>
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
	                <form name="viewall" method="post" action="�����������Ʈ" encType="utf-8">
	                    <button type="submit" class="centerlistViewAll">��ü����&gt;</button>
	                </form>
	            </div>
            </div>
            <form name="recruitmentRegister" method="post" action="centerReg.jsp" encType="utf-8">
                <button type="submit" class="centerMainRegisterButton">�� ��</button>
            </form>
        </section>

        <section class="centerSection">
            <h2>�����û����</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>���̵�</th>
                            <th>�̸�</th>
                            <th>��ȭ��ȣ</th>
                            <th>����</th>
                            <th>�󼼳��뺸��</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty volunteerApplications}">
                                <tr>
                                    <td colspan="5" class="centerNoData">ǥ���� �����Ͱ� �����ϴ�</td>
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
                                                        <button type="submit">����</button>
                                                    </form>
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${application.userId}">
                                                        <input type="hidden" name="action" value="reject">
                                                        <button type="button" onclick="showRejectReason('${application.userId}')">����</button>
                                                    </form>
                                                    <div id="reject-reason-${application.userId}" style="display:none;">
                                                        <form method="post">
                                                            <input type="hidden" name="userId" value="${application.userId}">
                                                            <input type="hidden" name="action" value="reject">
                                                            <input type="text" name="rejectReason" placeholder="���� ������ �Է��ϼ���" />
                                                            <button type="submit">���</button>
                                                            <button type="button" onclick="hideRejectReason('${application.userId}')">���</button>
                                                        </form>
                                                    </div>
                                                </c:when>
                                                <c:when test="${application.status == 'approved'}">
                                                    <form method="post">
                                                        <input type="hidden" name="userId" value="${application.userId}">
                                                        <input type="hidden" name="action" value="complete">
                                                        <button type="submit">����Ϸ�</button>
                                                    </form>
                                                </c:when>
                                                <c:when test="${application.status == 'rejected'}">
                                                    <div>������: ${application.rejectReason}</div>
                                                </c:when>
                                                <c:when test="${application.status == 'completed'}">
                                                    <div>����Ϸ�</div>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <form method="get" action="VolunteerMain.jsp">
                                                <input type="hidden" name="userId" value="${application.userId}">
                                                <button type="submit">�󼼳��뺸��</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
                <div class="centerlistViewAllCont">
                    <form name="viewall" method="post" action="�����������Ʈ" encType="utf-8">
                        <button type="submit" class="centerlistViewAll">��ü����&gt;</button>
                    </form>
                </div>
            </div>
        </section>

        <section class="centerSection">
            <h2>�Ծ����û����</h2>
            <div class="centerBox">
                <table>
                    <thead>
                        <tr>
                            <th>���̵�</th>
                            <th>�̸�</th>
                            <th>��ȭ��ȣ</th>
                            <th>�󼼳��뺸��</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${empty adoptionApplications}">
                                <tr>
                                    <td colspan="4" class="centerNoData">ǥ���� �����Ͱ� �����ϴ�</td>
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
                                                <button type="submit">�󼼳��뺸��</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>                
                <div class="centerlistViewAllCont">
                    <form name="viewall" method="post" action="�����������Ʈ" encType="utf-8">
                        <button type="submit" class="centerlistViewAll">��ü����&gt;</button>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
</html>