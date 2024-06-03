<%@ page language="java" contentType="text/html; charset=EUC-KR"
	import="css.*"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Human Connect</title>
</head>
<body class="indexBody">
    <div class="indexBg" id="colorBg"></div>
    <div class="indexCircle" id="indexCircle"></div>
    <div class="indexChange" id="indexChange">
        <span>
            <img src="../img/logo.png" width="750px" alt="로고">
            <button id="indexLogin">로그인</button>
        </span>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const colorBg = document.getElementById('colorBg');
            const indexCircle = document.getElementById('indexCircle');
            const triggerArea = document.getElementById('indexChange');
            const indexLogin = document.getElementById('indexLogin');
            let targetRadius = 30;
            let currentRadius = 30;
            let mouseX = 0;
            let mouseY = 0;            

            const updateClipPath = () => {                
                currentRadius += (targetRadius - currentRadius) * 0.2; // 보간 속도를 증가
                colorBg.style.clipPath = `circle(${currentRadius}px at ${mouseX}px ${mouseY}px)`;                
                requestAnimationFrame(updateClipPath);
            };

            document.addEventListener('mousemove', (event) => {
                mouseX = event.clientX;
                mouseY = event.clientY;

                // 원의 위치 이동
                indexCircle.style.left = `${mouseX - indexCircle.offsetWidth / 2}px`;
                indexCircle.style.top = `${mouseY - indexCircle.offsetHeight / 2}px`;

                // 컬러 배경의 클립 경로 설정
                const triggerRect = triggerArea.getBoundingClientRect();
                const cursorInTriggerArea = (
                    mouseX > triggerRect.left &&
                    mouseX < triggerRect.right &&
                    mouseY > triggerRect.top &&
                    mouseY < triggerRect.bottom
                );

                if (cursorInTriggerArea) {
                    targetRadius = 200; // 큰 원의 반경을 줄임
                } else {
                    targetRadius = 30; // 작은 원의 반경
                }
            });

            requestAnimationFrame(updateClipPath); // 애니메이션 시작

            indexLogin.addEventListener('click', () => {
                let expandRadius = 30;
                const expandClipPath = () => {
                    expandRadius += 15; // 원의 반경 증가 속도
                    colorBg.style.clipPath = `circle(${expandRadius}px at ${mouseX}px ${mouseY}px)`;
                    if (expandRadius < Math.max(window.innerWidth, window.innerHeight) * 1) {
                        requestAnimationFrame(expandClipPath);
                    } else {
                        window.location.href = "login.html"; // 로그인 화면 URL로 이동
                    }
                };
                expandClipPath();
            });
        });
    </script>
</body>
</html>