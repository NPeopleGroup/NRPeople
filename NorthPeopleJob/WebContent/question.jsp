<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<script>
//调整Question页面的高度
$(function ()
{
	if (window.innerHeight){
		winHeight = window.innerHeight;
		$(".question-box").css("margin-top", (winHeight-70-150-452)/3);
		$(".question-box").css("margin-bottom", (winHeight-70-150-452)/3*2);
	}
});
</script>
<div class="question-box">
  <div class="question-box-title">天津市积分落户自助测评</div>
  <div class="question-box-line">
    <div class="question-box-line-fill"></div>
  </div>
  <div class="question-box-question">
    <div class="question-box-text">
      <div class="question-box-stem">2.您在天津的工作性质是？</div>
      <div class="question-box-option">
        <ul>
          <li><i></i>
            <input type="radio" name="option" class="question-box-option-unchecked">
            A. 单位职工</li>
          <li><i></i>
            <input type="radio" name="option">
            B. 企业法定代表</li>
          <li><i></i>
            <input type="radio" name="option">
            C. 个体经营者</li>
          <li><i></i>
            <input type="radio" name="option">
            D. 待业</li>
        </ul>
      </div>
    </div>
    <div class="question-box-picture"><img src="img/129553.jpg" width="400" height="280" /></div>
  </div>
  <div class="question-box-submit">下一题</div>
  <div class="question-box-progress"></div>
</div>
<%@ include file="footer.jsp" %>