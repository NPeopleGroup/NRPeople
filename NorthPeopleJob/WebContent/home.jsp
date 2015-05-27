<!DOCTYPE HTML>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<title>北方人才</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天津积分落户自助测评网</title>
<meta name="keywords"
	content="积分落户，积分入户，天津落户，落户政策，落户积分，落户指导，落户问卷，落户报名，落户登记">
<meta name="description"
	content="天津积分落户自助测，我们根据《2015年天津积分落户细则》，将复杂的积分落户算法提炼成约40个左右的简单的选择题，您只需几分钟的时间就能完成答题，了解自己的积分情况和需要准备的申请材料。最终的结果，不仅将包含您积分情况的总分预估，还会详细的根据您的大体情况，分类计算出基本分、导向分、附加分和负积分，并提供相关政策的指导，在政策允许范围内，帮助您合理增分。除了得分情况之外，系统还会根据您的答题情况，提示您需要准备的材料，避免您因为忘记携带某份材料而反复奔波。">
<link href="./css/public.css" rel="stylesheet">
<script src="./js/jquery.js"></script>
<link rel="icon" href="./img/website.ico" type="image/x-icon" />

<link href="./css/login.css" rel="stylesheet">

</head>
<style type="text/css">
body {
	margin: 0px; padding: 0px;
}

.linear {
	margin: 0px; padding: 0px; width: 100%; FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0, startColorStr=#b8c4cb, endColorStr=red);
	/*IE 6 7 8*/ background: -ms-linear-gradient(top, #62a1e8, #0db8c0); /* IE 10 */ background: -moz-linear-gradient(top, #62a1e8, #0db8c0); /*火狐*/
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#62a1e8), to(#0db8c0)); /*谷歌*/
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#62a1e8), to(#0db8c0)); /* Safari 4-5, Chrome 1-9*/
	background: -webkit-linear-gradient(top, #62a1e8, #0db8c0); /*Safari5.1 Chrome 10+*/ background: -o-linear-gradient(top, #62a1e8, #0db8c0);
	/*Opera 11.10+*/
}

#header {
	height: 100px; width: 100%; font-family: 微软雅黑; font: Verdana, Geneva, sans-serif; color: #FFF; font-weight: bolder; font-size: 50px;
}

#header span {
	display: block; margin: 0 auto; text-align: center;
}

#subheader {
	height: 50px; width: 100%; font-family: 微软雅黑; font: Verdana, Geneva, sans-serif; color: #FFF; font-weight: bolder; font-size: 15px;
}

#subheader span {
	display: block; margin: 0 auto; text-align: center;
}

#tag {
	width: 100px; height: 30px; float: right; background-color: #f14709;
}

#tag a {
	width: 50px; height: 30px; float: left;
}

#tag a:hover {
	background-color: #ee0f07;
}

#content {
	height: 50px; width: 100%;
}

#footer {
	height: 100px; width: 100%; background-color: #000;
}

#percentage {
	float: left;
}

#process1 {
	float: left;
}
#process2 {
	float: left;
}
#process3 {
	float: left;
}
#process4 {
	float: left;
}
#process5 {
	float: left;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#content").css("height", $(window).height() - 100 - 50 - 100);
		$("#percentage").css("margin-left", ($(window).width() - 400 - 1000)/2);
		$(".linear").css("height", $(window).height());
		$("#process1").mouseover(
				function() {
					$("#process1 img").attr("src",
							"./img/process1_unfinished_hover.png");
				});
		$("#process1").mouseout(function() {
			$("#process1 img").attr("src", "./img/process1_unfinished.png");
		});
		$("#process2").mouseover(
				function() {
					$("#process2 img").attr("src",
							"./img/process2_unfinished_hover.png");
				});
		$("#process2").mouseout(function() {
			$("#process2 img").attr("src", "./img/process2_unfinished.png");
		});
		$("#process3").mouseover(
				function() {
					$("#process3 img").attr("src",
							"./img/process3_unfinished_hover.png");
				});
		$("#process3").mouseout(function() {
			$("#process3 img").attr("src", "./img/process3_unfinished.png");
		});
		$("#process4").mouseover(
				function() {
					$("#process4 img").attr("src",
							"./img/process4_unfinished_hover.png");
				});
		$("#process4").mouseout(function() {
			$("#process4 img").attr("src", "./img/process4_unfinished.png");
		});
		$("#process5").mouseover(
				function() {
					$("#process5 img").attr("src",
							"./img/process5_unfinished_hover.png");
				});
		$("#process5").mouseout(function() {
			$("#process5 img").attr("src", "./img/process5_unfinished.png");
		});
	});
</script>
<body>
	<div class="linear">
		<div id="header">
			<span>天津市积分落户自主测评平台</span>
		</div>
		<div id="subheader">
			<span>精心设计的测评问题+一目了然的分数结果+详细罗列的所需材料</span>
			<div id="tag">
				<a href="www.baidu.com"><img alt="" src="./img/tag1.png"></a><a
					href="www.baidu.com"><img alt="" src="./img/tag2.png"></a>
			</div>
		</div>
		<div id="content">
			<div id="percentage">
				<img alt="" src="./img/percentage.png">
			</div>
			<div id="process1">
				<a href="www.baidu.com"><img alt="" src="./img/process1_unfinished.png"></a>
			</div>
			<div id="process2">
				<a href="www.baidu.com"><img alt="" src="./img/process2_unfinished.png"></a>
			</div>
			<div id="process3">
				<a href="www.baidu.com"><img alt="" src="./img/process3_unfinished.png"></a>
			</div>
			<div id="process4">
				<a href="www.baidu.com"><img alt="" src="./img/process4_unfinished.png"></a>
			</div>
			<div id="process5">
				<a href="www.baidu.com"><img alt="" src="./img/process5_unfinished.png"></a>
			</div>
		</div>
		<div id="footer">天津市积分落户自助测评平台</div>
	</div>
</body>
</html>