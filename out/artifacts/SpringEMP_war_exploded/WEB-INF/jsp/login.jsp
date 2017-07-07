<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/custom.css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>

<body>
<div class="container">
	<div id="wrap">
		<div id="top_content">
			  <p>&nbsp;</p><p>&nbsp;</p>
			  <div class="col-sm-12">
			    <p class="text-center blog_title" style="text-indent:0em;">敏捷测试论坛</p>
			    <p class="text-center blog_subtitle" style="text-indent:0em;margin-top:10px">和你一起进步</p>
			    <h4 class="text-center sub_title">
			      <span>
			        <a class="active" href="login.do">登录</a>
			        <b>·</b>
			        <a href="register.do">注册</a>
			      </span>
			    </h4>
			  </div>
			<div id="content">
				<p id="whereami"></p>
				<form action="personal.do" method="post" class="col-sm-offset-4 col-sm-4 form-horizontal" role="form">
					
					<div class="input-group">
		                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		                <input type="text" class="form-control input-lg input_size" id="username" name="username" placeholder="请输入用户名/手机号/邮箱" required>
		            </div>
		            <div class="input-group">
		                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		                <input type="password" class="form-control input-lg input_size" name="password" id="password" placeholder="请输入密码" required>
		            </div>
					<p>
						<input type="submit" class="btn btn-info btn-lg btn-block bottom-space" value="登录" />
					</p>
					<div class="row">
	                   <div class="col-sm-6">
	                   <p class="text-left" style="text-indent:0em">
	                       <input type="checkbox" value="" checked>记住我
	                   </p></div>
	                   <div class="col-sm-6">
	                   <p class="text-right">
	                     <a href="lostpassword.do" style="color:rgb(51,51,51)">忘记密码？</a>
	                   </p></div>
	                </div>
				</form>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>
