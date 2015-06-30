<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员浏览页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" href="js/jqwidgets/styles/jqx.base.css" type="text/css" />
	 <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxdata.js"></script> 
    <script type="text/javascript" src="js/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxdatatable.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxradiobutton.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxinput.js"></script>
    <script type="text/javascript" src="js/jqwidgets/jqxnotification.js"></script>
    <script type="text/javascript" src="js/generatedata.js"></script>
    <script type="text/javascript" src="js/demos.js"></script>
   <script type="text/javascript">
        $(document).ready(function () {
            var url = "<%=basePath%>/printAction";

            // prepare the data
            var source =
            {
                dataType: "json",
                dataFields: [
                    { name: 'sn', type: 'string' },
                    { name: 'username', type: 'string' },
                    { name: 'password', type: 'string' },
                    { name: 'type', type: 'string' },
                    { name: 'name', type: 'string' },
                ],
                id: 'id',
                pageable: true,
                pagerPosition: 'both',
                url: url
            };

            var dataAdapter = new $.jqx.dataAdapter(source);

            $("#dataTable").jqxDataTable(
            {
                width: 725,
                pageable: true,
                pagerButtonsCount: 10,
                source: dataAdapter,
                columnsResize: true,
                selectionMode:'singleRow',
                columns: [
                  { text: 'Id', dataField: 'sn', width: 20 }, 
                  { text: 'UserName', dataField: 'username', width: 200 },
                  { text: 'User Password', dataField: 'password', width: 200 },
                  { text: 'Type', dataField: 'type', width: 180 },
                  { text: 'Name', dataField: 'name', width: 120 }
              ]
            });
            $("#dataTable").jqxDataTable({pagerMode:"advanced"});
            $("#myQueryButton").jqxButton({ height: 25});
            $("#myEditButton").jqxButton({ height: 25});
            $("#myEditButton").bind('click',function(){
                var selection = $("#dataTable").jqxDataTable('getSelection');
                if(selection.length==0)
                {
                    alert("请先选择需要操作的行!");
                }else{
                   window.location.href='edit_user?userName='+selection[0]['username'];
                }
            });
        });
    </script>
</head>
<body class='default'>
     <div id="dataTable"></div>
     <div id="myMenu" style="margin-top:20px">
        <button id="myQueryButton">查询</button>
        <button id="myEditButton">编辑</button>
     </div>
</body>
</html>
