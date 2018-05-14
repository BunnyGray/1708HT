<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/left.css" media="all"/>

	<script language="javascript" src="${ctx}/staticfile/js/common.js"></script>
	<script language="javascript" src="${ctx}/staticfile/js/ajax/setFastMenu.js"></script>
	<script language="javascript" src="${ctx}/staticfile/js/pngfix_map.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/components/jquery-ui/jquery-1.2.6.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/skin/default/js/toggle.js"></script>
 
	
    <script language="javascript">
    	$().ready(function(){
			$(fastMenu).hide();
			//document.getElementById('aa_3').click();	//默认打开我的留言板页面
    	});
    	
    	function showMenu( who ){
    		if(who=="fastMenu"){
    			$(fastMenu).show();
    			$(customerMenu).hide();
    		}else if(who=="customerMenu"){
    			$(customerMenu).show();
    			$(fastMenu).hide();
    		}
    	}
    </script>
 
    
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
	   <div class="panel">
	       <div class="panel_icon"><img src="${ctx}/staticfile/skin/default/images/icon/user2.png" /></div>
	       <div class="panel-header">
	        <div class="panel-title">展示系统通知</div>
	        <div class="panel-content">
				<ul>
					<li><a href="${ctx}/student/showLastMsg" target="main" id="aa_3" onclick="linkHighlighted(this)">查看系统通知</a></li>
				</ul>
	        </div>
	        
	       </div>
	   </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>
</div>
 
 
 
 
 

 
<!-- begin1  -->
<!-- end1 -->
 
</body>
</html>