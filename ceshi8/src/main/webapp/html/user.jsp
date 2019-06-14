<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>衡水金卷-我的-注册</title>
	<link rel="stylesheet" href="../css/main.css">
	<script src="../js/rem.js"></script>
	<script src="../js/jquery.js"></script>
</head>
<body>
	<div class="userRegister">
		<p class="head">衡水金卷原创试题约稿函</p>
		<p class="banner"></p>
		<div class="main">
			<div class="con wrapper">
				尊敬的老师，您好：
				<p>《衡水金卷·先享题》系列为适应新高考课改的要求，密切与全国各地一线优秀教师的联系，推动《衡水金卷·先享题》系列教辅产品精品化、知名化，形成品牌，贴近各地高考，现在全国范围内诚聘原创试题组稿老师，欢迎您的参与，现将部分事项告知如下：</p>
				<p> 一、参与对象与条件</p>
				<p>1、全国各地高中一线教师，有高三毕业班教学经验，作风严谨，责任心强。</p>
				<p>2、全国各省、市教科所高中教研员。</p>
				<p>二、工作内容</p>
				<p>1、参与《衡水金卷·先享题》系列图书及试卷的策划、编写、审定或修改等。</p>
				<p>2、提供“原创题”或“改编题”，均要含答案及解析，可以是一套完整试卷，也可以是单个题，试题要注明适用的省份、教材版本等（详见下表）。</p>
				<p>3、第一时间向我公司提供各省高考信息等。</p>
				<p>4、合作出版您所期望学校用的辅导资料和考卷。</p>
				<p>三、供稿说明</p>
				<p>1、点击底部组稿选项，进入组稿页面，填写基本信息以及上传文档。</p>
				<p>2、各项工作待遇详情欢迎来电咨询，请您向您的同事和朋友介绍我公司的产品和业务。</p>
				<p class="red">四、稿费结算注意事项：</p>
				<p class="red">单个或单组原创试题，公司收到后会网查及评估，一经选用纯原创及评为优的试题，每道题（或每组题）视科目不同稿费50--300元，深度改编题每道（或每组）20--150元，改编题每道（或每组）10--50元。整套试题稿费电话协商。来稿一经选用，版权即归公司永久所有，不得另投他处，违者要追究作者法律责任。</p>
			</div>
			<div class="con1 wrapper">
				联系方式如下：
				<p>公司地址：河北省衡水市程富路6号</p>
				<p>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编：053000</p>
				<p>联系电话：18803181501   13643185601  0318-8889100</p>
				<p>QQ号码：1654649847</p>
			</div>
		</div>
		<p style="height: 0.48rem;"></p>
		<div class="btn">
			<button>注册成为组稿老师</button>
		</div>
		<p style="height: 0.43rem;"></p>
		<div class="footer">
			<div class="item item00" onclick="location.href='feedback.jsp'">
				<p class="img"></p>
				<span>反馈</span>
			</div>
			<div class="item item11" onclick="location.href='composition.jsp'">
				<p class="img"></p>
				<span>组稿</span>
			</div>
			<div class="item item22 item2 itemCur" onclick="location.href='user.jsp'">
				<p class="img"></p>
				<span class="colorCur">我的</span>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	$('button').click(function(){
		window.location.href='userTable.html';
	})
</script>