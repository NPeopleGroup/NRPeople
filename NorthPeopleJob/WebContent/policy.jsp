<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<script>$(function ()
{
	if (window.innerHeight){
		winHeight = window.innerHeight;
		$(".policy-box").css("margin-top", (winHeight-70-150-452)/3);
		$(".policy-box").css("margin-bottom", (winHeight-70-150-452)/3*2);
	}
});
</script>
<div class="policy-box">
  <div class="policy-box-title">天津市居住证积分入户相关政策</div>
  <div class="policy-box-line"> </div>
  <div class="policy-box-list">
    <p><a href="policy_example.jsp">天津市居住证积分入户管理实施细则（试行）</a></p>
    <div class="policy-box-dottedline"></div>
    <p><a href="policy_example.jsp">天津市居住证积分入户管理实施细则（试行）</a></p>
    <div class="policy-box-dottedline"></div>
    <p><a href="policy_example.jsp">天津市居住证积分入户管理实施细则（试行）</a></p>
    <div class="policy-box-dottedline"></div>
    <p><a href="policy_example.jsp">天津市居住证积分入户管理实施细则（试行）</a></p>
    <div class="policy-box-dottedline"></div>
  </div>
</div>
<%@ include file="footer.jsp" %>