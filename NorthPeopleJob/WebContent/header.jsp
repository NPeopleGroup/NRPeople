<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天津积分落户自助测评网</title>
<meta name="keywords"
	content="积分落户，积分入户，天津落户，落户政策，落户积分，落户指导，落户问卷，落户报名，落户登记">
<meta name="description"
	content="天津积分落户自助测，我们根据《2015年天津积分落户细则》，将复杂的积分落户算法提炼成约40个左右的简单的选择题，您只需几分钟的时间就能完成答题，了解自己的积分情况和需要准备的申请材料。最终的结果，不仅将包含您积分情况的总分预估，还会详细的根据您的大体情况，分类计算出基本分、导向分、附加分和负积分，并提供相关政策的指导，在政策允许范围内，帮助您合理增分。除了得分情况之外，系统还会根据您的答题情况，提示您需要准备的材料，避免您因为忘记携带某份材料而反复奔波。">
<link href="./css/home.css" rel="stylesheet">
<link href="./css/public.css" rel="stylesheet">
<script src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/base_utils.js"></script>
<link rel="icon" href="./img/website.ico" type="image/x-icon" />

<link href="css/login.css" rel="stylesheet">
<link href="css/font-awesome-4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<script type="text/javascript" src="./js/login.js"></script>
</head>

<body>
	<div class="header">
		<div class="wrapper">
			<ul class="main-nav">
				<li><a href="./index.jsp">首页</a></li>
				<li><a href="./question.jsp">开始测评</a></li>
				<li><a href="./policy.jsp">相关政策</a></li>
				<li><a href="./help.jsp">帮助</a></li>
			</ul>
			<div class="entry">

				<%
					String NorthPeopleJob_username = (String) session
							.getAttribute("NorthPeopleJob_username");
					if (NorthPeopleJob_username != null) {
						out.print("<ul class=\"util-nav\"><li>欢迎您！"
								+ NorthPeopleJob_username.substring(0, 3)
								+ "XXXX"
								+ NorthPeopleJob_username
										.substring(NorthPeopleJob_username.length() - 4)
								+ "</li></ul>");
					} else {
						out.print("<ul class=\"util-nav\"><li><a id=\"login_href\">登录</a></li><li>|</li><li><a id=\"regist_href\">注册</a></li></ul>");
					}
				%>


			</div>
		</div>
	</div>


	<form id="regist" class="current1" method="post">
		<h3>注册</h3>
		<label>输入电话<input type="text" name="regist_username" /><span>电话为空</span></label>
		<label>输入密码<input type="password" name="regist_password" /><span>密码为空</span></label>
		<label>确认密码<input type="password" name="regist_passwordAgain" /><span>密码为空</span></label>
		<button type="button" id="regist_button">注册</button>
	</form>



	<form id="login" class="current1" method="post">
		<h3>用户登入</h3>
		<label>输入电话<input type="text" name="login_username" /><span>邮箱为空</span></label>
		<label>输入密码<input type="password" name="login_password" /><span>密码为空</span></label>
		<button type="button" id="login_button">登入</button>
	</form>