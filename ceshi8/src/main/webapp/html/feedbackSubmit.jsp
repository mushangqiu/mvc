<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-反馈-成功</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/jquery.js"></script>
</head>
<body>
	<div class="feedbackSubmit wrapper">
		<img src="../img/success.png" alt="">
		<p class="title">反馈提交成功</p>
		<p class="tips">感谢您的反馈建议，好的反馈建议将有一次抽奖机会，稍后有客服人员与您联系。</p>
		<p class="tips2">如有组稿意向，请点击下方“按钮”</p>
		<button>我要投稿</button>
	</div>
</body>
</html>
<script>
	$('button').click(function(){
		window.location.href='user.html';
	})
</script>