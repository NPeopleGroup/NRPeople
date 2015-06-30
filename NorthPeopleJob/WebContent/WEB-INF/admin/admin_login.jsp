<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天津积分落户自助测评网</title>
<script src="./js/jquery.js"></script>
<link rel="icon" href="./img/website.ico" type="image/x-icon" />
<link href="./css/login.css" rel="stylesheet">
<link href="./css/font-awesome-4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<script type="text/javascript">
	$(function() {

		$("#login").addClass("current");
		$("#login").fadeIn("fast");
		
		// 获取页面文档的高度
		var docheight = $(window).height();
		// 追加一个层，使背景变灰
		$("body").append("<div id='greybackground'></div>");
		$("#greybackground").css({
			"opacity" : "0.5",
			"height" : docheight
		});
		var docwidth = $(window).width();
		$("#login").css("left", (docwidth - 360) / 2);
		$("#login").css("top", (docheight - 240) / 2.618);

		function check_username(username) {
			if (/^(1)\d{10}$/.test(username))
				return true;
		}

		/**
		 * 正则检验用户名 password 传入用户名 return true 表示验证通过
		 */
		function check_password(password) {
			if (/^[0-9a-zA-Z]*$/.test(password))
				return true;
		}

		function check_part_input() {
			var checkpassed = true;
			if ($("input[name='login_username']").val() == "") {
				checkpassed = false;
				var a = $("input[name='login_username']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("请输入电话");
			} else if (!check_username($("input[name='login_username']").val())) {
				checkpassed = false;
				var a = $("input[name='login_username']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("格式不正确");
			} else {
				var a = $("input[name='login_username']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("");
			}

			if ($("input[name='login_password']").val() == "") {
				checkpassed = false;
				var a = $("input[name='login_password']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("请输入密码");
			} else if (!check_password($("input[name='login_password']").val())) {
				checkpassed = false;
				var a = $("input[name='login_password']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("格式不正确");
			} else {
				var a = $("input[name='login_password']").nextAll('span').eq(0);
				a.css({
					display : 'block'
				}).text("");
			}

			return checkpassed;
		}

		$("#login_button").click(
				function() {

					if (check_part_input()) {

						var login_username = $("input[name='login_username']")
								.val();

						$.ajax({
							type : "POST",
							url : "AdminLoginAction",
							data : {
								username : $("input[name='login_username']")
										.val(),
								password : $("input[name='login_password']")
										.val(),
							},
							success : function(msg) {
								if (msg == "success") {
									location.href = "adminManager";
								}
								if (msg == "input") {
									var a = $("input[name='login_password']")
											.nextAll('span').eq(0);
									a.css({
										display : 'block'
									}).text("密码不正确");
								}
							}
						});
					}
				});

	})
</script>
</head>
<body>
	<form id="login" class="current1" method="post"
		action="AdminLoginAction">
		<h3>用户登入</h3>
		<label>输入电话<input type="text" name="login_username" /><span>邮箱为空</span></label>
		<label>输入密码<input type="password" name="login_password" /><span>密码为空</span></label>
		<button type="button" id="login_button">登入</button>
	</form>
</body>
</html>