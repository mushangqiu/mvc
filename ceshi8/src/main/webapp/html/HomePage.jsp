<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <script src="../js/jquery.js"></script>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div style="padding-left: 40%; margin-top:300px">
    <button class="button1" style="height:50px;width: 100px;background-color: #4aaf51;border-radius:5px;">前台</button>
    <button class="button2" style="margin-left:10%;height:50px;width: 100px;;border-radius:5px;">
        后台
    </button>
</div>
</body>
</html>
<script>
    $('.button1').click(function () {
        window.location.href = 'html/composition.jsp';
    })
    $('.button2').click(function () {
        window.location.href = 'backOffice';
    })
</script>