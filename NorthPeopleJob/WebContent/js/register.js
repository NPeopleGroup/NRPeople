  var idcardold = "";
  function checkPage(save){
  	//检测申请人类型是否选择
    var personType = document.getElementsByName("type");
    var personType2=false;
    if(null!=personType){
	    for(var i=0;i<personType.length;i++){
	    	if(personType[i].checked==true){
	    		personType2=true;
	    	}
	    }
    }
    if(!personType2){
    	alert("请选择申请人类型！");
    	document.getElementById("personType1").focus();
    	return false;
    }
  
  	//检测身份证号
  	var idcard=document.all.idcard.value;
    if(idcard==""){
      alert("身份证号不能为空！");
      document.all.idcard.focus();
      return false;
    }
    if(idcard.length!=18){
    	alert("身份证号为18位！");
    	document.all.idcard.focus();
    	return false;
    }
    
    //检测身份证号
    if(issfz(idcard)!=""){
    	alert(issfz(idcard));
    	document.all.idcard.focus();
    	return false;
    }
    
    //检测居住证申领日期不能为空
    var cardregtime=document.all.residencePermitDate.value;
    if(cardregtime==""){
      alert("居住证申领日期不能为空！");
      document.all.cardregtime.focus();
      return false;
    }
    
    //检测名不能为空并且大于2个汉字
    var xm=document.all.name.value;
    if(xm==""){
      alert("姓名不能为空！");
      document.all.xm.focus();
      return false;
    }
    if(xm.length<2){
      alert("姓名不能少于两个字符！");
      document.all.xm.focus();
      return false;
    }
    
    //检测性别是否选择
    var xb = document.getElementsByName("sex");
    var xb2=false;
    if(null!=xb){
	    for(var i=0;i<xb.length;i++){
	    	if(xb[i].checked==true){
	    		xb2=true;
	    	}
	    }
    }
    if(!xb2){
    	alert("请选择性别！");
    	document.getElementById("xb").focus();
    	return false;
    }
    
    //检测民族是否选择
    var mz = document.getElementById("mz");
    if(mz.value==1){
    	alert("请选择民族！");
    	document.getElementById("mz").focus();
    	return false;
    }
    
    //日期格式
    if(document.getElementById("birth").value!=""){
    	if(!checkDate("csrq","")){ document.getElementById("csrq").focus();return false;}
    }else{
    	alert("请录入出生日期！");
    	document.getElementById("birth").focus();
    	return false;
    }
    
    //检测政治面貌是否选择
    var zzmm = document.getElementById("political");
    if(zzmm.value==1){
    	alert("请选择政治面貌！");
    	document.getElementById("political").focus();
    	return false;
    }
    
    //检测婚姻状况是否选择
    var hyzk = document.getElementById("marriage");
    if(hyzk.value==1){
    	alert("请选择婚姻状况！");
    	document.getElementById("marriage").focus();
    	return false;
    }
    
    //文化程度
    var whcd = document.getElementById("education");
    if(whcd.value==1){
    	alert("请选择文化程度！");
    	document.getElementById("education").focus();
    	return false;
    }
    
    //学位
    var xw = document.getElementById("degree");
    if(xw.value==1){
    	alert("请选择学位！");
    	document.getElementById("degree").focus();
    	return false;
    }
    
    //专业
    var zy = document.getElementById("major");
    if(zy.value.length==0){
    	alert("请录入专业！");
    	document.getElementById("major").focus();
    	return false;
    }
    
    //职业资格
    var zyzg = document.getElementById("qualification");
    if(zyzg.value.length==0){
    	alert("请录入职业资格！");
    	document.getElementById("qualification").focus();
    	return false;
    }
    
    //工种
    var gz = document.getElementById("workTypes");
    if(gz.value.length==0){
    	alert("请录入工种！");
    	document.getElementById("workTypes").focus();
    	return false;
    }
    
    //迁出地
    var qcd_sj = document.getElementById("qcd_sj");
    if(qcd_sj.value==1){
    	alert("请选择迁出地！");
    	document.getElementById("qcd_sj").focus();
    	return false;
    }
     //迁出地
    var qcd_sj_sj = document.getElementById("qcd_sj_sj");
    if(qcd_sj_sj.value==1){
    	alert("请选择迁出地！");
    	document.getElementById("qcd_sj_sj").focus();
    	return false;
    }
     //迁出地
    var qcd = document.getElementById("qcd");
    if(qcd.value==1){
    	alert("请选择迁出地！");
    	document.getElementById("qcd").focus();
    	return false;
    }
    
    //现户籍登记机关
    var hkszd = document.getElementById("fromOrgan");
    if(hkszd.value.length==0){
    	alert("请录入现户籍登记机关！");
    	document.getElementById("fromOrgan").focus();
    	return false;
    }
    //迁入地户籍登记机关
    var nhkdjjgfj = document.getElementById("toOrgan");
    if(nhkdjjgfj.value==0){
    	alert("请选择迁入地户籍登记机关！");
    	document.getElementById("toOrgan").focus();
    	return false;
    }
    //迁入地户籍登记机关
    var nhkdjjg = document.getElementById("toPolicestation");
    if(nhkdjjg.value==1){
    	alert("请选择迁入地户籍登记机关！");
    	document.getElementById("toPolicestation").focus();
    	return false;
    }
     
    //检测户口性质是否选择
    var hkxz = document.getElementById("fromProperty");
    if(hkxz.value==1){
    	alert("请选择户口性质！");
    	document.getElementById("fromProperty").focus();
    	return false;
    }
    
    //单位名称
    var dwmc = document.getElementById("companyName");
    if(dwmc.value.length==0){
    	alert("请录入单位名称！");
    	document.getElementById("companyName").focus();
    	return false;
    }
    
    //单位电话
    var dwdh = document.getElementById("companyTelephone");
    if(dwdh.value.length==0){
    	alert("请录入单位电话！");
    	document.getElementById("companyTelephone").focus();
    	return false;
    }
    
    //单位地址
    var dwdz = document.getElementById("companyAddress");
    if(dwdz.value.length==0){
    	alert("请录入现单位地址！");
    	document.getElementById("companyAddress").focus();
    	return false;
    }
    
    //本人电话
    var lxdh = document.getElementById("phone");
    if(lxdh.value.length==0){
    	alert("请录入本人电话！");
    	document.getElementById("phone").focus();
    	return false;
    }
    
    //现住址
    var zz = document.getElementById("fromAddress");
    if(zz.value.length==0){
    	alert("请录入迁入地详细地址！");
    	document.getElementById("fromAddress").focus();
    	return false;
    }
    
    //检测落户地区是否选择
    var lhdq = document.getElementById("toDistrict");
    if(lhdq.value==1){
    	alert("请选择拟落户地区！");
    	document.getElementById("toDistrict").focus();
    	return false;
    }
    
    //检测社保缴纳是否选择
    var cjbx = document.getElementsByName("hasSocialsecurity");
    var cjbx2=false;
    if(null!=cjbx){
	    for(var i=0;i<cjbx.length;i++){
	    	if(cjbx[i].checked==true){
	    		cjbx2=true;
	    	}
	    }
    }
    if(!cjbx2){
    	alert("请选择是否缴纳保险！");
    	document.getElementById("hasSocialsecurity").focus();
    	return false;
    }
    
    //检测积分期间有无行政拘留记是否选择
    var hasjl = document.getElementsByName("hasDetention");
    var hasjl2=false;
    if(null!=hasjl){
	    for(var i=0;i<hasjl.length;i++){
	    	if(hasjl[i].checked==true){
	    		hasjl2=true;
	    	}
	    }
    }
    if(!hasjl2){
    	alert("请选择积分期间有无行政拘留记录选择！");
    	document.getElementById("hasDetention").focus();
    	return false;
    }
    
    //检测居住证申领日期格式
    if(!checkDate("residencePermitDate","")){ document.getElementById("residencePermitDate").focus();return false;}
    
    //检测积分期间有无犯罪获刑记录是否选择
    var hasfz = document.getElementsByName("hasCriminal");
    var hasfz2=false;
    if(null!=hasfz){
	    for(var i=0;i<hasfz.length;i++){
	    	if(hasfz[i].checked==true){
	    		hasfz2=true;
	    	}
	    }
    }
    if(!hasfz2){
    	alert("请选择积分期间有无犯罪获刑记录！");
    	document.getElementById("hasCriminal").focus();
    	return false;
    }
   	document.getElementById('pnumroles').value = pnum.roles;
    document.getElementById('pnumroles').value = pnum.roles;
	var pnumroles=pnum.roles;
	for(var i=0;i<pnumroles;i++){
	     pnumrolesname=document.getElementById("irolesxm"+i).value;
	     pnumrolesgx = document.getElementById("irolesgx"+i).value;
	     pnumrolesidcard = document.getElementById("irolesidcard"+i).value;
	     pnumrolesidwhcd= document.getElementById("iroleswhcd"+i).value;
	     if(pnumrolesname=="" && pnumrolesgx=="" && pnumrolesidcard=="" && pnumrolesidwhcd==""){
	     }else{
		     if(pnumrolesname==null || pnumrolesname==""){
		        alert("姓名必须填写！");
		        return false;
		     }
		     if(issfz(pnumrolesidcard)!=""){
		    	alert(issfz(pnumrolesidcard));
		    	document.getElementById("irolesidcard"+i).focus();
		    	return false;
		    }
	     }
	}
	
/*	//检测身份证号和验证码问题
	if(save=="backSaveData"){
		if(idcard==idcardold){
			jfpersoninfoservice.checkIdcardAndCode("create","null",0,idcard,checkcode.value,backSaveData);
		}else{
			jfpersoninfoservice.checkIdcardAndCode("create","null",1,idcard,checkcode.value,backSaveData);
		}
	}else{
		jfpersoninfoservice.checkIdcardAndCode("create","null",0,idcard,checkcode.value,backNextData);
	}*/
	console.log("dddd");
    return true;
  }
  
  function backSaveData(data){
  	if(data.length==0){
	    document.submitForm.action="/jzz/jfPersonAction.jsp?save=save&step=mark";
	    document.submitForm.submit();
    }else{
    	alert(data);
    }
  }
  
  function backNextData(data){
  	if(data.length==0){
	    document.submitForm.action="/jzz/jfPersonAction.jsp?save=next&step=mark";
	    document.submitForm.submit();
    }else{
    	alert(data);
    }
  }
  
  
    
  function doConfirm1(){
  	 
     if(!checkPage("backSaveData")){
     	return false;
     }   
     document.submitForm.submit();
  }
  
  
  function next(){
  	
    if(!checkPage("backNextData")){
     	return false;
     }
    
  }
  
  //检查数据是否为数字或字符形式
  function isNumberOrChar(number){
    var i=0;
    var flag=0;
    while(i<number.length){
      if(!(isDigit(number.charAt(i)) || isChar(number.charAt(i)))){
	        return false;
      }
      i++;
    }
    return true;
  }
  //检查每一个字符是否是数字
  function isDigit(cCheck) { return (('0'<=cCheck) && (cCheck<='9')); }
  //检查每一个字符是否是字母
  function isChar(cCheck) { return (('a'<=cCheck) && (cCheck<='z') || (('A'<=cCheck) && (cCheck<='Z'))); }
  //检查字符串是否全是数字
  function isAllDigit(check){
	var i;
	for(i=0;i<check.length;i++)
		if (!isDigit(check.charAt(i)))
			return false;
	return true;
  }
  //检查数据是否为合法的数字形式
  function isNumber(number){
    var i=0;
    var flag=0;
    while(i<number.length){
      if(!isDigit(number.charAt(i))){
        if(number.charAt(i)=='.'){
          if(flag==0) flag=1;
          else {
            return false;
          }
        }
        else return false;
      }
      i++;
    }
    return true;
  }
  //检查是否是字母
  function isAlpha(cCheck) { return ((('a'<=cCheck) && (cCheck<='z')) || (('A'<=cCheck) && (cCheck<='Z'))); }
  function isemail (s)
  {
      // Writen by david, we can delete the before code
      if (s.length > 30)
      {
              window.alert("email地址长度不能超过30位!");
              return false;
      }

       var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*[0-9a-zA-Z]+))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT)$"
       var re = new RegExp(regu);
       if (s.search(re) != -1) {
             return true;
       } else {
             window.alert ("请输入有效合法的E-mail地址 ！")
             return false;	
       }
  }
  //验证身份证
  function issfz(curSfz){
	curSfz=trim(curSfz);
	//身份证位数不对，应为15或18位
	if (curSfz.length!=18) return "身份证位数不对，应为18位！";
    //18位的身份证前17为应为数字，最后一位可为X,";
    for(i=0;i<curSfz.length-1;i++){
     if (!isDigit(curSfz.charAt(i))) return "18位的身份证前17为应为数字，最后一位可为X！";
    }
     if ( !isDigit(curSfz.charAt(17)) && curSfz.charAt(17)!='X' && curSfz.charAt(17)!='x') return "18位的身份证前17为应为数字，最后一位可为X！";
        return "";
  }
  //去掉字符串两头的空格
  function trim(Str){
	var resultStr="";
	var tempStr="";
	var i;

	for(i=0;i<Str.length;i++)
		if (Str.charAt(i)!=' '){
		    tempStr=Str.substring(i,Str.length);
			break;
		};

	for(i=tempStr.length-1;i>=0;i--)
		if (tempStr.charAt(i)!=' '){
		    resultStr=tempStr.substring(0,i+1);
			return resultStr;
		};

	return resultStr;

  }
  	//刷新
  	function refreshme(){
  		window.close();
  	}
	
	//检查日期格式是否正确
	function checkDate2(name){
		var date = document.getElementById(name).value;
		var date1 = date.split("-");
		if(date1.length==3){
			for(var i=0;i<date1.length;i++){
				if(!isDigit(date1[i])){
					document.getElementById(name).focus();
					alert("您输入的日期格式不正确，请输入1990-01-01或19900101格式的日期！");
					return false;
				}
			}
		}else{
			if(date.length==8){
				if(!isAllDigit(date)){
					alert("您输入的日期格式不正确，请输入19900101或1990-01-01格式的日期！");
					return false;
				}
			}else{
				alert("您输入的日期格式不正确，请输入19900101或1990-01-01格式的日期！");
				return false;
			}
		}
		
		return true;
	}
	
	//检查日期格式是否正确
	function checkDate(name,name2){
		var date = document.getElementById(name).value;
		var date1 = date.split("-");
		if(date1.length==3){
			for(var i=0;i<date1.length;i++){
				if(!isDigit(date1[i])){
					document.getElementById(name).focus();
					alert("您输入的日期格式不正确，请输入1990-01-01或19900101格式的日期！");
					return false;
				}
			}
		}else{
			if(date.length==8){
				if(!isAllDigit(date)){
					alert("您输入的日期格式不正确，请输入19900101或1990-01-01格式的日期！");
					return false;
				}
			}else{
				alert("您输入的日期格式不正确，请输入19900101或1990-01-01格式的日期！");
				return false;
			}
		}
		if(name2!=""){
			document.getElementById(name2).focus();
		}
		return true;
	}
	
	//获取焦点
	function setFocus(){
		document.getElementById("personType").focus();
	}
	
	//回车下一个输入框功能
	function enterNext(id){
		if(window.event.keyCode==13){
			if(id=="zzmm"){
				checkDate("csrq",id);
			}else if(id=="hasFZ"){
				checkDate("cardregtime",id);
			}else{
				document.getElementById(id).focus();
			}
		}
	}
	//跳转iframe中增加按钮
	function selectButton(){
		if(window.event.keyCode==13){
			rolesList.selectButton();
		}
	}
	
	//页面动态加载部分亲属关系
	//选中下一个text
	function enterPrise(obj){
		if(window.event.keyCode==13){
			document.getElementById(obj).focus();
			document.getElementById(obj).select();
			
		}
	}
	//添加事件（作用对象，什么事件，触发事件后调用的方法，用于光标焦点的对象名称
	function AttachEvent(target, eventName, handler, obj) {
		var eventHander = handler;
		if (obj) {
			eventHander = function(e) {
				enterPrise(obj);
			}
		}
		if (window.attachEvent)//for IE
			target.attachEvent("on" + eventName, eventHander);
		else
			//for FF
			target.addEventListener(eventName, eventHander, false);
	}
	
	//增加新的一行，并且选中第一个输入框
	function enterPrise2(obj){
		if(window.event.keyCode==13){
			newRoles('roles');//创建新的一行
			document.getElementById(obj).focus();
			document.getElementById(obj).select();
			
		}
	}
	//添加事件（作用对象，什么事件，触发事件后调用的方法，用于光标焦点的对象名称）
	function AttachEvent2(target, eventName, handler, obj) {
		var eventHander = handler;
		if (obj) {
			eventHander = function(e) {
				enterPrise2(obj);
			}
		}
		if (window.attachEvent)//for IE
			target.attachEvent("on" + eventName, eventHander);
		else
			//for FF
			target.addEventListener(eventName, eventHander, false);
	}
	
var pnum = {roles:0};
function actionNewText(tr, name, value, num, wid, align, max) {
	var td = document.createElement('TD');
	td.align = 'center';
	td.height = '30px';
	var txt = document.createElement('INPUT');
	txt.type = 'TEXT';
	txt.id = 'i' + name + num;
	txt.name = name + num;
	txt.style.textAlign = align;
	txt.maxLength = max;
	txt.style.width = wid;
	txt.value = value;
	var name2;
	if(name=="rolesgx"){
		
		name2="irolesxm"+num;		
	}
	if(name=="rolesxm"){
		name2="irolesidcard"+num;
	}
	if(name=="rolesidcard"){
		name2="iroleswhcd"+num;
	}
	if(name=="roleswhcd"){
		name2="irolesgx"+(num+1);
		AttachEvent2(txt,'keypress',newRoles,name2);//添加事件
	}else{
		AttachEvent(txt,'keypress',enterPrise,name2);//添加事件
	}
	txt.tabindex=10;
	td.appendChild(txt);
	tr.appendChild(td);
}
function actionNewLink(tr, name, src, alt, action, t) {
	var td = document.createElement('TD');
	td.align = 'center';
	var img = document.createElement('IMG');
	img.src = src;
	img.alt = alt;;
	img.link = pnum[t];
	img.t = t;
	img.style.cursor = 'hand';
	img.onclick = action;
	td.appendChild(img);
	tr.appendChild(td);
}
function actionNewButton(tr, name, action,t,num,name2) {
	var td = document.createElement('TD');
	td.align='center';
	var button = document.createElement('INPUT');
	button.id = 'i' + name2 + num;
	button.type='image';
	button.src='/images/icon/tools/dele.gif';
	button.value=name;
	button.t = t;
	button.link = pnum[t];
	button.onclick = action;
	button.title = "点击删除亲属关系信息";
	td.appendChild(button);
	tr.appendChild(td);
}
function actionNewHidden(tr, name, value, num) {
	var h = document.createElement('INPUT');
	h.type = 'hidden';
	h.id = 'i' + name + num;
	h.name = name + num;
	h.value = value ;
	tr.appendChild(h);
}
function setValue(id, value) {
	document.getElementById(id).value = value;
}
function getValue(id) {
	return document.getElementById(id).value;
}
function actionDeleteRoles() {
	if(confirm("确定删除该条亲属信息吗？")){
	var idx = event.srcElement.link;
	var t = event.srcElement.t;
	if (pnum[t] == 0) {
			setValue('i'+ t + 'oid' + '0', '');
			setValue('i'+ t + 'personid' + '0', '');
			setValue('i'+ t + 'gx' + '0', '');
			setValue('i'+ t + 'xm' + '0', ''); 
			setValue('i'+ t + 'idcard' + '0', ''); 
			setValue('i'+ t + 'whcd' + '0', '');
	} else {
		for (var i = idx; i < pnum[t] - 1; i++) {
			setValue('i'+ t + 'oid' + i, getValue('i'+ t + 'oid' + (i + 1)));
			setValue('i'+ t + 'personid' + i, getValue('i'+ t + 'personid' + (i + 1)));
			setValue('i'+ t + 'gx' + i, getValue('i'+ t + 'gx' + (i + 1)));
			setValue('i'+ t + 'xm' + i, getValue('i'+ t + 'xm' + (i + 1)));
			setValue('i'+ t + 'idcard' + i, getValue('i'+ t + 'idcard' + (i + 1)));
			setValue('i'+ t + 'whcd' + i, getValue('i'+ t + 'whcd' + (i + 1)));
		}
		var tbody = document.getElementById(t);
		tbody.removeChild(tbody.lastChild);
		pnum[t] -= 1;
	}
	}
}
function createRoles(t, oid, personid, gx,xm,idcard, whcd) {
  console.log($("#roles").find("tr").size());
  var size=$("#roles").find("tr").size();
  if(size<6)
  {
    var tr = document.createElement('TR');
    actionNewHidden(tr, t + 'oid', oid, pnum[t]);
    actionNewHidden(tr, t + 'personid', personid, pnum[t]);
    actionNewText(tr,'relation', gx, size+1, '102px', 'left', '50');
    actionNewText(tr,'relationName', xm, size+1, '102px', 'left', '10');
    actionNewText(tr,'relationIDCard', idcard, size+1, '275px', 'center', '18');
    actionNewText(tr,'relationdegree', whcd, size+1, '102px', 'center', '20');
    actionNewLink(tr,'img','img/close.jpg','点击删除该亲属信息',actionDeleteRoles,t);
    console.log(tr);
    document.getElementById("roles").appendChild(tr);
    pnum[t] += 1;
  }else{
    alert("最多只能填写六个联系人信息！");
  }
	
}
function newRoles(t) {
	createRoles(t, '', '', '', '', '','');
}


function selectButton(){
	if(null==document.getElementById("irolesgx0")){
		document.getElementById("addButton").focus();
		selectAdd();
	}else{
		document.getElementById("irolesgx0").focus();
	}
	
}

function selectAdd(){
	document.getElementById("addButton").focus();
}

function parentSave(){
	parent.saveButton();
}

//创建没有按钮的行
function createRoles2(t, oid, personid, gx,xm,idcard, whcd) {
	var tr = document.createElement('TR');
	actionNewHidden(tr, t + 'oid', oid, pnum[t]);
	actionNewHidden(tr, t + 'personid', personid, pnum[t]);
	actionNewText(tr, t + 'gx', gx, pnum[t], '102px', 'left', '50');
	actionNewText(tr, t + 'xm', xm, pnum[t], '102px', 'left', '10');
	actionNewText(tr, t + 'idcard', idcard, pnum[t], '375px', 'center', '18');
	actionNewText(tr, t + 'whcd', whcd, pnum[t], '102px', 'center', '20');
	document.getElementById("roles").appendChild(tr);
	pnum[t] += 1;
}


//增加新的一行，并且选中第一个输入框
function enterPrise3(){
		newRoles('roles');//创建新的一行
		document.getElementById("irelation1").focus();
		document.getElementById("irelation1").select();
}
//增加新的一行，并且选中第一个输入框
function enterPrise4(){
	if(window.event.keyCode==13){
		newRoles('roles');//创建新的一行
		document.getElementById("irolesgx0").focus();
	}
}
	
 
  //回车下一个输入框功能
function enterNext(id){
	if(window.event.keyCode==13){
		document.getElementById(id).focus();
	}
}

//跳转添加按钮
function selectButton(){
	if(null==document.getElementById("irolesgx0")){
		document.getElementById("addButton").focus();
		selectAdd();
	}else{
		document.getElementById("irolesgx0").focus();
	}
}

function selectAdd(){
	document.getElementById("addButton").focus();
}

//返回
function backProject(projectid){
	window.location.href="/jzz/projectDetail.jsp?projectid="+projectid+"&step=mark";
}

//删除申请人
function deletePerson(personid){
	
	if(confirm("您确定要删除该申请人信息吗？")){
		window.location.href="/jzz/jfPersonAction.jsp?opt=deletePerson&projectid=4508439&personid="+personid;
	}
	
}

//光标加载到申请人类型上
function selectLoadFocus(){
	document.getElementById("personType1").focus();
}
function myPoliceChangeHandler(policeLocation)
{
    alert(policeLocation.options.selectedIndex);
}


//迁出地市级城市加载
function selectQcd_sj_sj(){
 var date=document.submitForm.qcd_sj.value;
 jfprojectservice.getQcd(date,2,qcd_sj_sjReturn);
}
function qcd_sj_sjReturn(data){
 var qcd_sj_sj=document.submitForm.qcd_sj_sj;
 DWRUtil.removeAllOptions(qcd_sj_sj);
 var qcd=document.submitForm.qcd;
 DWRUtil.removeAllOptions(qcd);
 DWRUtil.addOptions(qcd_sj_sj,data,"codevalue","codename");
 
 var qcd_sj_sj2=document.submitForm.qcd_sj_sj.value;
 jfprojectservice.getQcd(qcd_sj_sj2,4,qcdReturn);
}

//迁出地区县加载
function selectQcd(){
 var date=document.submitForm.qcd_sj_sj.value;
 jfprojectservice.getQcd(date,4,qcdReturn);
}

function qcdReturn(data){
 var qcd=document.submitForm.qcd;
 DWRUtil.removeAllOptions(qcd);
 DWRUtil.addOptions(qcd,data,"codevalue","codename");
}


//机关加载
function selectNhkdjjg(){
 var nhkdjjgfj=document.submitForm.nhkdjjgfj.value;
 jfprojectservice.getNhkdjjg(nhkdjjgfj,nhkdjjgReturn);
}

function nhkdjjgReturn(data){
 var nhkdjjg=document.submitForm.nhkdjjg;
 DWRUtil.removeAllOptions(nhkdjjg);
 DWRUtil.addOptions(nhkdjjg,data,"codevalue","codename");
}
