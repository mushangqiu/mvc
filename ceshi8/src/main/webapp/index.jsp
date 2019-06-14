<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%--<html>
<head>
    <title>Title</title>
</head>
<body>

<br>
hello world!
<a href="/books">查询书籍11</a>
</body>
</html>--%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>衡水金卷-反馈</title>
    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/rem.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/layer/2.3/layer.js"></script>
</head>
<body>
<div class="feedback">
    <p class="head">衡水金卷服务平台</p>
    <p class="banner"></p>
    <p class="msg wrapper">河北金卷教育科技有限公司，秉承“品质源于专业，教育成就未来”的精神，公司将一如既往的致力于产品的质量，逐步走向完善。但难免百密一疏，现诚邀您帮助我们“同步完善，追求卓越”，将您在使用过程中发现的问题和宝贵的建议及时反馈给我们，一经采纳，将给予奖励！
    </p>
    <div class="main wrapper">
        <section>
            <p class="title"><span>*</span> 1.姓名</p>
            <input type="text" class="js-1">
        </section>
        <section>
            <p class="title"><span>*</span> 2.所在学校</p>
            <input type="text" class="js-2">
        </section>
        <section>
            <p class="title"><span>*</span> 3.学校所属</p>
            <form>
                <div>
                    <input type="radio" name="radio1" id="college1"><label for="college1">省重点</label>
                </div>
                <div>
                    <input type="radio" name="radio1" id="college2"><label for="college2">市县重点</label>
                </div>
                <div>
                    <input type="radio" name="radio1" id="college3"><label for="college3">市县普通高中</label>
                </div>
                <div>
                    <input type="radio" name="radio1" id="college4"><label for="college4">职教高中</label>
                </div>
            </form>
        </section>
        <section>
            <p class="title"><span>*</span> 4.联系电话</p>
            <input type="text" class="js-4">
        </section>
        <section>
            <p class="title"><span>*</span> 5.产品名称<span>【多选】</span></p>
            <form>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods1"><label for="goods1">高三一轮复习单元检测卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods2"><label for="goods2">高三一轮复习周测卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods3"><label for="goods3">高三二轮复习专题卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods4"><label for="goods4">高考备考专项提分卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods5"><label for="goods5">高考分科综合卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods6"><label for="goods6">高考模拟调研卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods7"><label for="goods7">高考模拟信息卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods8"><label for="goods8">高考压轴卷</label>
                </div>
                <div>
                    <input type="checkbox" name="checkbox1" id="goods9"><label for="goods9">其他</label>
                </div>
            </form>
        </section>
        <section>
            <p class="title"><span>*</span> 6.反馈学科<span>【多选】</span></p>
            <form>
                <div>
                    <input type="checkbox" name="subject" id="chinese"><label for="chinese">语文</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="science"><label for="science">理科</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="arts"><label for="arts">文科</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="english"><label for="english">英语</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="physical"><label for="physical">物理</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="chemistry"><label for="chemistry">化学</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="biology"><label for="biology">生物</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="history"><label for="history">历史</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="geography"><label for="geography">地理</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="politics"><label for="politics">政治</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="literatureSummary"><label for="literatureSummary">文综</label>
                </div>
                <div>
                    <input type="checkbox" name="subject" id="performed"><label for="performed">理综</label>
                </div>
            </form>
        </section>
        <section>
            <p class="title"><span></span> 7.反馈意见<span>(如若5.6两项进行多选，请务必在下框中进行标注)</span></p>
            <textarea id="" cols="30" rows="10" class="js-7"></textarea>
        </section>
        <button class="submit">提交建议</button>
    </div>
    <p style="height: 0.43rem;"></p>
    <div class="footer">
        <div class="item item00 item0 itemCur" onclick="location.href='feedback.jsp'">
            <p class="img"></p>
            <span class="colorCur">反馈</span>
        </div>
        <div class="item item11" onclick="location.href='composition.jsp'">
            <p class="img"></p>
            <span>组稿</span>
        </div>
        <div class="item item22" onclick="location.href='user.jsp'">
            <p class="img"></p>
            <span>我的</span>
        </div>
    </div>
</div>
</body>
</html>
<script>
    //表单为空验证
    $('.submit').click(function(){
        if(!$('.js-1').val()){
            layer.msg('请输入姓名');
        }else if(!$('.js-2').val()){
            layer.msg('请输入所在学校');
        }else if(!$('input:radio[name="radio1"]:checked').val()){
            layer.msg('请选择学校所属');
        }else if(!$('.js-4').val()){
            layer.msg('请输入联系电话');
        }else if($("[name='checkbox1']").is(':checked')==false){
            layer.msg('请选择产品名称');
        }else if($("[name='subject']").is(':checked')==false){
            layer.msg('请选择反馈学科');
        }else if($("[name='checkbox1']:checked").length>1 && !$('.js-7').val()){
            layer.msg('请输入反馈意见');
        }else if($("[name='subject']:checked").length>1 && !$('.js-7').val()){
            layer.msg('请输入反馈意见');
        }else{
            //提交
            //跳成功页
            location.href='feedbackSubmit.html';
        }
    })
</script>