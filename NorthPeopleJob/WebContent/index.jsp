<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN" style="overflow: hidden; height: 100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天津积分落户自助测评网</title>
<meta name="keywords"
	content="积分落户，积分入户，天津落户，落户政策，落户积分，落户指导，落户问卷，落户报名，落户登记">
<meta name="description"
	content="天津积分落户自助测，我们根据《2015年天津积分落户细则》，将复杂的积分落户算法提炼成约40个左右的简单的选择题，您只需几分钟的时间就能完成答题，了解自己的落户积分情况和需要准备的申请材料。最终的结果，不仅将包含您积分情况的总分预估，还会详细的根据您的大体情况，分类计算出基本分、导向分、附加分和负积分，并提供相关政策的指导，在政策允许范围内，帮助您合理增分。除了得分情况之外，系统还会根据您的答题情况，提示您需要准备的材料，避免您因为忘记携带某份材料而反复奔波。">

<link rel="stylesheet" href="css/jquery.fullPage.css">
<link rel="stylesheet" href="css/buttons.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/vicons-font.css">
<link rel="stylesheet" href="css/index-page.css">

<link rel="shortcut icon" href="website.ico">
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.fullPage.min.js"></script>
<script>
	$(function() {
		if ($.browser.msie && $.browser.version < 10) {
			$('body').addClass('ltie10');
		}
		$.fn.fullpage({
			verticalCentered : false,
			anchors : [ 'page1', 'page2', 'page3', 'page4', 'page5', 'page6',
					'page7', 'page8', 'page9', 'page10' ],
			navigation : true,
			navigationTooltips : [ '首页', '视觉', '交互', '皮肤', '功能', '待办邮件',
					'联系人邮件', '科技', '连接易信', '马上体验' ]
		});
	});
</script>
<script type="text/javascript" src="js/base_utils.js"></script>
<link href="css/login.css" rel="stylesheet">
<link href="css/font-awesome-4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<script type="text/javascript" src="js/login.js"></script>



</head>
<body style="overflow: hidden; height: 100%; font-size: 60.48%;">
	<div id="superContainer" style="top: 0px;">

		<div class="section section1 active" data-anchor="page1"
			style="height: 499px;">
			<div class="bg">
				<img src="images/section9.jpg" alt="">
			</div>
			<div class="bg21"></div>
			<div class="bg22"></div>
			<!--	<div class="bg13"></div>-->
			<div class="hgroup" style="margin-top: -150px;"></div>
			<p class="p1" style="color: #FFF;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本测评根据《2015年天津积分落户细则》，将复杂的积分落户算法提炼成约40个左右的简单的选择题，您只需几分钟的时间就能完成答题，了解自己的积分情况和需要准备的申请材料。
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;化繁为简，免去您辛苦的阅读政策
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实时保存，可分数次答完
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每道选择题均配有指导图片
				<br></br>
				<button
					style="margin: 0 auto; width: 100%; margin-left: 150px; color: #FFF; line-height: 20px; border-radius: 10px; font-size: 15px; margin-top: 10px;"
					class="button button--winona button--border-thin button--text-thick button--inverted"
					id="login_href" data-text="进 入 测 评 系 统">
					<span>进 入 测 评 系 统</span>
				</button>
			</p>

		</div>

		<div class="section section2" data-anchor="page2"
			style="height: 499px;">
			<div class="bg">
				<img src="images/section3.jpg" alt="">
			</div>
			<div class="bg31"></div>
			<div class="bg23"></div>
			<p class="p1" style="color: #FFF; margin-top: -25px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本测评的最终结果，不仅将包含您积分情况的总分预估和分数组成，还会根据您的答题情况，提示您需要准备的材料及其份数，避免您因为忘记携带某份材料而反复奔波，助您一次提交申请，一次审核通过。
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考核结果一目了然，简单易懂
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;详细分类，为您展示分数组成
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提示待提交材料列表并支持打印功能
			</p>
		</div>

		<div class="section section9" data-anchor="page5"
			style="height: 499px;">
			<div class="bg">
				<img src="images/section1.jpg" alt="">
			</div>
			<p class="p1" style="color: #FFF; margin-top: -20px;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本测评现已成为北方人才指定的落户测评系统，在完成答题后，系统新增了个人落户信息填报环节，该环节中您填报的信息将直接与北方人才的落户受理系统进行对接。
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;直接对接北方人才受理系统
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提高信息录入的准确性
				<br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&diams;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;缩短落户申请的办理时间
			</p>
			<div class="bg232"></div>
		</div>
	</div>

	<form id="regist" class="current1" method="post">
		<img src="img/form_close.png" id="regist_close"></img>
		<h3>注册</h3>
		<label>输入电话<input type="text" name="regist_username" /><span>电话为空</span></label>
		<label>输入密码<input type="password" name="regist_password" /><span>密码为空</span></label>
		<label>确认密码<input type="password" name="regist_passwordAgain" /><span>密码为空</span></label>
		<button type="button" id="regist_button">注册</button>
	</form>



	<form id="login" class="current1" method="post">
		<img src="img/form_close.png" id="login_close"></img>
		<h3>用户登录</h3>
		<label>输入电话<input type="text" name="login_username" /><span>邮箱为空</span></label>
		<label>输入密码<input type="password" name="login_password" /><span>密码为空</span></label>
		<button type="button" id="login_button">登录</button>
		<button type="button" id="newuser_button">新用户注册</button>
	</form>
</body>
</html>