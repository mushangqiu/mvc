<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-我的</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/layer/2.3/layer.js"></script>
</head>
<body>
	<div class="userTable">
		<p class="head">衡水金卷原创试题约稿函</p>
		<p class="banner"></p>
		<div class="main wrapper">
			<section>
				<p class="title"><span>*</span> 1.姓名</p>
				<input type="text" class="js-1">
			</section>
			<section>
				<p class="title"><span>*</span> 2.性别</p>
				<input type="text" class="js-2">
			</section>
			<section>
				<p class="title"><span>*</span> 3.年龄</p>
				<input type="text" class="js-3">
			</section>
			<section>
				<p class="title"><span>*</span> 4.职称</p>
				<input type="text" class="js-4">
			</section>
			<section>
				<p class="title"><span>*</span> 5.电话</p>
				<input type="text" class="js-5" maxlength="11">
			</section>
			<section>
				<p class="title"><span>*</span> 6.QQ</p>
				<input type="text" class="js-6">
			</section>
			<section>
				<p class="title"><span>*</span> 7.毕业学校</p>
				<input type="text" class="js-7">
			</section>
			<section>
				<p class="title"><span>*</span> 8.通信地址</p>
				<input type="text" class="js-8">
			</section>
			<section>
				<p class="title"><span>*</span> 9.邮编</p>
				<input type="text" class="js-9">
			</section>
			<section>
				<p class="title"><span>*</span> 10.银行卡号<span>（结算稿费用）</span></p>
				<input type="text" class="js-10">
			</section>
			<section>
				<p class="title"><span>*</span> 11.开户行名称</p>
				<input type="text" class="js-11">
			</section>
			<button class="submit">提交信息</button>
		</div>
		<p style="height: 0.43rem;"></p>
		<div class="footer">
			<div class="item item00" onclick="location.href='feedback.html'">
				<p class="img"></p>
				<span>反馈</span>
			</div>
			<div class="item item11" onclick="location.href='composition.html'">
				<p class="img"></p>
				<span>组稿</span>
			</div>
			<div class="item item22 item2 itemCur" onclick="location.href='user.html'">
				<p class="img"></p>
				<span class="colorCur">我的</span>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	//表单验证
	$('.submit').click(function(){
		if(!$('.js-1').val()){
			layer.msg('请输入姓名');
		}else if(!$('.js-2').val()){
			layer.msg('请输入姓别');
		}else if(!$('.js-3').val()){
			layer.msg('请输入年龄');
		}else if(!$('.js-4').val()){
			layer.msg('请输入职称');
		}else if(!$('.js-5').val()){
			layer.msg('请输入电话');
		}else if(!$('.js-6').val()){
			layer.msg('请输入QQ');
		}else if(!$('.js-7').val()){
			layer.msg('请输入毕业学校');
		}else if(!$('.js-8').val()){
			layer.msg('请输入通信地址');
		}else if(!$('.js-9').val()){
			layer.msg('请输入邮编');
		}else if(!$('.js-10').val()){
			layer.msg('请输入银行卡号');
		}else if(!$('.js-11').val()){
			layer.msg('请输入开户行名称');
		}else{
			//提交
		}
	})
</script>