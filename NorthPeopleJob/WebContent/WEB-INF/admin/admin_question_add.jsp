<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="./js/jquery.js"></script>

<style type="text/css">
.normal_label {
	color: rgb(30, 32, 34); cursor: default; display: block; font-family: Helvetica, Verdana; font-size: 13px; height: 34px; padding-bottom: 2px;
	padding-left: 2px; padding-right: 2px; padding-top: 2px; white-space: normal; width: 120px; border-style: none; float: left; line-height: 34px;
}

.normal_input {
	color: rgb(30, 32, 34); cursor: default; display: block; font-family: Helvetica, Verdana; font-size: 13px; height: 34px; padding-bottom: 2px;
	padding-left: 2px; padding-right: 2px; padding-top: 2px; white-space: normal; width: 160px; border: 1px solid #a4bed4; float: left;
}

.normal_select {
	color: rgb(30, 32, 34); cursor: default; display: block; font-family: Helvetica, Verdana; font-size: 13px; height: 40px; padding-bottom: 2px;
	padding-left: 2px; padding-right: 2px; padding-top: 2px; white-space: normal; width: 166px; border: 1px solid #a4bed4; float: left;
}

.normal_checkbox {
	height: 30px; line-height: 30px; padding: 8px;
}

.form_item {
	width: 310px; height: 40px; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;
}

.normal_button {
	-webkit-align-items: flex-start; -webkit-appearance: none; -webkit-background-clip: border-box; -webkit-background-origin: padding-box;
	-webkit-background-size: auto; -webkit-box-shadow: rgb(255, 255, 255) 0px 1px 1px 0px inset; -webkit-rtl-ordering: logical;
	-webkit-user-select: text; -webkit-writing-mode: horizontal-tb; background-attachment: scroll;
	background-image: -webkit-linear-gradient(top, rgb(234, 243, 255) 0px, rgb(229, 241, 255) 50%, rgb(214, 232, 255) 100%);
	background-position: 0px 1px; background-repeat: repeat-x; border-bottom-color: rgb(164, 190, 212); border-bottom-style: solid;
	border-bottom-width: 1px; border-left-color: rgb(164, 190, 212); border-left-style: solid; border-left-width: 1px;
	border-right-color: rgb(164, 190, 212); border-right-style: solid; border-right-width: 1px; border-top-color: rgb(164, 190, 212);
	border-top-style: solid; border-top-width: 1px; color: rgb(30, 32, 34); height: 35px; letter-spacing: normal; line-height : normal; float : left;
	padding-bottom : 0px; padding-left : 0px; padding-right : 0px; padding-top : 0px; text-align : center; text-indent : 0px; text-transform : none;
	white-space: pre; width: 100px; margin-right: 20px; word-spacing: 0px; letter-spacing: normal; line-height: normal; float: left; padding-bottom: 0px;
	padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: center; text-indent: 0px; text-transform: none; line-height: normal;
	float: left; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: center; text-indent: 0px;
	text-transform: none;
}
</style>
</head>
<body>
	<div id='1'>
		<form id="login" method="post" 
		action="adminQuestionAddAction">
			<div style="float: left; width: 33%; height: 100%">
				<div class="form_item">
					<label class="normal_label">问题编号:</label> <input type="text"
						name="id" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">问题题干:</label> <input type="text"
						name="question" class="normal_input" />
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
					<label class="normal_label">激活选项A:</label> <input type="checkbox"
						name="activationA" class="normal_checkbox" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项A内容:</label> <input type="text"
						name="choiceA" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项A转向</label> <select name="gotoA"
						class="normal_select">
						<option value="3">Opel</option>
						<option value="3">Opel</option>
						<option value="3">Opel</option>
					</select>
				</div>
				<div class="form_item">
					<label class="normal_label">选项A分数</label> <input type="text"
						name="scoreA" class="normal_input" />
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
						name="fileA" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项A所属部门:</label> <input type="text"
						name="departmentA" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项A提示文字:</label> <input type="text"
						name="hintA" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">激活选项B:</label> <input type="checkbox"
						name="activationB" class="normal_checkbox" />
				</div>
			</div>
			<div style="float: left; width: 33%; height: 100%">

				<div class="form_item">
					<label class="normal_label">选项B内容:</label> <input type="text"
						name="choiceB" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项B转向</label> <select name="gotoB"
						class="normal_select">
						<option value="3">Opel</option>
						<option value="3">Opel</option>
						<option value="3">Opel</option>
					</select>
				</div>
				<div class="form_item">
					<label class="normal_label">选项B分数</label> <input type="text"
						name="scoreB" class="normal_input" />
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
						name="fileB" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项B所属部门:</label> <input type="text"
						name="departmentB" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项B提示文字:</label> <input type="text"
						name="hintB" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">激活选项C:</label> <input type="checkbox"
						name="activationC" class="normal_checkbox" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项C内容:</label> <input type="text"
						name="choiceC" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项C转向</label> <select name="gotoC"
						class="normal_select">
						<option value="3">Opel</option>
						<option value="3">Opel</option>
						<option value="3">Opel</option>
					</select>
				</div>
				<div class="form_item">
					<label class="normal_label">选项C分数</label> <input type="text"
						name="scoreC" class="normal_input" />
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
			</div>
			<div style="float: left; width: 33%; height: 100%">

				<div class="form_item">
					<label class="normal_label">选项C所需文件:</label> <input type="text"
						name="fileC" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项C所属部门:</label> <input type="text"
						name="departmentC" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项C提示文字:</label> <input type="text"
						name="hintC" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">激活选项D:</label> <input type="checkbox"
						name="activationD" class="normal_checkbox" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项D内容:</label> <input type="text"
						name="choiceD" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项D转向</label> <select name="gotoD"
						class="normal_select">
						<option value="3">Opel</option>
						<option value="3">Opel</option>
						<option value="3">Opel</option>
					</select>
				</div>
				<div class="form_item">
					<label class="normal_label">选项D分数</label> <input type="text"
						name="scoreD" class="normal_input" />
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
						name="fileD" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项D所属部门:</label> <input type="text"
						name="departmentD" class="normal_input" />
				</div>
				<div class="form_item">
					<label class="normal_label">选项D提示文字:</label> <input type="text"
						name="hintD" class="normal_input" />
				</div>
				<div class="form_item">
					<button type="submit" class="normal_button">确认</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>