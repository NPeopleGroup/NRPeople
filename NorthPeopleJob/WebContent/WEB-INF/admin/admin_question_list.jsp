<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>问题列表</title>

<link rel="stylesheet" href="js/jqwidgets/styles/jqx.base.css"
	type="text/css" />

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxdatatable.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxlistbox.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxdropdownlist.js"></script>


<script type="text/javascript">

function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}


	$(document)
			.ready(

					function() {

						var url = "adminQuestionListAction?questionType="+getUrlParam('questionType');

						// prepare the data
						var source = {
							dataType : "json",
							dataFields : [ {
								name : 'sn',
								type : 'string'
							}, {
								name : 'id',
								type : 'string'
							}, {
								name : 'question',
								type : 'string'
							}, {
								name : 'type',
								type : 'string'
							} ],
							id : 'id',
							pageable : true,
							pagerPosition : 'both',
							url : url
						};

						var dataAdapter = new $.jqx.dataAdapter(source);

						$("#dataTable").jqxDataTable({
							width : 600,
							pageable : true,
							pagerButtonsCount : 10,
							source : dataAdapter,
							columnsResize : true,
							selectionMode : 'singleRow',
							columns : [ {
								text : '题目编号',
								dataField : 'id',
								width : 100
							}, {
								text : '题目题干',
								dataField : 'question',
								width : 300
							}, {
								text : '题目类型',
								dataField : 'type',
								width : 200
							} ]
						});
						$("#dataTable").jqxDataTable({
							pagerMode : "advanced"
						});
						$("#myAddButton").jqxButton({
							height : 35,
							width : 80
						});
						$("#myEditButton").jqxButton({
							height : 35,
							width : 80
						});
						$("#myDeleteButton").jqxButton({
							height : 35,
							width : 80
						});
						$("#myEditButton")
								.bind(
										'click',
										function() {
											var selection = $("#dataTable")
													.jqxDataTable(
															'getSelection');
											if (selection.length == 0) {
												alert("请先选择需要操作的行!");
											} else {
												window.location.href = 'adminQuestionEditPage?id='
														+ selection[0]['id']
														+ '&sn='
														+ selection[0]['sn'];
											}
										});

						$("#myAddButton").bind('click', function() {

							window.location.href = 'adminQuestionAddPage';

						});
						$("#myDeleteButton")
								.bind(
										'click',
										function() {
											var selection = $("#dataTable")
											.jqxDataTable(
													'getSelection');
									if (selection.length == 0) {
										alert("请先选择需要操作的行!");
									} else {
										window.location.href = 'adminQuestionDeleteAction?id='
												+ selection[0]['id'];
									}

										});
					});
	


	
</script>
</head>
<body class='default'>
	<div id="dataTable"></div>
	<div id="myMenu" style="margin-top: 20px">
		<button id="myAddButton">新增</button>
		<button id="myEditButton">编辑</button>
		<button id="myDeleteButton">删除</button>
	</div>
</body>
</html>
