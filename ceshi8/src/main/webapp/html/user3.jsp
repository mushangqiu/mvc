<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-我的--基本信息</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/jquery.js"></script>
</head>
<body>
	<div class="user3">
		<p class="head">基本信息</p>
		<div class="main">
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">姓名</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">性别</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">年龄</span>
				<span class="span2">张青青2</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">职称</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">QQ</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">毕业学校</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">通信地址</span>
				<span class="span2">张青青5</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">邮编</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">银行卡号</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
			<p class="border"></p>
			<div class="wrapper" onclick="go(this)">
				<span class="span1">开户行名字</span>
				<span class="span2">张青青</span>
				<p></p>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	function go(obj){
		var val=$(obj).children('.span2').html();
		location.href='user4.html?name='+val;
	}
</script>