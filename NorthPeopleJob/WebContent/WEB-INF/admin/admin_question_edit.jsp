<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="./js/jquery.js"></script>
<link rel="stylesheet" href="./css/admin-question.css">
<link rel="stylesheet" href="./js/jqwidgets/styles/jqx.base.css"
	type="text/css" />
<script type="text/javascript" src="./js/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="./js/jqwidgets/jqxtabs.js"></script>
<script type="text/javascript" src="js/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".normal_button").jqxButton({
			height : 35,
			width : 80
		});
		$('#jqxTabs').jqxTabs({
			width : '90%',
			height : 600,
			position : 'top'
		});
		$('#settings div').css('margin-top', '10px');

		$('#animation').on('change', function(event) {
			var checked = event.args.checked;
			$('#jqxTabs').jqxTabs({
				selectionTracker : checked
			});
		});

		$('#contentAnimation').on('change', function(event) {
			var checked = event.args.checked;
			if (checked) {
				$('#jqxTabs').jqxTabs({
					animationType : 'fade'
				});
			} else {
				$('#jqxTabs').jqxTabs({
					animationType : 'none'
				});
			}
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("[name='type']").val("${question.type}");

		if ("${question.activationA}" == "on") {
			$("[name='activationA']").attr("checked", 'true');
		}

		$("[name='objectiveA']").val("${question.objectiveA}");
		$("[name='gotoA']").val("${question.gotoA}");

		if ("${question.activationB}" == "on") {
			$("[name='activationB']").attr("checked", 'true');
		}

		$("[name='objectiveB']").val("${question.objectiveB}");
		$("[name='gotoB']").val("${question.gotoB}");

		if ("${question.activationC}" == "on") {
			$("[name='activationC']").attr("checked", 'true');
		}
		$("[name='objectiveC']").val("${question.objectiveC}");
		$("[name='gotoC']").val("${question.gotoC}");

		if ("${question.activationD}" == "on") {
			$("[name='activationD']").attr("checked", 'true');
		}
		$("[name='objectiveD']").val("${question.objectiveD}");
		$("[name='gotoD']").val("${question.gotoD}");
	});
</script>
<script type="text/javascript">
	function previewImage(file) {
		var MAXWIDTH = 300;
		var MAXHEIGHT = 210;
		var div = document.getElementById('preview');
		if (file.files && file.files[0]) {
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.onload = function() {
				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, MAXWIDTH,
						MAXHEIGHT);
				img.width = rect.width;
				img.height = rect.height;
				img.style.marginTop = rect.top + 'px';
			}
			var reader = new FileReader();
			reader.onload = function(evt) {
				img.src = evt.target.result;
			}
			reader.readAsDataURL(file.files[0]);
		} else {
			var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
			file.select();
			var src = document.selection.createRange().text;
			div.innerHTML = '<img id=imghead>';
			var img = document.getElementById('imghead');
			img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
			var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth,
					img.offsetHeight);
			status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width
					+ ',' + rect.height);
			div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
		}
	}
	function clacImgZoomParam(maxWidth, maxHeight, width, height) {
		var param = {
			top : 0,
			left : 0,
			width : width,
			height : height
		};
		if (width > maxWidth || height > maxHeight) {
			rateWidth = width / maxWidth;
			rateHeight = height / maxHeight;

			if (rateWidth > rateHeight) {
				param.width = maxWidth;
				param.height = Math.round(height / rateWidth);
			} else {
				param.width = Math.round(width / rateHeight);
				param.height = maxHeight;
			}
		}

		param.left = Math.round((maxWidth - param.width) / 2);
		param.top = Math.round((maxHeight - param.height) / 2);
		return param;
	}
</script>
</head>
<body>
	<form id="login" method="post" enctype="multipart/form-data"
		action="adminQuestionEditAction">
		<input type="text" name="sn" value="${question.sn}"
			style="display: none" />
		<div style="float: left; width: 33%; height: 100%">
			<div class="form_item">
				<label class="normal_label">问题编号:</label> <input type="text"
					name="id" class="normal_input" value="${question.id}" />
			</div>
			<div class="form_item">
				<label class="normal_label">问题题干:</label> <input type="text"
					name="question" class="normal_input" value="${question.question}" />
			</div>
			<div class="form_item">
				<label class="normal_label">问题类型:</label> <select name="type"
					class="normal_select">
					<option value="年龄">年龄</option>
					<option value="教育">教育</option>
					<option value="技能">技能</option>
					<option value="住房">住房</option>
					<option value="社保">社保</option>
					<option value="落户地区">落户地区</option>
					<option value="职业">职业</option>
					<option value="投资纳税">投资纳税</option>
					<option value="奖项荣誉">奖项荣誉</option>
					<option value="婚姻状况">婚姻状况</option>
					<option value="工作年限">工作年限</option>
					<option value="工作年限">守法诚信</option>
				</select>
			</div>
			<div class="form_item">
				<label class="normal_label">问题图片:</label> <input type="file"
					name="image" class="normal_input" onchange="previewImage(this)"/>
			</div>
			<div class="form_item" id="preview" style="height:210px">
				<img src="img/question-${question.id}.png" width="300" height="210" id="imghead"/>				
			</div>
			<div class="form_item">
				<button type="submit" class="normal_button">确认</button>
			</div>
		</div>
		<div style="float: left; width: 33%; height: 100%">
			<div id='jqxTabs'>
				<ul>
					<li style="margin-left: 30px;">选项A</li>
					<li>选项B</li>
					<li>选项C</li>
					<li>选项D</li>
				</ul>
				<div>
					<div class="form_item">
						<label class="normal_label">激活选项A:</label> <input type="checkbox"
							name="activationA" class="normal_checkbox" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项A内容:</label> <input type="text"
							name="choiceA" class="normal_input" value="${question.choiceA}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项A转向</label>
						<s:select name="gotoA" cssClass="normal_select" list="gotoList"
							listKey="id" listValue="id">
						</s:select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项A分数</label> <input type="text"
							name="scoreA" class="normal_input" value="${question.scoreA}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项A分数所属:</label> <select
							name="objectiveA" class="normal_select">
							<option value="年龄">年龄</option>
							<option value="教育">教育</option>
							<option value="技能">技能</option>
							<option value="住房">住房</option>
							<option value="社保">社保</option>
							<option value="落户地区">落户地区</option>
							<option value="职业">职业</option>
							<option value="投资纳税">投资纳税</option>
							<option value="奖项荣誉">奖项荣誉</option>
							<option value="婚姻状况">婚姻状况</option>
							<option value="工作年限">工作年限</option>
							<option value="工作年限">守法诚信</option>
						</select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项A所需文件:</label> <input type="text"
							name="fileA" class="normal_input" value="${question.fileA}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项A所属部门:</label> <input type="text"
							name="departmentA" class="normal_input"
							value="${question.departmentA}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项A提示文字:</label> <input type="text"
							name="hintA" class="normal_input" value="${question.hintA}" />
					</div>
				</div>
				<div>
					<div class="form_item">
						<label class="normal_label">激活选项B:</label> <input type="checkbox"
							name="activationB" class="normal_checkbox" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项B内容:</label> <input type="text"
							name="choiceB" class="normal_input" value="${question.choiceB}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项B转向</label>

						<s:select name="gotoB" cssClass="normal_select" list="gotoList"
							listKey="id" listValue="id">
						</s:select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项B分数</label> <input type="text"
							name="scoreB" class="normal_input" value="${question.scoreB}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项B分数所属:</label> <select
							name="objectiveB" class="normal_select">
							<option value="年龄">年龄</option>
							<option value="教育">教育</option>
							<option value="技能">技能</option>
							<option value="住房">住房</option>
							<option value="社保">社保</option>
							<option value="落户地区">落户地区</option>
							<option value="职业">职业</option>
							<option value="投资纳税">投资纳税</option>
							<option value="奖项荣誉">奖项荣誉</option>
							<option value="婚姻状况">婚姻状况</option>
							<option value="工作年限">工作年限</option>
							<option value="工作年限">守法诚信</option>
						</select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项B所需文件:</label> <input type="text"
							name="fileB" class="normal_input" value="${question.fileB}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项B所属部门:</label> <input type="text"
							name="departmentB" class="normal_input"
							value="${question.departmentB}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项B提示文字:</label> <input type="text"
							name="hintB" class="normal_input" value="${question.hintB}" />
					</div>
				</div>
				<div>
					<div class="form_item">
						<label class="normal_label">激活选项C:</label> <input type="checkbox"
							name="activationC" class="normal_checkbox" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项C内容:</label> <input type="text"
							name="choiceC" class="normal_input" value="${question.choiceC}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项C转向</label>
						<s:select name="gotoC" cssClass="normal_select" list="gotoList"
							listKey="id" listValue="id">
						</s:select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项C分数</label> <input type="text"
							name="scoreC" class="normal_input" value="${question.scoreC}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项C分数所属:</label> <select
							name="objectiveC" class="normal_select">
							<option value="年龄">年龄</option>
							<option value="教育">教育</option>
							<option value="技能">技能</option>
							<option value="住房">住房</option>
							<option value="社保">社保</option>
							<option value="落户地区">落户地区</option>
							<option value="职业">职业</option>
							<option value="投资纳税">投资纳税</option>
							<option value="奖项荣誉">奖项荣誉</option>
							<option value="婚姻状况">婚姻状况</option>
							<option value="工作年限">工作年限</option>
							<option value="工作年限">守法诚信</option>
						</select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项C所需文件:</label> <input type="text"
							name="fileC" class="normal_input" value="${question.fileC}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项C所属部门:</label> <input type="text"
							name="departmentC" class="normal_input"
							value="${question.departmentC}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项C提示文字:</label> <input type="text"
							name="hintC" class="normal_input" value="${question.hintC}" />
					</div>
				</div>
				<div>
					<div class="form_item">
						<label class="normal_label">激活选项D:</label> <input type="checkbox"
							name="activationD" class="normal_checkbox" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项D内容:</label> <input type="text"
							name="choiceD" class="normal_input" value="${question.choiceD}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项D转向</label>
						<s:select name="gotoD" cssClass="normal_select" list="gotoList"
							listKey="id" listValue="id">
						</s:select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项D分数</label> <input type="text"
							name="scoreD" class="normal_input" value="${question.scoreD}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项D分数所属:</label> <select
							name="objectiveD" class="normal_select">
							<option value="年龄">年龄</option>
							<option value="教育">教育</option>
							<option value="技能">技能</option>
							<option value="住房">住房</option>
							<option value="社保">社保</option>
							<option value="落户地区">落户地区</option>
							<option value="职业">职业</option>
							<option value="投资纳税">投资纳税</option>
							<option value="奖项荣誉">奖项荣誉</option>
							<option value="婚姻状况">婚姻状况</option>
							<option value="工作年限">工作年限</option>
							<option value="工作年限">守法诚信</option>
						</select>
					</div>
					<div class="form_item">
						<label class="normal_label">选项D所需文件:</label> <input type="text"
							name="fileD" class="normal_input" value="${question.fileD}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项D所属部门:</label> <input type="text"
							name="departmentD" class="normal_input"
							value="${question.departmentD}" />
					</div>
					<div class="form_item">
						<label class="normal_label">选项D提示文字:</label> <input type="text"
							name="hintD" class="normal_input" value="${question.hintD}" />
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>