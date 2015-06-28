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
	<s:iterator value="evaluationFileList" id="evaluationFile">
		<s:if test="#evaluationFile.questionFile!=''">	
		请您携带&nbsp;<s:property value="#evaluationFile.questionFile" />&nbsp;到
		 &nbsp;<s:property value="#evaluationFile.questionDepartment" /> &nbsp;登机，并注意
		<s:property value="#evaluationFile.questionHint" />
			<br>
		</s:if>
	</s:iterator>

	<div>
		<a href="home.jsp">确认</a>
	</div>
</body>
</html>