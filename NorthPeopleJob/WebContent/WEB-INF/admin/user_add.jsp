<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>增加业务员</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="./assets/css/main-min.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="./js/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<form id="myFrom" class="form-horizontal span24">
				<legend>增加业务员信息</legend>
				<div class="row">
					<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							用户名
						</label>
						<div class="controls">
							<input name="username" id="username" type="text" data-rules="{required:true}" class="input-normal control-text"></div>
					</div>
					<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							密码
						</label>
						<div class="controls">
							<input name="password" id="password" type="password" class="input-normal control-text"/>
						</div>
					</div>
				</div>
				<div>
					<div class="span13 offset3 ">
						<input type="button" class="button button-primary" id="mySubmitButton" value="提交"></input>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$("#mySubmitButton").bind('click',function() {
			alert("click");
			/* Act on the event */
			$.ajax({
				url: 'addUser',
				dataType: 'json',
				data: {
					"username":$("#username").val(),
					"password":$("#password").val()
				},
				success:function(data){
					if(data.result=="success")
					{
						alert("增加成功!");	
						window.location.href="userList";
					}
				},
				error:function(){
					alert("增加失败，请重试!");	
				}
			})
		});
	</script>
</body>
</html>