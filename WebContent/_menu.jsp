<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/zui/css/zui.min.css" rel="stylesheet">
<script type="text/javascript"src="${pageContext.request.contextPath }/zui/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/zui/js/zui.min.js"></script>

<title>Insert title here</title>
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/blue.JPG');">
	<nav class="menu" data-ride="menu">

	<ul class="nav nav-primary">

		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-user"></i> 客户管理</a>
			<ul class="nav">
				<li><a href="${pageContext.request.contextPath }/jsp/customer/_add.jsp" target=main>新增客户</a></li>
				<li><a href="${pageContext.request.contextPath }/customer_list" target=main>客户列表</a></li>
			</ul></li>
			
			
		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-chat"></i> 联系人管理</a>
			<ul class="nav">
				<li><a href="javascript:;" target=main>新增联系人</a></li>
				<li><a href="javascript:;" target=main>联系人列表</a></li>
			</ul></li>
			
			
			
		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-group"></i> 客户拜访管理</a>
			<ul class="nav">
				<li><a href="javascript:;" target=main>新增客户拜访</a></li>
				<li><a href="javascript:;" target=main>客户拜访列表</a></li>
			</ul></li>
			
			
			
		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-search" ></i> 综合查询</a>
			<ul class="nav">
				<li><a href="javascript:;" target=main>客户信息查询</a></li>
				<li><a href="javascript:;" target=main>联系人信息查询</a></li>
				<li><a href="javascript:;" target=main>客户拜访记录查询</a></li>
			</ul></li>
			
			
			
		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-line-chart"></i> 统计分析</a>
			<ul class="nav">
				<li><a href="javascript:;" target=main>客户行业统计</a></li>
				<li><a href="javascript:;" target=main>客户来源统计</a></li>
			</ul></li>
			
			
			
		<li class="nav-parent"><a href="javascript:;"><i
				class="icon icon-home"></i> 系统管理</a>
			<ul class="nav">
				<li><a href="javascript:;" target=main>角色管理</a></li>
				<li><a href="javascript:;" target=main>用户管理</a></li>
				<li><a href="javascript:;" target=main>数据字典</a></li>
			</ul></li>

	</ul>
	</nav>
</body>
</html>