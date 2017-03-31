<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.select.js"></script>
<title>数字管理系统_用户登录</title>
</head>
<body >
<div id="container" style="height: 638px;">
	<form action="${pageContext.request.contextPath }/user_login" method="post" target="_parent">
    <div id="bd" style="padding-top: 77.5px;">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="userName" name="username">
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" name="password">
                </div>
               <!--  <div class="input validate" id="validate">
                    <label for="valiDate">验证码</label>
                    <input type="text" id="valiDate">
                    <div class="value">X3D5</div>
                </div> -->
                
                <div id="btn" class="loginButton">
                    <input type="button" class="button" value="登录">
                </div>
            </div>
        </div>
        <div id="ft">CopyRight&nbsp;2014&nbsp;&nbsp;版权所有&nbsp;&nbsp;samxinnet.com 仅供学习参考 &nbsp;&nbsp;</div>
    </div>
   </form>
</div>

 <script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	$('.loginButton').click(function(e) {
        $("form").submit();
    });
</script> 

</body>
</html>