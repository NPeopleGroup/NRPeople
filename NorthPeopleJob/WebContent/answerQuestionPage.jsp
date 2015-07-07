<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="./js/jquery.js"></script>
<link rel="stylesheet" href="./css/public.css">

<script type="text/javascript">
	//调整Question页面的高度
	$(function() {
		if (window.innerHeight) {
			winHeight = window.innerHeight;
			/* 			$(".question-box").css("margin-top",
			 (winHeight - 70 - 150 - 452) / 3); */
			$(".question-box").css("margin-bottom",
					(winHeight - 70 - 150 - 452) / 3 * 2);
		}
	});
	$(document).ready(function() {

		switch ("${question.type}") {
		case "年龄":
			$(".question-box-line-fill").css("width", "60");
			break;
		case "教育":
			$(".question-box-line-fill").css("width", "120");
			break;
		case "技能(职业资格)":
			$(".question-box-line-fill").css("width", "180");
			break;
		case "技能(职称)":
			$(".question-box-line-fill").css("width", "180");
			break;
		case "住房":
			$(".question-box-line-fill").css("width", "240");
			break;
		case "社保":
			$(".question-box-line-fill").css("width", "300");
			break;
		case "落户地区":
			$(".question-box-line-fill").css("width", "360");
			break;
		case "职业":
			$(".question-box-line-fill").css("width", "420");
			break;
		case "投资纳税":
			$(".question-box-line-fill").css("width", "480");
			break;
		case "奖项荣誉":
			$(".question-box-line-fill").css("width", "540");
			break;
		case "婚姻状况":
			$(".question-box-line-fill").css("width", "600");
			break;
		case "工作年限":
			$(".question-box-line-fill").css("width", "660");
			break;
		case "守法诚信":
			$(".question-box-line-fill").css("width", "720");
			break;
		}

		if ("${question.activationA}" != "on") {
			$("#option_a_li").hide();
		}

		if ("${question.activationB}" != "on") {
			$("#option_b_li").hide();
		}

		if ("${question.activationC}" != "on") {
			$("#option_c_li").hide();
		}

		if ("${question.activationD}" != "on") {
			$("#option_d_li").hide();
		}

	});
</script>

</head>
<body>

	<form id="answerQuestion" method="post" enctype="multipart/form-data"
		action="answerQuestionPageSubmit">
		<input type="text" name="id" value="${question.id}"
			style="display: none" />
		<div style="width: 990px; margin: 0 auto;">
			<div style="width: 170px; float: left;">
				<div class="type-box">年龄</div>
				<div class="type-box">教育</div>
				<div class="type-box">技能(职业资格)</div>
				<div class="type-box">技能(职称)</div>
				<div class="type-box">住房</div>
				<div class="type-box">社保</div>
				<div class="type-box">落户地区</div>
				<div class="type-box">职业</div>
				<div class="type-box">投资纳税</div>
				<div class="type-box">奖项荣誉</div>
				<div class="type-box">婚姻状况</div>
				<div class="type-box">工作年限</div>
				<div class="type-box">守法诚信</div>
			</div>
			<div class="question-box">
				<div class="question-box-title">天津市积分落户自助测评</div>
				<div class="question-box-line">
					<div class="question-box-line-fill"></div>
				</div>
				<div class="question-box-question">
					<div class="question-box-text">
						<div class="question-box-stem">${question.question}</div>
						<div class="question-box-option">
							<ul>
								<li id="option_a_li"><i></i> <input type="radio"
									name="option" value="A_${question.gotoA}" checked="true">
									A. ${question.choiceA}</li>
								<li id="option_b_li"><i></i> <input type="radio"
									name="option" value="B_${question.gotoB}"> B.
									${question.choiceB}</li>
								<li id="option_c_li"><i></i> <input type="radio"
									name="option" value="C_${question.gotoC}"> C.
									${question.choiceC}</li>
								<li id="option_d_li"><i></i> <input type="radio"
									name="option" value="D_${question.gotoD}"> D.
									${question.choiceD}</li>
							</ul>
						</div>
					</div>
					<div class="question-box-picture">
						<img src="img/question-${question.id}.png" width="400"
							height="280" />
					</div>
				</div>
				<input class="question-box-submit" value="下一题" type="submit"></input>
				<div class="question-box-progress"></div>
			</div>
		</div>
	</form>
</body>
</html>