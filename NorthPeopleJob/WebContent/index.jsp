<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN" style="overflow: hidden; height: 100%;">
<head>
<meta charset="utf-8">
<title>天津积分落户自助测评网222</title>
<link rel="stylesheet" href="css/jquery.fullPage.css">
<link rel="stylesheet" href="css/buttons.css">
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/vicons-font.css">
<link rel="shortcut icon" href="website.ico">
<style>
* {
	margin: 0; padding: 0;
}

body {
	font: 16px/1.8 "Microsoft Yahei", verdana;
}

/* 右侧导航 */
#fullPage-nav {
	_display: none; font-size: 12px;
}

#fullPage-nav li {
	width: 90px; height: 21px; margin: 10px 0 0; vertical-align: middle;
}

#fullPage-nav li a {
	float: right; width: 21px; height: 21px; color: #8F9DA4; text-decoration: none; text-align: right; background: url(images/dot.png) 5px 5px no-repeat;
}

#fullPage-nav li .active {
	background-position: 0 bottom;
}

#fullPage-nav span {
	display: none;
}

#fullPage-tooltip {
	float: left; top: 0; margin-right: 5px; font: 12px "Microsoft Yahei"; color: #8F9DA4; line-height: 21px;
}

.section {
	position: relative; overflow: hidden;
}

.section .bg {
	position: absolute; left: 0; top: 0; width: 100%; height: 100%;
}

.section .bg img {
	display: block; width: 100%; height: 100%;
}

.bg11 {
	position: absolute; bottom: 0; width: 100%; height: 850px; background: url(images/bg11.png) 50% 0 no-repeat; transition: all 1s;
}

.bg12 {
	position: absolute; bottom: -392px; width: 100%; height: 392px; background: url(images/bg12.png) 50% 0 no-repeat; opacity: 0; transition: all 1.7s;
	bottom: 90px\0;
}

.bg13 {
	position: absolute; bottom: -377px; width: 100%; height: 377px; background: url(images/introduction.png) 50% 0 no-repeat; transition: all 1s;
}

.hgroup {
	position: absolute; width: 554px; height: 176px; left: 50%; top: 25%; margin: 0 0 0 -277px; text-indent: -9999px;
	background-image: url(images/slogan.png); opacity: 0; -webkit-transform: scale(0.5, 0.5); transform: scale(0.5, 0.5); transition: all 1s;
}

.p11 {
	position: absolute; left: 50%; top: 50%; width: 600px; margin: 0 0 0 -280px; font-size: 14px; color: #94a7c6; opacity: 0; transition: all 0.5s;
}

.mail {
	position: absolute; left: 50%; top: -26px; width: 375px; height: 26px; margin-left: -187px; background-image: url(images/logo.png);
	transition: all 1s;
}

.mail {
	float: left; height: 26px; text-indent: -9999px;
}

.mail-163 {
	float: left; width: 107px;
}

.mail-126 {
	float: left; width: 108px; margin-left: 23px;
}

.mail-yeah {
	float: right; width: 115px;
}

.bg21 {
	position: absolute; left: 50%; bottom: 15%; width: 819px; height: 250px; margin-left: -608px; margin-bottom: 40px;
	background: url(images/bg21.png) 0 0 no-repeat; transition: all 1s; opacity: 0; margin-left: -1108px;
}

.bg22 {
	position: absolute; left: 50%; bottom: 15%; width: 819px; height: 299px; margin-left: -280px; margin-bottom: 70px;
	background: url(images/bg22.png) right 0 no-repeat; transition: all 1s; opacity: 0; margin-left: 320px;
}

.bg23 {
	position: absolute; left: 50%; bottom: 15%; width: 819px; height: 325px; margin-left: -409px; background: url(images/hailiang.png) 50% 0 no-repeat;
	transition: all 1s; bottom: -40%;
}

.bg231 {
	position: absolute; left: 50%; bottom: 15%; width: 819px; height: 325px; margin-left: -409px; background: url(images/advantage.png) 50% 0 no-repeat;
	transition: all 1s; bottom: -40%;
}

.bg232 {
	position: absolute; left: 50%; bottom: 15%; width: 819px; height: 325px; margin-left: -409px; background: url(images/company.png) 50% 0 no-repeat;
	transition: all 1s; bottom: -40%;
}

.section strong {
	position: absolute; left: 50%; top: 15%; z-index: 10; width: 512px; height: 45px; margin-left: -256px; font-size: 24px; font-weight: 500;
	color: #748A9E; opacity: 0; -webkit-transform: scale(0.5, 0.5); transform: scale(0.5, 0.5); transition: all 1s;
}

.section h3 {
	position: absolute; left: 50%; top: 15%; z-index: 10; width: 512px; height: 45px; margin-left: -256px; margin-top: 60px; text-indent: -9999px;
	background-repeat: no-repeat; opacity: 0; -webkit-transform: scale(0.5, 0.5); transform: scale(0.5, 0.5); transition: all 1s;
}

.q1 {
	position: absolute; left: 50%; top: 15%; width: 700px; margin-left: -255px; margin-top: 130px; font-size: 16px; color: #ffffff; opacity: 0;
	transition: all 1s;
}

.p1 {
	position: absolute; left: 50%; top: 15%; width: 550px; margin-left: -255px; margin-top: 100px; font-size: 14px; color: #727F8C; opacity: 0;
	transition: all 1s;
}

.section2 h3 {
	background-image: url(images/t2.png);
}

.section3 h3 {
	background-image: url(images/t3.png);
}

.section4 h3 {
	background-image: url(images/t4.png);
}

.section5 h3 {
	background-image: url(images/t5.png);
}

.section6 strong {
	width: 561px; margin-left: -280px;
}

.section6 h3 {
	width: 561px; margin-left: -280px; background-image: url(images/t6.png);
}

.section7 strong {
	width: 561px; margin-left: -280px;
}

.section7 h3 {
	width: 561px; margin-left: -280px; background-image: url(images/t7.png);
}

.section8 strong {
	width: 561px; margin-left: -280px;
}

.section8 h3 {
	width: 561px; margin-left: -280px; background-image: url(images/t8.png);
}

.section9 strong {
	width: 609px; margin-left: -304px;
}

.section9 h3 {
	width: 609px; margin-left: -304px; background-image: url(images/t9.png);
}

.section9 h3 span {
	position: absolute; left: -100px; top: -48px; width: 89px; height: 90px; background-image: url(images/yixin.png);
}

.bg31 {
	position: absolute; left: 50%; bottom: 0; width: 892px; height: 472px; margin-left: -396px; margin-bottom: 80px;
	background-image: url(images/bg31.png); opacity: 0; transition: all 1s;
}

.bg32 {
	position: absolute; left: 50%; bottom: 0; width: 892px; height: 472px; margin-left: -396px; background: url(images/bg32.png) 470px bottom no-repeat;
	opacity: 0; transition: all 1s;
}

.bg33 {
	position: absolute; left: 50%; bottom: 0; width: 441px; height: 380px; margin-left: 50%; background: url(images/bg33.png) 0 0 no-repeat; opacity: 0;
	transition: all 1s;
}

.p3 {
	position: absolute; width: 430px; left: 50%; top: 15%; margin-top: 250px; margin-left: -100%; font-size: 16px; color: #FFFDE1; opacity: 0;
	transition: all 1s;
}

.bg41 {
	position: absolute; bottom: -372px; width: 100%; height: 372px; background: url(images/bg41.png) 50% 0 no-repeat; transition: all 1s;
}

.bg42 {
	position: absolute; bottom: -449px; width: 100%; height: 449px; background: url(images/bg42.png) 50% 0 no-repeat; transition: all 1s;
}

.bg43 {
	position: absolute; bottom: -449px; width: 100%; height: 449px; margin-bottom: -130px; background: url(images/bg43.png) 50% 0 no-repeat;
	transition: all 1s;
}

.bg51, .bg52, .bg53, .bg54 {
	position: absolute; z-index: 1; width: 208px; left: 50%; bottom: 20%; padding-top: 210px; color: #fff;
}

.section5 h4 {
	margin-bottom: 12px; font-size: 23px; font-weight: 500;
}

.section5 p {
	font-size: 14px;
}

.bg51 {
	margin-left: -851px; background: url(images/bg51.png) 50% 0 no-repeat; opacity: 0; transition: all 1s;
}

.bg52 {
	margin-left: -403px; background: url(images/bg52.png) 50% 0 no-repeat; opacity: 0; transition: all 1s;
}

.bg53 {
	margin-left: 195px; background: url(images/bg53.png) 50% 0 no-repeat; opacity: 0; transition: all 1s;
}

.bg54 {
	margin-left: 645px; background: url(images/bg54.png) 50% 0 no-repeat; opacity: 0; transition: all 1s;
}

.bg61 {
	position: absolute; top: -454px; width: 100%; height: 545px; background: url(images/bg61.png) 50% 0 no-repeat; transition: all 1s;
}

.bg62 {
	position: absolute; left: 10%; bottom: 20%; width: 597px; height: 284px; margin-left: -507px; background-image: url(images/bg62.png);
	transition: all 1s;
}

.txt6 {
	position: absolute; left: 90%; bottom: 20%; width: 447px; margin-left: 90px; opacity: 0; transition: all 1s;
}

.txt6 p {
	margin-bottom: 17px; color: #5C7970;
}

.bg71 {
	position: absolute; left: 50%; bottom: -201px; width: 699px; height: 201px; margin-left: -630px; background: url(images/bg71.png) 50% 0 no-repeat;
	opacity: 0; transition: all 1s;
}

.bg72 {
	position: absolute; left: 50%; bottom: -206px; width: 182px; height: 206px; margin-left: -170px; background: url(images/bg72.png) 50% 0 no-repeat;
	opacity: 0; transition: all 1s;
}

.bg73 {
	position: absolute; left: 50%; bottom: 170px; width: 651px; height: 231px; margin-left: -530px; background: url(images/bg73.png) 50% 0 no-repeat;
}

.bg74 {
	position: absolute; left: 0; bottom: 0; width: 100%; height: 100%;
}

.bg74 img {
	position: absolute; left: 0; bottom: 0; width: 100%; height: 251px;
}

.txt7 {
	position: absolute; left: 50%; bottom: -150px; width: 420px; margin-left: 100px; opacity: 0; transition: all 1s;
}

.txt7 p {
	margin-bottom: 17px; color: #EAEFF2;
}

.bg81 {
	position: absolute; width: 100%; bottom: 100px; height: 215px; background: url(images/bg81.png) 50% 0 no-repeat;
}

.bg82 {
	position: absolute; left: 50%; bottom: 160px; width: 164px; height: 117px; margin-left: -180px; background-image: url(images/bg82.png); opacity: 0;
	transition: all 1s;
}

.bg83 {
	position: absolute; left: 50%; bottom: 280px; width: 70px; height: 29px; margin-left: -330px; background-image: url(images/bg83.png); opacity: 0;
	transition: all 1s;
}

.bg84 {
	position: absolute; left: 50%; bottom: 320px; width: 43px; height: 26px; margin-left: -410px; background-image: url(images/bg84.png); opacity: 0;
	transition: all 1s;
}

.p8 {
	position: absolute; left: 50%; top: 15%; width: 565px; margin-left: -282px; margin-top: 130px; font-size: 16px; color: #727F8C; opacity: 0;
	transition: all 1s;
}

.bg91, .bg92, .bg93 {
	padding-top: 350px; font-size: 16px; color: #fff;
}

.bg91 {
	position: absolute; left: 50%; bottom: 15%; width: 340px; margin-left: -970px; background: url(images/bg91.png) 0 0 no-repeat; opacity: 0;
	transition: all 1s;
}

.bg91 p {
	position: relative; left: 20px; margin-left: 40px; border-right: 1px solid #13AB86;
}

.bg92 {
	position: absolute; left: 50%; bottom: 15%; width: 340px; margin-left: -180px; background: url(images/bg92.png) 50% 0 no-repeat; opacity: 0;
	transition: all 1s;
}

.bg92 p {
	position: relative; left: 40px; margin-left: 30px;
}

.bg93 {
	position: absolute; left: 50%; bottom: 15%; width: 340px; margin-left: 630px; background: url(images/bg93.png) 50% 0 no-repeat; opacity: 0;
	transition: all 1s;
}

.bg93 p {
	position: relative; left: -20px; padding-left: 100px; border-left: 1px solid #13AB86;
}

.bg101 {
	position: absolute; width: 100%; height: 100%; background: url(images/bg101.png) 50% 20% no-repeat;
}

.bg102 {
	position: absolute; width: 100%; top: 25%; height: 79px; background: url(images/bg102.png) 50% 0 no-repeat; opacity: 0;
	-webkit-transform: scale(0.5, 0.5); transform: scale(0.5, 0.5); transition: all 1s;
}

.bg103 {
	position: absolute; width: 100%; top: 25%; height: 37px; margin-top: 110px; background: url(images/bg103.png) 50% 0 no-repeat; opacity: 0;
	-webkit-transform: scale(0.5, 0.5); transform: scale(0.5, 0.5); transition: all 1s;
}

.go {
	position: absolute; left: 50%; top: 55%; width: 254px; height: 70px; margin-top: 220px; margin-left: -127px; text-indent: -9999px;
	background-image: url(images/btn.png); opacity: 0; transition: all 1s;
}

.copyright {
	position: absolute; left: 0; bottom: 20px; width: 100%; text-align: center; font-size: 0;
}

.copyright a, .copyright span {
	margin: 0 7px; font-size: 12px; color: #a0a0a0;
}

/* CSS3过度及动画 */
.active strong, .active h3 {
	opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); transition-delay: 0.7s;
}

.active .p1 {
	opacity: 1; transition-duration: 1s; transition-delay: 2s;
}

.active .bg12 {
	bottom: 90px; opacity: 1; transition-delay: 0.7s;
}

.active .bg13 {
	bottom: 0; opacity: 1; transition-delay: 0.7s;
}

.active .hgroup {
	opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); transition-delay: 0.7s;
}

.active .mail {
	top: 25px; transition-delay: 0.7s;
}

.active .q1 {
	opacity: 1; transition-duration: 1s; transition-delay: 2s;
}

.active .bg21 {
	opacity: 1; margin-left: -608px; transition-delay: 0.7s;
}

.active .bg23 {
	bottom: 1%; transition-delay: 0.7s;
}

.active .bg231 {
	bottom: 8%; transition-delay: 0.7s;
}

.active .bg232 {
	bottom: 2%; transition-delay: 0.7s;
}

.active .bg22 {
	margin-left: -280px; opacity: 1; transition-delay: 0.7s;
}

.active .p3 {
	margin-left: -480px; opacity: 1; transition-delay: 0.7s;
}

.active .bg31, .active .bg32 {
	opacity: 1; transition-delay: 1s;
}

.active .bg33 {
	margin-left: -120px; opacity: 1; transition-delay: 0.7s;
}

.active .bg41 {
	bottom: 15%; transition-delay: 0.7s;
}

.active .bg42 {
	bottom: 15%; transition-delay: 1.1s;
}

.active .bg43 {
	bottom: 15%; transition-delay: 0.9s;
}

.active .bg51 {
	margin-left: -551px; opacity: 1; transition-delay: 0.7s;
}

.active .bg52 {
	margin-left: -253px; opacity: 1; transition-delay: 0.7s;
}

.active .bg53 {
	margin-left: 45px; opacity: 1; transition-delay: 0.7s;
}

.active .bg54 {
	margin-left: 345px; opacity: 1; transition-delay: 0.7s;
}

.active .bg61 {
	top: 0; transition-delay: 0.7s;
}

.active .bg62 {
	left: 50%; opacity: 1; transition-delay: 0.7s;
}

.active .txt6 {
	left: 50%; opacity: 1; transition-delay: 0.7s;
}

.active .bg71 {
	bottom: 250px; opacity: 1; transition-delay: 0.7s;
}

.active .bg72 {
	bottom: 350px; opacity: 1; transition-delay: 0.9s;
}

.active .txt7 {
	bottom: 420px; opacity: 1; transition-delay: 1.1s;
}

.active .bg82 {
	bottom: 260px; margin-left: -280px; opacity: 1; transition-delay: 0.7s;
}

.active .bg83 {
	bottom: 380px; margin-left: -430px; opacity: 1; transition-delay: 1s;
}

.active .bg84 {
	bottom: 420px; margin-left: -510px; opacity: 1; transition-delay: 1.2s;
}

.active .p8 {
	opacity: 1; transition-delay: 1.7s;
}

.active .bg91 {
	margin-left: -570px; opacity: 1; transition-delay: 0.7s;
}

.active .bg92 {
	opacity: 1; transition-delay: 0.8s;
}

.active .bg93 {
	margin-left: 230px; opacity: 1; transition-delay: 0.7s;
}

.active .bg102, .active .bg103 {
	opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); transition-delay: 0.7s;
}

.active .go {
	top: 25%; opacity: 1; transition-delay: 1.2s;
}

/* for lt ie 10 */
.ltie10 strong, .ltie10 h3 {
	opacity: 1; transform: scale(1, 1); transition-delay: 0.7s;
}

.ltie10 .p1 {
	opacity: 1; transition-delay: 1.7s;
}

.ltie10 .bg12 {
	bottom: 90px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg13 {
	bottom: 0; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .hgroup {
	opacity: 1; transform: scale(1, 1); transition-delay: 0.7s;
}

.ltie10 .mail {
	top: 25px; transition-delay: 0.7s;
}

.ltie10 .p11 {
	opacity: 1; transition-duration: 1s; transition-delay: 2s;
}

.ltie10 .bg21 {
	opacity: 1; margin-left: -608px; transition-delay: 0.7s;
}

<!--
.ltie10 .bg23 {
	bottom: 0%; transition-delay: 0.7s;
}

-->
.ltie10 .bg22 {
	margin-left: -280px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .p3 {
	margin-left: -480px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg31, .ltie10 .bg32 {
	opacity: 1; transition-delay: 1s;
}

.ltie10 .bg33 {
	margin-left: -120px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg41 {
	bottom: 15%; transition-delay: 0.7s;
}

.ltie10 .bg42 {
	bottom: 15%; transition-delay: 1.1s;
}

.ltie10 .bg43 {
	bottom: 15%; transition-delay: 0.9s;
}

.ltie10 .bg51 {
	margin-left: -551px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg52 {
	margin-left: -253px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg53 {
	margin-left: 45px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg54 {
	margin-left: 345px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg61 {
	top: 0; transition-delay: 0.7s;
}

.ltie10 .bg62 {
	left: 50%; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .txt6 {
	left: 50%; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg71 {
	bottom: 250px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg72 {
	bottom: 350px; opacity: 1; transition-delay: 0.9s;
}

.ltie10 .txt7 {
	bottom: 420px; opacity: 1; transition-delay: 1.1s;
}

.ltie10 .bg82 {
	bottom: 260px; margin-left: -280px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg83 {
	bottom: 380px; margin-left: -430px; opacity: 1; transition-delay: 1s;
}

.ltie10 .bg84 {
	bottom: 420px; margin-left: -510px; opacity: 1; transition-delay: 1.2s;
}

.ltie10 .p8 {
	opacity: 1; transition-delay: 1.7s;
}

.ltie10 .bg91 {
	margin-left: -570px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg92 {
	opacity: 1; transition-delay: 0.8s;
}

.ltie10 .bg93 {
	margin-left: 230px; opacity: 1; transition-delay: 0.7s;
}

.ltie10 .bg102, .ltie10 .bg103 {
	opacity: 1; transform: scale(1, 1); transition-delay: 0.7s;
}

.ltie10 .go {
	top: 25%; opacity: 1; transform: scale(1, 1); transition-delay: 1.2s;
}
</style>
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
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本测评根据《2015年天津积分落户细则》，将复杂的积分落户算法提炼成约40个左右的简单的选择题，您只需几分钟的时间就能完成答题，了解自己的积分情况和需要准备的申请材料。
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp化繁为简，免去您辛苦的阅读政策
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp实时保存，可分数次答完
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp每道选择题均配有指导图片
				<br></br>
				<button
					style="margin: 0 auto; width: 100%; margin-left: 150px; color: #FFF; line-height: 20px; border-radius: 10px; font-size: 15px; margin-top: 10px;"
					class="button button--winona button--border-thin button--text-thick button--inverted"
					data-text="进 入 测 评 系 统" onclick="parent.location='./home.jsp'";">
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
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本测评的最终结果，不仅将包含您积分情况的总分预估和分数组成，还会根据您的答题情况，提示您需要准备的材料及其份数，避免您因为忘记携带某份材料而反复奔波，助您一次提交申请，一次审核通过。
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp考核结果一目了然，简单易懂
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp详细分类，为您展示分数组成
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp提示待提交材料列表并支持打印功能
			</p>
		</div>

		<div class="section section9" data-anchor="page5"
			style="height: 499px;">
			<div class="bg">
				<img src="images/section1.jpg" alt="">
			</div>
			<p class="p1" style="color: #FFF; margin-top: -20px;">
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp本测评现已成为北方人才指定的落户测评系统，在完成答题后，系统新增了个人落户信息填报环节，该环节中您填报的信息将直接与北方人才的落户受理系统进行对接。
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp直接对接北方人才受理系统
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp提高信息录入的准确性
				<br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&diams;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp缩短落户申请的办理时间
			</p>
			<div class="bg232"></div>
		</div>
</body>
</html>