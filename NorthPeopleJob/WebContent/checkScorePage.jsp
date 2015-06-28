<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:iterator value="evaluationScoreList" id="evaluationScore">
		<s:property value="#evaluationScore.questionType" />：
		<s:property value="#evaluationScore.questionScore" />分<br>
	</s:iterator>
	
		<div>
		<a href="home.jsp">确认</a>
	</div>
</body>
</html>