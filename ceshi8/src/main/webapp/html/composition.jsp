<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-组稿</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/jquery.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/layer/2.3/layer.js"></script>
</head>
<body>
	<div class="composition">
		<p class="head">衡水金卷原创试题组稿</p>
		<p class="banner"></p>
		<div class="main wrapper">
			<form id="groupsubmit" action="/groupDraft" method="post">
			<section>
				<p class="title"><span>*</span> 1.科目</p>
				<input type="text" class="js-1" name="subject">
			</section>
			<section>
				<p class="title"><span>*</span> 2.应用轮次<span>（一轮、二轮或同步）</span></p>
				<input type="text" class="js-2" name="application_round">
			</section>
			<section>
				<p class="title"><span>*</span> 3.应用章节<span>（一轮、二轮或同步）</span></p>
				<input type="text" class="js-3" name="application_chapter">
			</section>
			<section>
				<p class="title"><span>*</span> 4.适用省份</p>
				<input type="text" class="js-4" name="province">
			</section>
			<section>
				<p class="title"><span>*</span> 5.教材版本</p>
				<input type="text" class="js-5" name="textbook_version">
			</section>
			<section class="uploadWord">
				<p class="title"><span>*</span> 试题内容<span>（含答案及详细解析，可根据试题内容调整表格大小）</span></p>
				<div class="up">
					<p>请上传word文档</p>
					<input type="file" name="word_path" id="wordPath">
				</div>
				<input type="text" readonly="readonly">
			</section>
			<button class="idsubmit">提交信息</button>
			</form>
		</div>
		<p style="height: 0.43rem;"></p>
		<div class="footer">
			<div class="item item00" onclick="location.href='/html/feedback.jsp'">
				<p class="img"></p>
				<span>反馈</span>
			</div>
			<div class="item item11 item1 itemCur" onclick="location.href='/html/composition.jsp'">
				<p class="img"></p>
				<span class="colorCur">组稿</span>
			</div>
			<div class="item item22" onclick="location.href='/html/user.jsp'">
				<p class="img"></p>
				<span>我的</span>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	var xhr;
	$(document).on('change','.up>input', function( e ){
        //e.currentTarget.files 是一个数组，如果支持多个文件，则需要遍历
        var name = e.currentTarget.files[0].name;
        $('.uploadWord>input').val(name);

		var forData = new FormData();
		forData.append("file", $("#wordPath")[0].files[0]);
		//1.创建XMLHttpRequest组建
		xhr = new XMLHttpRequest();
		//2.设置回调函数
		xhr.onreadystatechange = zswFun;
		//3.初始化XMLHttpRequest组建
		xhr.open("post", "/springUpload", true);
		var getbu = xhr.responseText;
		xhr.onload = function () {
			alert("上传完成!"+getbu);
		};
		//4.发送请求
		xhr.send(forData);
    });

	//回调函数
	function zswFun(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var b = xhr.responseText;
			alert(b)
			if(b == "true"){
				alert("登录成功！");
			}else{
				alert("登录失败！");
			}
		}
	}

	//表单验证
    $('.idsubmit').click(function(){
    	if(!$('.js-1').val()){
			alert('请输入科目');
    	}else if(!$('.js-2').val()){
			alert('请输入应用轮次');
    	}else if(!$('.js-3').val()){
			alert('请输入应用章节');
    	}else if(!$('.js-4').val()){
			alert('请输入适用省份');
    	}else if(!$('.js-5').val()){
			alert('请输入教材版本');
    	}else if(!$('.uploadWord>input').val()){
			alert('未上传文档');
    	}else{
    		//提交
    		//跳成功页
			// $('#groupsubmit').submit();
    	}
    })
</script>