<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-我的--修改信息</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/common.js"></script>
	<script src="../js/jquery.js"></script>
</head>
<body>
	<div class="user4">
		<p class="head">修改信息</p>
		<div class="main">
			<p class="border"></p>
			<div class="wrapper">
				<input type="text">
				<img src="../img/d.png" alt="">
			</div>
			<button class="wrapper">保存修改</button>
		</div>
	</div>
</body>
</html>
<script>
	$('input').val(getRequest().name);
	$('img').click(function(){
		$('input').val('');
	})

	//点击 保存修改
	$('button').click(function(){
		//保存提交
	})
</script>