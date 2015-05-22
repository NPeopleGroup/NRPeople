<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Examples</title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<link href="css/register.css" rel="stylesheet">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="js/register.js"></script>
	<script type="text/javascript" src="js/util.js"></script>
	<script type="text/javascript" src="js/PCASClass.js"></script>
	<script type="text/javascript" src="js/jquery.cityselect.js"></script>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div class="container">
		<div class="jzzzl_box">
			<div class="jzzzl_box_main">
				<table width="778" border="0" cellspacing="10" cellpadding="0">
					<tbody>
						<tr>
							<td width="758">
								<form name="submitForm" method="post" action="getPara">
									<input type="hidden" value="4508439" name="regId" id="regId">
									<input type="hidden" value="20151022470" name="regNo">
									<input type="hidden" name="pnumroles" id="pnumroles">
									<input type="hidden" name="opt" id="opt" value="create">
									<input type="hidden" name="oid" id="oid" value="null">
									<input type="hidden" name="sldd" id="sldd" value="10">
									<input type="hidden" name="checkdata" id="checkdata" value="">
									<table width="758" border="0" cellspacing="0" cellpadding="0">

										<tbody>
											<tr>
												<td height="49" colspan="6" align="center" valign="middle" background="./img/t1-3-2.jpg">
													<table width="758" border="0" cellspacing="0" cellpadding="0">
														<tbody>
															<tr>
																<td width="252" height="49">
																	<img src="./img/JZZZL.gif" width="252" height="49" border="0"></td>
																<td width="1" height="49">
																	<img src="./img/JZZZL.gif" width="1" height="49"></td>
																<td width="252" height="49">
																	<img src="./img/JZZZL.gif" width="252" height="49" border="0"></td>
																<td width="1" height="49">
																	<img src="./img/JZZZL.gif" width="1" height="49"></td>
																<td width="252" height="49">
																	<img src="./img/JZZZL.gif" width="252" height="49" border="0"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td height="1" colspan="6" bgcolor="#F5F9FC"></td>
											</tr>

											<tr>
												<td height="55" colspan="6" align="left" valign="top" bgcolor="#E4EDF2" class="jzzzl_box_main_font_01">填写须知：</td>
											</tr>
											<tr>
												<td height="5" colspan="6" bgcolor="#F5F9FC"></td>
											</tr>
											<tr>
												<td height="25" colspan="6" align="center" valign="middle" bgcolor="#E4EDF2" class="jzzzl_box_main_font_01">
													基本信息 <font color="#FF0000">（红色标注项为必填项）</font>
												</td>
											</tr>
											<tr>
												<td height="1" colspan="6" bgcolor="#F5F9FC"></td>
											</tr>
											<tr>
												<td height="1" colspan="6" bgcolor="#C3D0D9"></td>
											</tr>
											<tr>
												<td width="118" height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">申请人类型&nbsp;</td>
												<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input name="personType" id="personType1" type="radio" value="1" onkeyup="enterNext('idcard');">
													企业员工&nbsp;&nbsp;&nbsp;&nbsp;
													<input name="personType" id="personType2" type="radio" value="2" onkeyup="enterNext('idcard');">
													投资者&nbsp;&nbsp;&nbsp;&nbsp;
													<input name="personType" id="personType3" type="radio" value="3" onkeyup="enterNext('idcard');">个体工商户</td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">居住证/身份证号&nbsp;</td>
												<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input type="text" style="font-size:18px;font-weight: bold;" value="" size="61" name="cardID" id="idcard" maxlength="18" onkeyup="enterNext('xm');"></td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;</td>
												<td width="150" height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input type="text" style="font-size:12px;" name="xm" onfocus="this.select();" onkeyup="enterNext('xb');" tabindex="10" maxlength="10" id="xm" size="20" value=""></td>
												<td width="100" height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">性&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;</td>
												<td width="150" height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input name="xb" type="radio" value="男" onkeyup="enterNext('mz');" style="font-color: red;" tabindex="10" id="xb">
													男
													<input name="xb" type="radio" value="女" onkeyup="enterNext('mz');" style="font-color: red;" tabindex="10" id="xb2">女</td>
												<td width="100" height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">民&nbsp;&nbsp;&nbsp;&nbsp;族&nbsp;</td>
												<td width="150" height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<select id="mz" name="nationality" style="width:130px;" onkeyup="enterNext('csrq');" tabindex="10">
														<option value="1" selected="selected"></option>
														<option value="汉族">汉族</option>
														<option value="蒙古族">蒙古族</option>
														<option value="回族">回族</option>
														<option value="藏族">藏族</option>
														<option value="维吾尔族">维吾尔族</option>
														<option value="苗族">苗族</option>
														<option value="彝族">彝族</option>
														<option value="壮族">壮族</option>
														<option value="布依族">布依族</option>
														<option value="朝鲜族">朝鲜族</option>
														<option value="满族">满族</option>
														<option value="侗族">侗族</option>
														<option value="瑶族">瑶族</option>
														<option value="白族">白族</option>
														<option value="土家族">土家族</option>
														<option value="哈尼族">哈尼族</option>
														<option value="哈萨克族">哈萨克族</option>
														<option value="傣族">傣族</option>
														<option value="黎族">黎族</option>
														<option value="傈僳族">傈僳族</option>
														<option value="佤族">佤族</option>
														<option value="畲族">畲族</option>
														<option value="高山族">高山族</option>
														<option value="拉祜族">拉祜族</option>
														<option value="水族">水族</option>
														<option value="东乡族">东乡族</option>
														<option value="纳西族">纳西族</option>
														<option value="景颇族">景颇族</option>
														<option value="柯尔克孜族">柯尔克孜族</option>
														<option value="土族">土族</option>
														<option value="达斡尔族">达斡尔族</option>
														<option value="仫佬族">仫佬族</option>
														<option value="羌族">羌族</option>
														<option value="布朗族">布朗族</option>
														<option value="撒拉族">撒拉族</option>
														<option value="毛南族">毛南族</option>
														<option value="仡佬族">仡佬族</option>
														<option value="锡伯族">锡伯族</option>
														<option value="阿昌族">阿昌族</option>
														<option value="普米族">普米族</option>
														<option value="塔吉克族">塔吉克族</option>
														<option value="怒族">怒族</option>
														<option value="乌孜别克族">乌孜别克族</option>
														<option value="俄罗斯族">俄罗斯族</option>
														<option value="鄂温克族">鄂温克族</option>
														<option value="德昂族">德昂族</option>
														<option value="保安族">保安族</option>
														<option value="裕固族">裕固族</option>
														<option value="京族">京族</option>
														<option value="塔塔尔族">塔塔尔族</option>
														<option value="独龙族">独龙族</option>
														<option value="鄂伦春族">鄂伦春族</option>
														<option value="赫哲族">赫哲族</option>
														<option value="门巴族">门巴族</option>
														<option value="珞巴族">珞巴族</option>
														<option value="基诺族">基诺族</option>
													</select>
												</td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">出生日期&nbsp;</td>
												<td height="30"  width="180px" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input type="text" style="font-size:12px;" name="csrq" tabindex="10" onFocus="WdatePicker({isShowClear:false,readOnly:true})" id="csrq" size="20" value="">
													<img onclick="WdatePicker({el:'csrq'})" src="js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle"></td>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">政治面貌&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<select id="zzmm" name="zzmm" style="width:127px;" onkeyup="enterNext('hyzk');" tabindex="10">
														<option value="1" selected="selected"></option>
														<option value="中共党员">中共党员</option>
														<option value="中共预备党员">中共预备党员</option>
														<option value="共青团员">共青团员</option>
														<option value="民革会员">民革会员</option>
														<option value="民盟盟员">民盟盟员</option>
														<option value="民建会员">民建会员</option>
														<option value="民进会员">民进会员</option>
														<option value="农工党党员">农工党党员</option>
														<option value="致公党党员">致公党党员</option>
														<option value="九三学社社员">九三学社社员</option>
														<option value="台盟盟员">台盟盟员</option>
														<option value="无党派民主人士">无党派民主人士</option>
														<option value="群众">群众</option>
													</select>
												</td>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">婚姻状况&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<select id="hyzk" name="hyzk" style="width:130px;" onkeyup="enterNext('whcd');" tabindex="10">
														<option value="1" selected="selected"></option>
														<option value="已婚">已婚</option>
														<option value="未婚">未婚</option>
														<option value="丧偶">丧偶</option>
														<option value="离婚">离婚</option>
													</select>
												</td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">文化程度&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<select id="whcd" name="whcd" style="width:130px;" onkeyup="enterNext('xw');" tabindex="10">
														<option value="1" selected="selected"></option>
														<option value="研究生">研究生</option>
														<option value="大学本科">大学本科</option>
														<option value="大专和专科学校">大专和专科学校</option>
														<option value="中专和中技">中专和中技</option>
														<option value="技工学校">技工学校</option>
														<option value="高中">高中</option>
														<option value="初中">初中</option>
														<option value="小学">小学</option>
														<option value="文盲或半文盲">文盲或半文盲</option>
													</select>
												</td>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">学&nbsp;&nbsp;&nbsp;&nbsp;位&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<select id="xw" name="xw" style="width:130px;" onkeyup="enterNext('zy');" tabindex="10">
														<option value="1" selected="selected"></option>
														<option value="博士后">博士后</option>
														<option value="名誉博士">名誉博士</option>
														<option value="博士">博士</option>
														<option value="硕士">硕士</option>
														<option value="学士">学士</option>
														<option value="双学士">双学士</option>
														<option value="无">无</option>
													</select>
												</td>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">专&nbsp;&nbsp;&nbsp;&nbsp;业&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input style="font-size:12px;" name="zy" type="text" onfocus="this.select();" onkeyup="enterNext('zyzg');" tabindex="10" maxlength="50" class="textarea" id="zy" value=""></td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">职业资格&nbsp;</td>
												<td height="30" colspan="3" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input style="font-size:12px;" name="zyzg" type="text" onfocus="this.select();" onkeyup="enterNext('gz');" tabindex="10" maxlength="100" class="textarea" id="zyzg" size="61" value=""></td>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">工&nbsp;&nbsp;&nbsp;&nbsp;种&nbsp;</td>
												<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
													<input style="font-size:12px;" name="gz" type="text" onfocus="this.select();" onkeyup="enterNext('qcd_sj');" tabindex="10" maxlength="15" class="textarea" id="gz" size="20" value=""></td>
											</tr>
											<tr>
												<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
											</tr>
											<tr>
												<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">迁出地省市县（区）&nbsp;</td>
												<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
													&nbsp;省（市自治区）
													<select id="qcd_sj" name="province" style="width:200px;" tabindex="10">
												</select>
												&nbsp;&nbsp;&nbsp;市
												<select id="qcd_sj_sj" name="city" style="width:285px;" tabindex="10"></select>
											</td>
										</tr>
										<tr>
											<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">&nbsp;</td>
											<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;区（县）
												<select id="qcd" name="area" style="width:200px;" onkeyup="enterNext('hkszd');" tabindex="10"></select>
											</td>
										</tr>
										<tr>
											<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
										</tr>
										<tr>
											<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">迁出地详细地址&nbsp;</td>
											<td height="30" colspan="3" align="left" valign="middle" class="jzzzl_box_main_font_02">
												<input style="font-size:12px;" name="hkszd" type="text" onfocus="this.select();" onkeyup="enterNext('hkxz');" tabindex="10" maxlength="100" class="textarea" id="hkszd" size="61" value=""></td>
											<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">现户口性质&nbsp;</td>
											<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
												<select id="hkxz" name="hkxz" style="width:130px;" onkeyup="enterNext('hkdjjg');" tabindex="10">
													<option value="1" selected="selected"></option>
													<option value="未落常住户口">未落常住户口</option>
													<option value="非农业家庭户口">非农业家庭户口</option>
													<option value="农业家庭户口">农业家庭户口</option>
													<option value="非农业集体户口">非农业</option>
													<option value="农业集体户口">农业集体户口</option>
													<option value="自理口粮户口">自理口粮户口</option>
													<option value="寄住户口">寄住户口</option>
													<option value="暂住户口">暂住户口</option>
													<option value="地方城镇居民户口">地方城镇居民户口</option>
													<option value="其他户口">其他户口</option>
												</select>
											</td>
										</tr>
										<tr>
											<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
										</tr>
										<tr>
											<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">现户籍登记机关&nbsp;</td>
											<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
												<input style="font-size:12px;" name="hkdjjg" type="text" onfocus="this.select();" onkeyup="enterNext('nhkdjjgfj');" tabindex="10" maxlength="100" class="textarea" id="hkdjjg" size="61" value=""></td>

										</tr>
										<tr>
											<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
										</tr>
										<tr>
											<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">迁入地户籍登记机关&nbsp;</td>
											<td height="30" colspan="5" align="left" valign="middle" class="jzzzl_box_main_font_02">
												<div id="city_5">
													<select id="nhkdjjgfj" name="nhkdjjgfj" style="width:240px;" onchange="myPoliceChangeHandler(this)" tabindex="10">
														<option value="0"></option>

														<option value="01">天津市公安局和平分局</option>
														<option value="02">天津市公安局河东分局</option>
														<option value="03">天津市公安局河西分局</option>
														<option value="04">天津市公安局南开分局</option>
														<option value="05">天津市公安局河北分局</option>
														<option value="06">天津市公安局红桥分局</option>
														<option value="08">天津市滨海新区公安局开发分局</option>
														<option value="09">天津市滨海新区公安局汉沽分局</option>
														<option value="0A">天津市滨海新区公安局大港分局</option>
														<option value="0B">天津市公安局东丽分局</option>
														<option value="0C">天津市公安局西青分局</option>
														<option value="0D">天津市公安局津南分局</option>
														<option value="0E">天津市公安局北辰分局</option>
														<option value="12">天津市公安局武清分局</option>
														<option value="0M">天津市公安局铁城分局</option>
														<option value="15">天津市公安局宝坻分局</option>
														<option value="11">天津市公安局宁河分局</option>
														<option value="14">天津市公安局静海分局</option>
														<option value="16">天津市公安局蓟县分局</option>
														<option value="0F">天津市公安局天津港公安局</option>
														<option value="0I">天津市公安局钢城治安分局</option>
														<option value="0J">天津市滨海新区公安局保税分局</option>
														<option value="0L">天津市公安局海河教育园区分局</option>
														<option value="0N">天津市公安局高新分局</option>
														<option value="0Z">天津市滨海新区公安局</option>
														<option value="0S">天津市滨海新区公安局生态城分局</option>
														<option value="0T">天津市滨海新区公安局高新分局</option>
														<option value="07">天津市滨海新区公安局塘沽分局</option>

													</select>
													<select id="nhkdjjg" name="nhkdjjg" style="width:240px;" onkeyup="enterNext('zz');" tabindex="10">

														<!-- <option value="1201010001">和平分局院校</option>
													<option value="1201010002">和平分局南市派出所</option>
													<option value="1201010003">和平分局兴安路派出所</option>
													<option value="1201010004">和平分局甘肃路派出所</option>
													<option value="1201010005">和平分局东兴市场派出所</option>
													<option value="1201010006">和平分局南营门派出所</option>
													<option value="1201010007">和平分局劝业场派出所</option>
													<option value="1201010008">和平分局体育馆派出所</option>
													<option value="1201010009">和平分局新兴派出所</option>
													<option value="1201010010">和平分局民园派出所</option>
													<option value="1201010011">和平分局解放桥派出所</option>
													<option value="1201010012">和平分局劝业场派出所（治安所）</option>
													<option value="1201010013">和平分局小白楼派出所</option>
													<option value="1201010014">和平分局和平区看守所</option>
													<option value="1201010015">和平分局食品街治安派出所</option>
													<option value="1201010501">和平分局金街治安派出所</option>
													<option value="1201010502">和平分局解放路治安派出所</option>
													-->
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<tr>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">迁入地详细地址&nbsp;</td>
										<td height="30" colspan="3" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="zz" type="text" onfocus="this.select();" onkeyup="enterNext('lhdq');" tabindex="10" maxlength="100" class="textarea" id="zz" size="61" value=""></td>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">拟落户地区&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<select name="lhdq" style="width:130px;" id="lhdq" onkeyup="enterNext('dwmc');" tabindex="10" class="textarea">
												<option value="1" selected="selected"></option>
												<option value="11">和平区</option>
												<option value="12">河东区</option>
												<option value="13">河西区</option>
												<option value="14">河北区</option>
												<option value="15">南开区</option>
												<option value="16">红桥区</option>
												<option value="17">东丽区</option>
												<option value="18">西青区</option>
												<option value="19">津南区</option>
												<option value="20">北辰区</option>
												<option value="24">武清区</option>
												<option value="25">宝坻区</option>
												<option value="26">蓟县</option>
												<option value="27">静海县</option>
												<option value="28">宁河县</option>
												<option value="29">滨海新区</option>
												<option value="21">塘沽</option>
												<option value="22">汉沽</option>
												<option value="23">大港</option>
												<option value="30">开发区</option>
												<option value="31">保税区</option>
												<option value="32">高新区</option>
											</select>
										</td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<tr>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">现单位名称&nbsp;</td>
										<td height="30" colspan="3" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="dwmc" type="text" onfocus="this.select();" onkeyup="enterNext('dwdh');" maxlength="100" tabindex="10" class="textarea" id="dwmc" size="61" value="天津富强伟业精密五金有限公司"></td>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">单位电话&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="dwdh" type="text" onfocus="this.select();" onkeyup="enterNext('dwdz');" tabindex="10" maxlength="100" class="textarea" id="dwdh" size="20" value="15022781050"></td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<tr>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">单位地址&nbsp;</td>
										<td height="30" colspan="3" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="dwdz" type="text" onfocus="this.select();" onkeyup="enterNext('lxdh');" tabindex="10" class="textarea" maxlength="100" id="dwdz" size="61" value="天津市东丽区大毕庄工业区"></td>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">本人电话&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="lxdh" type="text" onfocus="this.select();" onkeyup="enterNext('cjbx');" tabindex="10" class="textarea" id="lxdh" maxlength="11" size="20" value=""></td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<tr>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">社保缴纳&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input name="cjbx" onkeyup="enterNext('hasJL');" type="radio" value="是" style="font-color: red;" tabindex="10" id="cjbx">
											是
											<input name="cjbx" onkeyup="enterNext('hasJL');" type="radio" value="否" style="font-color: red;" tabindex="10" id="cjbx2">否</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_04"></td>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04" colspan="2">积分期间有无行政拘留记录&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input name="hasJL" onkeyup="enterNext('cardregtime');" type="radio" value="有" style="font-color: red;" tabindex="10" id="hasJL">
											有
											<input name="hasJL" onkeyup="enterNext('cardregtime');" type="radio" value="无" style="font-color: red;" tabindex="10" id="hasJL2">无&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<tr>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04">居住证申领日期&nbsp;</td>
										<td height="30" width="180px" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input style="font-size:12px;" name="cardregtime" id="cardregtime" abindex="10" onFocus="WdatePicker({isShowClear:false,readOnly:true})" class="textarea" size="20" value="">
											<img onclick="WdatePicker({el:'cardregtime'})" src="js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle"></td>

										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_04"></td>
										<td height="30" align="right" valign="middle" class="jzzzl_box_main_font_04" colspan="2">积分期间有无犯罪获刑记录&nbsp;</td>
										<td height="30" align="left" valign="middle" class="jzzzl_box_main_font_02">
											<input name="hasFZ" onkeyup="enterNext('checkcode');" type="radio" value="有" onfocus="this.select();" style="font-color: red;" tabindex="10" id="hasFZ">
											有
											<input name="hasFZ" onkeyup="enterNext('checkcode');" type="radio" value="无" onfocus="this.select();" style="font-color: red;" tabindex="10" id="hasFZ2">无&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<td height="1" colspan="6" background="./img/JZZZL_line.jpg"></td>
									</tr>
								</tbody>
							</table>

							<table width="758" border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td height="25" colspan="5" align="center" valign="middle" bgcolor="#E4EDF2" class="jzzzl_box_main_font_01">父母配偶子女情况</td>
									</tr>
									<tr>
										<td height="1" colspan="5" bgcolor="#F5F9FC"></td>
									</tr>
									<tr>
										<td height="1" colspan="5" bgcolor="#C3D0D9"></td>
									</tr>
									<tr>
										<td height="30" align="center" width="125px;" valign="middle" class="jzzzl_box_main_font_02">与本人关系</td>
										<td height="30" align="center" width="125px;" valign="middle" class="jzzzl_box_main_font_02">姓名</td>

										<td height="30" align="center" width="292px;" valign="middle" class="jzzzl_box_main_font_02">身份证号</td>

										<td height="30" align="center" width="125px;" valign="middle" class="jzzzl_box_main_font_02">文化程度</td>

										<td height="30" align="center" valign="middle">
											<img src="./img/14.jpg" width="100" height="26" style="cursor:hand;" id="addButton" onclick="enterPrise3();" onkeyup="enterPrise4();"></td>

									</tr>
									<tr>
										<td height="1" colspan="5" background="./img/JZZZL_line.jpg"></td>
									</tr>
								</tbody>
								<tbody id="roles"></tbody>
								<!--循环开始-->
								<tbody>
									<tr>
										<td height="1" colspan="5" background="./img/JZZZL_line.jpg"></td>
									</tr>
									<!--循环结束-->
									<tr>
										<td height="60" colspan="5" align="center" valign="middle">

											<img src="./img/15+.jpg" width="100" height="26" onclick="next()" style="cursor:hand;">
											&nbsp;&nbsp;
											<img src="./img/16.jpg" width="100" height="26" onclick="doConfirm1()" style="cursor:hand;">
											&nbsp;&nbsp;
											<img src="./img/17-.jpg" onclick="backProject('4508439')" width="100" height="26" style="cursor:hand;"></td>
									</tr>
									<tr>
										<td height="1" colspan="5" background="./img/JZZZL_line.jpg"></td>
									</tr>
								</tbody>
							</table>
						</form>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</div>
<script type="text/javascript">
		new PCAS("province=吉林省,请选择省份","city=白城市,请选择城市","area=大安市,请选择地区");
	</script>

</body>
</html>