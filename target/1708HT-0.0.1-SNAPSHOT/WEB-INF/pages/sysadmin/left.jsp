<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<%@ include file="../baselist.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title></title>
  <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/left.css" media="all"/>
</head>
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
<!-- begin1  -->
<div id="sidebar" class="sidebar">
  <div class="sidebar_t">
    <div class="sidebar_t_l"></div>
    <div class="sidebar_t_c"></div>
    <div class="sidebar_t_r"></div>
  </div>
  <div class="panel">
    <div class="panel_icon"><img src="${ctx}/staticfile/skin/default/images/icon/user1_lock.png"/></div>
    <div class="panel-header">
      <div class="panel-title">角色：学位点负责人</div>
      <div class="panel-content">
        <ul>
          <%--<li><a href="${ctx}/sysadmin/user/list" onclick="linkHighlighted(this)" target="main" id="aa_1">教师信息管理111</a></li>--%>
          <li><a href="${ctx}/sysadmin/student/list" onclick="linkHighlighted(this)" target="main" id="aa_1">学生信息管理</a></li>
          <li><a href="${ctx}/sysadmin/teacher/list" onclick="linkHighlighted(this)" target="main" id="aa_1">教师信息管理</a></li>
          <%--<li><a href="${ctx}/sysadmin/adm/list" onclick="linkHighlighted(this)" target="main" id="aa_1">学位点负责人信息管理</a></li>--%>
          <%--<li><a href="${ctx}/sysadmin/dept/list" onclick="linkHighlighted(this)" target="main" id="aa_1">录入答辩信息</a></li>--%>
          <li><a href="${ctx}/sysadmin/reply/list" onclick="linkHighlighted(this)" target="main" id="aa_1">录入答辩信息</a></li>
          <li><a href="${ctx}/sysadmin/publish/list" onclick="linkHighlighted(this)" target="main" id="aa_1">发布系统通知</a></li>
          <%--<li><a href="${ctx}/sysadmin/role/list" onclick="linkHighlighted(this)" target="main" id="aa_1">发布系统通知</a></li>--%>
          <li><a href="${ctx}/sysadmin/replyStatics/show" onclick="linkHighlighted(this)" target="main" id="aa_1">答辩统计表</a></li>
          <%--<li><a href="${ctx}/sysadmin/module/list" onclick="linkHighlighted(this)" target="main" id="aa_1">生成答辩统计表</a></li>--%>
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
</body>
</html>
