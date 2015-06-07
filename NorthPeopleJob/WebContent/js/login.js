$(function() {

	$("#regist").hide();
	$("#login").hide();
	// 登陆框出现
	// $("#regist").addClass("current");

	/**
	 * 正则检验电话 username 传入电话 return true 表示验证通过
	 */
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

	function check_all_input() {

		var checkpassed = true;

		if ($("input[name='regist_username']").val() == "") {
			checkpassed = false;
			var a = $("input[name='regist_username']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("请输入电话");
		} else if (!check_username($("input[name='regist_username']").val())) {
			checkpassed = false;
			var a = $("input[name='regist_username']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("格式不正确");
		} else {
			var a = $("input[name='regist_username']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("");
		}

		if ($("input[name='regist_password']").val() == "") {
			checkpassed = false;
			var a = $("input[name='regist_password']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("请输入密码");
		} else if (!check_password($("input[name='regist_password']").val())) {
			checkpassed = false;
			var a = $("input[name='regist_password']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("格式不正确");
		} else {
			var a = $("input[name='regist_password']").nextAll('span').eq(0);
			a.css({
				display : 'block'
			}).text("");
		}

		if ($("input[name='regist_passwordAgain']").val() == "") {
			checkpassed = false;
			var a = $("input[name='regist_passwordAgain']").nextAll('span').eq(
					0);
			a.css({
				display : 'block'
			}).text("请输入密码");
		}

		else if ($("input[name='regist_passwordAgain']").val() != $(
				"input[name='regist_password']").val()) {
			checkpassed = false;
			var a = $("input[name='regist_passwordAgain']").nextAll('span').eq(
					0);
			a.css({
				display : 'block'
			}).text("密码不一致");
		} else {
			var a = $("input[name='regist_passwordAgain']").nextAll('span').eq(
					0);
			a.css({
				display : 'block'
			}).text("");
		}
		return checkpassed;
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
	$("#regist_button")
			.click(
					function() {

						if (check_all_input()) {
							var regist_username = $(
									"input[name='regist_username']").val();

							$
									.ajax({
										type : "POST",
										url : "RegisterAction",
										data : {
											username : $(
													"input[name='regist_username']")
													.val(),
											password : $(
													"input[name='regist_password']")
													.val(),
										},
										success : function(msg) {
											if (msg == "success") {

												location.href = "home.jsp";
											}
											if (msg == "input") {
												var a = $(
														"input[name='regist_username']")
														.nextAll('span').eq(0);
												a.css({
													display : 'block'
												}).text("号码已存在");
											}
										}
									});
						}
					});

	$("#login_button").click(
			function() {

				if (check_part_input()) {

					var login_username = $("input[name='login_username']")
							.val();

					$.ajax({
						type : "POST",
						url : "LoginAction",
						data : {
							username : $("input[name='login_username']").val(),
							password : $("input[name='login_password']").val(),
						},
						success : function(msg) {
							if (msg == "success") {
								location.href = "home.jsp";
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

	$("#newuser_button").click(function() {
		$("#login").hide();
		$("#regist").addClass("current");
		$("#regist").fadeIn("fast");
		// 获取页面文档的高度
		var docheight = $(window).height();
		// 追加一个层，使背景变灰
		$("body").append("<div id='greybackground'></div>");
		$("#greybackground").css({
			"opacity" : "0.5",
			"height" : docheight
		});
		var docwidth = $(window).width();
		$("#regist").css("left", (docwidth - 360) / 2);
		$("#regist").css("top", (docheight - 330) / 2.618);
	});
	$("#login_href").click(function() {
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
	});
	$("#regist_close").click(function() {
		$("#regist").hide();
		$("#greybackground").remove();
	});
	$("#login_close").click(function() {
		$("#login").hide();
		$("#greybackground").remove();
	});

	
})