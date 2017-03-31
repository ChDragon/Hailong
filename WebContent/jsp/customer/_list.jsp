<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>客户列表</title><meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="${pageContext.request.contextPath }/zui/css/zui.min.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath }/zui/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/zui/js/zui.min.js"></script>
<link href="${pageContext.request.contextPath }/zui/lib/datatable/zui.datatable.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/zui/lib/datatable/zui.datatable.min.js"></script>
<style id="themeStyle"></style>

<script language="javascript">
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.customerForm.submit();

	}
	$(function() {
		
		$("table").datatable({checkable: true, sortable: true , checkByClickRow: true});
	})
</script>

<!-- <META content="MSHTML 6.00.2900.3492" name=GENERATOR> -->
</head>
<body style="background-image: url('${pageContext.request.contextPath}/images/16sucai_p564c043_181.JPG');">

	<div id="pageContent" style="margin-left: 30px; margin-top: 10px; margin-right: 30px" class="panel panel-primary">
		<div class="panel-heading" contenteditable="">当前位置：客户管理 &gt; 客户列表</div>
		<FORM id="customerForm" name="customerForm"
			action="${pageContext.request.contextPath }/customerServlet?method=list"
			method=post>
			<div class="form-group" style="padding: 10px">
				<label for="inputEmail3" class="col-sm-1 control-label">客户名称:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputEmail3" name="custSource">
				</div>
				<div class="col-sm-3">
					<button class="btn  btn-success " type="button">筛选</button>
				</div>
				<div class="col-sm-1"></div>
			</div>
		<div class="panel-body" >
			<section>
			<div class="example">
				<div class="datatable sortable show-scroll-slide scrolled-out"
					data-sortable="true" id="datatable-1490580729310002">
					<div class="datatable-head">
						<div class="datatable-head-span datatable-span "
							style="width: 60%;">
							<div class="datatable-wrapper">
								<table class="table table-datatable table-colHover">
									<thead>
										<tr>
											<th class="text-center" data-index="0" data-type="number"
												style="width: 20%; min-height: 36px; height: 36px;">客户名称</th>
											<th class="sort-up " data-index="1" data-type="date"
												style="width: 20%; min-height: 36px; height: 36px;">客户级别</th>
											<th data-index="2" data-type="string"
												style="width: 20%; min-height: 36px; height: 36px;" class="">客户来源</th>
											<th data-index="3" data-type="string"
												style="width: 20%; min-height: 36px; height: 36px;">联系人</th>
											<th class="sort-disabled" data-index="10" data-type="string"
												style="width: auto; min-height: 36px; height: 36px;">操作</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list }" var="customer">
											<tr data-index="0" data-id="0" class="">
												<td class="text-center" data-row="0" data-index="0"
													data-flex="false" data-type="number" title=""
													style="width: 20%; min-height: 36px; height: 36px;">${customer.custName }</td>
												<td data-row="0" data-index="1" data-flex="false"
													data-type="date" title=""
													style="width: 20%; min-height: 36px; height: 36px;"
													class="">${customer.custLevel }</td>
												<td data-row="0" data-index="2" data-flex="false"
													data-type="string" title=""
													style="width: 20%; min-height: 36px; height: 36px;"
													class="">${customer.custSource }</td>
												<td data-row="0" data-index="3" data-flex="false"
													data-type="string" title=""
													style="width: 20%; min-height: 36px; height: 36px;"
													class="">${customer.custLinkman }</td>
												<td data-row="0" data-index="10" data-flex="false"
													data-type="string" title=""
													style="width: auto; min-height: 36px; height: 36px;">
													<a href="${pageContext.request.contextPath }/customer_edit?cid=${customer.cid }"><i class="icon-wrench"></i>
													</a>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="###"
													class="text-danger"><i class="icon-trash"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

					</div>
			
					<center>
					<ul class="pager pager-pills">
					  <li class="previous"><a href="your/nice/url">上一页</a></li>
					  <li><a href="your/nice/url">1</a></li>
					  <li class="active"><a href="your/nice/url">2</a></li>
					  <li><a href="your/nice/url">3</a></li>
					  <li><a href="your/nice/url">4</a></li>
					  <li><a href="your/nice/url">5</a></li>
					  <li class="next"><a href="your/nice/url">下一页</a></li>
					</ul>
					</center>
				
				</div>
			</div>
			</section>
		</div>
	</div>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
		<TBODY>
			<TR>
				<TD width=15><IMG
					src="${pageContext.request.contextPath }/images/new_024.jpg"
					border=0></TD>
				<TD align=middle width="100%"
					background="${pageContext.request.contextPath }/images/new_025.jpg"
					height=15></TD>
				<TD width=15><IMG
					src="${pageContext.request.contextPath }/images/new_026.jpg"
					border=0></TD>
			</TR>
		</TBODY>
	</TABLE>
	</FORM>
</BODY>
</HTML>
