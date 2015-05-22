function search4(form1)
{
if (!(chkinput(form1)))
   return false;
if(form1.abc0.checked)
   window.open("../www.google.com/search@hl=zh-CN&lr=lang_zh-CN&q="+form1.name.value,"mspg0");
if(form1.abc1.checked)
   window.open("../cn.search.yahoo.com/search/cn@p="+form1.name.value,"mspg1");
if(form1.abc2.checked)
   window.open("../search.sina.com.cn/cgi-bin/search/search.cgi@_searchkey="+form1.name.value,"mspg2");
if(form1.abc3.checked)
   window.open("../site.search.sohu.com/website.jsp@key_word="+form1.name.value,"mspg3");
if(form1.abc4.checked)
    window.open("../nisearch.163.com/Search@q="+form1.name.value,"mspg4");
if(form1.pid.checked)
   window.open("../www1.baidu.com/baidu@tn=site37021&cl=3&rn=10&ct=0&lm=0&word="+form1.name.value,"mspg6");
if(form1.abc5.checked)
   window.open("../newsearch.tom.com/tom_search.htm@name="+form1.name.value,"mspg0");  
                                                                
return false; 
}

function chkinput(f){
var tmp = f.name.value;
if(!tmp) {
alert("请填写您要查询的内容!");
f.name.focus();
return false;}
return true;}
function chkinput2(f){
var tmp = f.user.value;
if(!tmp) {
alert("帐号不能为空!");
f.user.focus();
return false;}
var tmp2 = f.pass.value;
if(!tmp2) {
alert("密码不能为空!");
f.pass.focus();
return false;}
return true;}
function clearpass(theForm){
	theForm.pass.value="";
}