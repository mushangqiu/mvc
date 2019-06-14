<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>衡水金卷</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="/html/BackOffice/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/html/BackOffice/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/html/BackOffice/assets/css/form-elements.css">
    <link rel="stylesheet" href="/html/BackOffice/assets/css/style.css">
    <!-- Javascript -->
    <script src="/html/BackOffice/assets/js/jquery-1.11.1.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/layer/2.3/layer.js"></script>
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/html/BackOffice/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/html/BackOffice/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/html/BackOffice/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/html/BackOffice/assets/ico/apple-touch-icon-57-precomposed.png">

</head>


<body>

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1><strong>衡水金卷</strong> Login Form </h1>
                    <div class="description">
                        <p>
                            后台登录系统
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>Login to our site</h3>
                            <p>${message}输入账户和密码</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="/backLogin" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="form_username" placeholder="账户..." class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="form_password" placeholder="密码..." class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn">登录</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>



<script src="/html/BackOffice/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/html/BackOffice/assets/js/jquery.backstretch.min.js"></script>
<script src="/html/BackOffice/assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="/html/BackOffice/assets/js/placeholder.js"></script>
<![endif]-->
</body>
</html>
<script>
    //表单为空验证
    $('.btn').click(function(){
        if(!$('#form-username').val()){
            layer.msg('请输入账号');
        }else if(!$('#form-password').val()){
            layer.msg('请输入密码');
        }else{
            //提交
            //跳成功页
            $('.login-form').submit();
        }
    })
</script>