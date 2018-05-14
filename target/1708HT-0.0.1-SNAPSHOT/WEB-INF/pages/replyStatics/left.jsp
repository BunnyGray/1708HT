<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/left.css"
          media="all"/>
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
            <div class="panel-title" style="font-size: 5px">角色:研究生导师/评阅导师</div>
            <div class="panel-content">
                <ul>
                    <li><a href="${ctx}/teacher/uploadStudentInfo?name=${teacher.name},type=${teacher.teacherType}" onclick="linkHighlighted(this)"
                           target="main"
                           id="aa_1">录入研究生信息</a></li>
                    <li>
                        <a href="${ctx}/teacher/uploadDoc" id="aa_1"
                           onclick="linkHighlighted(this)" target="main">上传文档</a>
                    </li>
                    <li><a href="${ctx}/teacher/showStudentInfo?name=${teacher.name}" onclick="linkHighlighted(this)"
                           target="main"
                           id="aa_1">查看答辩学生信息</a></li>
                    <li><a href="${ctx}/teacher/showPageResult?name=${teacher.name}" onclick="linkHighlighted(this)"
                           target="main"
                           id="aa_1">查看论文结果</a></li>
                    <li><a href="${ctx}/teacher/showSuggestTeacherInfo?name=${teacher.name}" onclick="linkHighlighted(this)"
                           target="main"
                           id="aa_1">评阅人信息</a></li>
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
