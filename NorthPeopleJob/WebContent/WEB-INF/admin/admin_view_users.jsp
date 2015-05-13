<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./admin_header.jsp"%>
<script>
	//调整Question页面的高度
	$(function() {
		if (window.innerHeight) {
			winHeight = window.innerHeight;
			$(".question-box").css("margin-top",
					(winHeight - 70 - 150 - 452) / 3);
			$(".question-box").css("margin-bottom",
					(winHeight - 70 - 150 - 452) / 3 * 2);
		}
	});
</script>
<div class="question-box"
	style="padding-left: 0px; padding-right: 0px; width: 990px; border: none;">
	<div id="dataTable"></div>
</div>

<link rel="stylesheet" href="./js/jqwidgets/jqx.base.css"
	type="text/css" />
<script type="text/javascript" src="./js/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="./js/jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="./js/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="./js/jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="./js/jqwidgets/jqxdatatable.js"></script>
<script type="text/javascript" src="./js/jqwidgets/demos.js"></script>



<script type="text/javascript">
	$(document).ready(function() {

		var List = [ {
			"progress" : "已申请",
			"date" : "2015-01-01",
			"username" : "13666666666",
			"type" : "个人",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "张三",
			"sex" : "男",
			"birth" : "1985-01-01"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		}, {
			"progress" : "已审核",
			"date" : "2015-01-03",
			"username" : "13888888888",
			"type" : "单位",
			"cardID" : "<div style=\"height:24px;\">10000000000000000X</div>",
			"name" : "李四",
			"sex" : "女",
			"birth" : "1986-01-03"
		} ];

		var source = {
			dataType : "json",
			dataFields : [ {
				name : 'progress',
				type : 'string'
			}, {
				name : 'date',
				type : 'string'
			}, {
				name : 'username',
				type : 'string'
			}, {
				name : 'type',
				type : 'string'
			}, {
				name : 'cardID',
				type : 'string'
			}, {
				name : 'name',
				type : 'string'
			}, {
				name : 'sex',
				type : 'string'
			}, {
				name : 'birth',
				type : 'string'
			} ],
			localData : List
		};
		var dataAdapter = new $.jqx.dataAdapter(source);

		$("#dataTable").jqxDataTable({
			width : 990,
			height : 450,
			pageable : true,
			pagerButtonsCount : 3,
			source : dataAdapter,
			altRows: true,
            columnsResize: true,
			sortable : true,
			selectionMode : 'singleRow',
			columns : [ {
				text : 'progress',
				dataField : 'progress',
				width : 150
			}, {
				text : 'ReportsTo',
				dataField : 'date',
				width : 150
			}, {
				text : 'FirstName',
				dataField : 'username',
				width : 150
			}, {
				text : 'LastName',
				dataField : 'type',
				width : 200,
				align : 'right',
				cellsAlign : 'right',
				cellsFormat : 'c2'
			}, {
				text : 'protein',
				dataField : 'cardID',
				width : 200,
				align : 'right',
				cellsAlign : 'right',
				cellsFormat : 'n'
			}, {
				text : 'protein',
				dataField : 'name',
				width : 200,
				align : 'right',
				cellsAlign : 'right',
				cellsFormat : 'n'
			}, {
				text : 'protein',
				dataField : 'sex',
				width : 100,
				align : 'right',
				cellsAlign : 'right',
				cellsFormat : 'n'
			}, {
				text : 'protein',
				dataField : 'birth',
				width : 100,
				align : 'right',
				cellsAlign : 'right',
				cellsFormat : 'n'
			} ]
		});

	});
</script>

<%@ include file="../../footer.jsp"%>