<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <title>登录注册</title>
    <meta name="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/custom.css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<p>&nbsp;</p><p>&nbsp;</p>
<h2 class="text-center blog_title">登录注册功能</h2>
<div class="col-sm-offset-2 col-sm-10">
    <h3>功能简介</h3>
    <p style="text-indent:0em;margin-top:20px;font-size:16px">
        使用SSM(Spring, Spring MVC, MyBatis)建立一个简单的框架，并实现简单的登录注册功能。<br/>
        其中，注册页面使用jcaptcha实现了验证码功能，并使用AJAX技术实时验证。<br/>
        注册页面的邮箱输入完成，光标移开输入框后，使用AJAX技术到后台数据库进行查找，如果已经注册过则提示盖邮箱已被注册。<br/>
        <a href="register.do">注册</a> <br/>
        <a href="login.do">登录</a>；
    </p>
    <br />
</div>
</body>
</html>
