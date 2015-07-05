<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>北方人才后台管理系统</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="./assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--页面头部 start -->
  <div class="header">
    
      <div class="dl-title">
          <span class="lp-title-port">北方人才</span><span class="dl-title-text">后台管理系统</span>
      </div>

    <div class="dl-log">欢迎您，
    <span class="dl-log-user">
   <%=session.getAttribute("NorthPeopleJob_adminusername")%> 	
    </span><a href="###" title="退出系统" class="dl-log-quit">[退出]</a></div>
  </div>

<!--页面头部 end -->


<!--mainbody start -->
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">业务员管理</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-order">普通用户管理</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-marketing">其他页面</div></li>
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
<!--mainbody end -->

  <script type="text/javascript" src="./assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui.js"></script>
  <script type="text/javascript" src="./assets/js/config.js"></script>

  <script>
    BUI.use('common/main',function(){
      var config = [{
          id:'menu', 
          homePage : 'code',
          menu:[{
              text:'业务员管理',
              items:[
                {id:'code',text:'浏览用户',href:'adminUserList',closeable : false},
                {id:'main-menu',text:'增加用户',href:'adminUserAdd'},
              ]
            }]
          },{
            id:'form',
            menu:[{
                text:'用户管理页面',
                items:[
                  {id:'user',text:'用户浏览',href:'userList'},
                  {id:'useradd',text:'增加用户',href:'userAdd'},
                ]
              },{
                text:'成功失败页面',
                items:[
                  {id:'success',text:'成功页面',href:'form/success.html'},
                  {id:'fail',text:'失败页面',href:'form/fail.html'}
                
                ]
              },{
                text:'可编辑表格',
                items:[
                  {id:'grid',text:'可编辑表格',href:'form/grid.html'},
                  {id:'form-grid',text:'表单中的可编辑表格',href:'form/form-grid.html'},
                  {id:'dialog-grid',text:'使用弹出框',href:'form/dialog-grid.html'},
                  {id:'form-dialog-grid',text:'表单中使用弹出框',href:'form/form-dialog-grid.html'}
                ]
              }]
          },{
            id:'search',
            menu:[{
                text:'搜索页面',
                items:[
                  {id:'code',text:'搜索页面代码',href:'search/code.html'},
                  {id:'example',text:'搜索页面示例',href:'search/example.html'},
                  {id:'example-dialog',text:'搜索页面编辑示例',href:'search/example-dialog.html'},
                  {id:'introduce',text:'搜索页面简介',href:'search/introduce.html'}, 
                  {id:'config',text:'搜索配置',href:'search/config.html'}
                ]
              },{
                text : '更多示例',
                items : [
                  {id : 'tab',text : '使用tab过滤',href : 'search/tab.html'}
                ]
              }]
          },{
            id:'detail',
            menu:[{
                text:'详情页面',
                items:[
                  {id:'code',text:'详情页面代码',href:'detail/code.html'},
                  {id:'example',text:'详情页面示例',href:'detail/example.html'},
                  {id:'introduce',text:'详情页面简介',href:'detail/introduce.html'}
                ]
              }]
          }];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>
</body>
</html>