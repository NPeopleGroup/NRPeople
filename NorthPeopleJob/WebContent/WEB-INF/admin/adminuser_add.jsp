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
</head>
<body>
	<div class="container">
		<div class="row">
			<form id="myFrom" class="form-horizontal span24" action="addAdminUser">
				<legend>增加业务员信息</legend>
				<div class="row">
					<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							用户名
						</label>
						<div class="controls">
							<input name="username" type="text" data-rules="{required:true}" class="input-normal control-text"></div>
					</div>
					<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							密码
						</label>
						<div class="controls">
							<input name="password" type="password" class="input-normal control-text"/>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							用户类型
						</label>
						<div class="controls">
							<select name="type">
								<option>类型1</option>
								<option>类型2</option>
								<option>类型3</option>
							</select>
						</div>
					</div>
						<div class="control-group span8">
						<label class="control-label">
							<s>*</s>
							用户姓名
						</label>
						<div class="controls">
							<input type="text" name="name"></input>	
						</div>
					</div>	
				</div>
				<div class="row form-actions actions-bar">
					<div class="span13 offset3 ">
						<button type="submit" class="button button-primary">保存</button>
						<button type="reset" class="button">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>