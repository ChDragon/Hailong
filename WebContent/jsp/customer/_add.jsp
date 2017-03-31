<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加客户</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/zui/css/zui.min.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/zui/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/zui/js/zui.min.js"></script>
<link
	href="${pageContext.request.contextPath }/zui/lib/datatable/zui.datatable.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/zui/lib/datatable/zui.datatable.min.js"></script>
<style id="themeStyle"></style>

<script type="text/javascript">
	$(function(){
		$("button").click(function(){
			$("form").submit();
		});
	});
</script>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY style="background-image: url('${pageContext.request.contextPath}/images/blue.JPG');">
	<div style="margin-left: 30px; margin-top: 30px; margin-right: 30px" class="panel panel-primary">
	<div class="panel-heading" contenteditable="">当前位置：客户管理 &gt; 添加客户</div>
	<div class="panel-body" style="padding: 50px">
		<FORM id=form1 name=form1 class="form-horizontal" role="form"
			action="${pageContext.request.contextPath }/customer_add"
			method="post">
	
			<div class="form-group" style="padding: 10px">
				
				<label for="inputEmail3" class="col-sm-2 control-label">客户名称:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3"  name="custName">
				</div>
				<label for="inputPassword3" class="col-sm-2 control-label">客户级别:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputPassword3"  name="custLevel">
				</div>
				<div class="col-sm-1"></div>
			</div>
			
			
			<div class="form-group" style="padding: 10px">
				
				<label for="inputEmail3" class="col-sm-2 control-label">信息来源:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3" name="custSource">
				</div>
				<label for="inputPassword3" class="col-sm-2 control-label">联系人:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputPassword3" name="custLinkman">
				</div>
				<div class="col-sm-1"></div>
			</div>
			
			
			<div class="form-group" style="padding: 10px">
				
				<label for="inputEmail3" class="col-sm-2 control-label">固定电话:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3" name="custPhone">
				</div>
				<label for="inputPassword3" class="col-sm-2 control-label">移动电话:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputPassword3" name="custMobile">
				</div>
				<div class="col-sm-1"></div>
			</div>
			
			
			<div class="form-group" style="padding: 10px">
				
				<label for="inputEmail3" class="col-sm-2 control-label">联系地址:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3" name="custAddress">
				</div>
				<label for="inputPassword3" class="col-sm-2 control-label">邮编:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputPassword3" name="custZip">
				</div>
				<div class="col-sm-1"></div>
			</div>
			
			
			<div class="form-group" style="padding: 10px">
				
				<label for="inputEmail3" class="col-sm-2 control-label">客户传真:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3" name="custFax">
				</div>
				<label for="inputPassword3" class="col-sm-2 control-label">客户网址:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputPassword3" name="custFax">
				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="form-group" style="padding: 10px">
				<div class="col-sm-4"></div>
				<div class="col-sm-4"></div>
				<div class="col-sm-2">
					<button class="btn btn-block  btn-success " type="button">提交</button>
				</div>
			</div>
			
		</FORM>
		</div>
	</div>

</BODY>
</HTML>
