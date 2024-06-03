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
            <img src="../img/logo.png" width="750px" alt="�ΰ�">
            <button id="indexLogin">�α���</button>
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
                currentRadius += (targetRadius - currentRadius) * 0.2; // ���� �ӵ��� ����
                colorBg.style.clipPath = `circle(${currentRadius}px at ${mouseX}px ${mouseY}px)`;                
                requestAnimationFrame(updateClipPath);
            };

            document.addEventListener('mousemove', (event) => {
                mouseX = event.clientX;
                mouseY = event.clientY;

                // ���� ��ġ �̵�
                indexCircle.style.left = `${mouseX - indexCircle.offsetWidth / 2}px`;
                indexCircle.style.top = `${mouseY - indexCircle.offsetHeight / 2}px`;

                // �÷� ����� Ŭ�� ��� ����
                const triggerRect = triggerArea.getBoundingClientRect();
                const cursorInTriggerArea = (
                    mouseX > triggerRect.left &&
                    mouseX < triggerRect.right &&
                    mouseY > triggerRect.top &&
                    mouseY < triggerRect.bottom
                );

                if (cursorInTriggerArea) {
                    targetRadius = 200; // ū ���� �ݰ��� ����
                } else {
                    targetRadius = 30; // ���� ���� �ݰ�
                }
            });

            requestAnimationFrame(updateClipPath); // �ִϸ��̼� ����

            indexLogin.addEventListener('click', () => {
                let expandRadius = 30;
                const expandClipPath = () => {
                    expandRadius += 15; // ���� �ݰ� ���� �ӵ�
                    colorBg.style.clipPath = `circle(${expandRadius}px at ${mouseX}px ${mouseY}px)`;
                    if (expandRadius < Math.max(window.innerWidth, window.innerHeight) * 1) {
                        requestAnimationFrame(expandClipPath);
                    } else {
                        window.location.href = "login.html"; // �α��� ȭ�� URL�� �̵�
                    }
                };
                expandClipPath();
            });
        });
    </script>
</body>
</html>