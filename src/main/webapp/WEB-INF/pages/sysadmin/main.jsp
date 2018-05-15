<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>模块介绍</title>
  <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/main.css" media="all"/>
</head>
<body>
<form>
  <div class="textbox"></div>
  <div class="modelDiv">
    <table class="modelTable" cellspacing="1">
      <tr>
        <td colspan="2" class="modelTitle">学位点负责人管理模块介绍</td>
      </tr>
      <%--<tr>
          <td colspan="2" class="subModelTitle">权限管理</td>
      </tr>--%>
      <tr>
        <td class="model_intro_left">学生信息管理：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          管理和查看学生信息，包括学生基本信息的导入、添加、删除、修改，查询，显示。
        </td>
      </tr>
      <tr>
        <td class="model_intro_left">教师信息管理：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          管理和查看研究生导师信息，包括研究生导师基本信息的导入、添加、删除、修改，查询，显示。
        </td>
      </tr>
     <%-- <tr>
        <td class="model_intro_left" width="169">学位点负责人信息管理：</td>
        <td class="model_intro_right" width="81%">
          <font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          修改本人信息.
        </td>
      </tr>--%>
      <tr>
        <td class="model_intro_left" width="169">录入答辩信息：</td>
        <td class="model_intro_right" width="81%"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          补全答辩信息未完整录入的学生信息，包括录入查重结果，录入评阅成绩，录入答辩成绩和结果。
          <p>&nbsp;&nbsp;默认按照信息是否完整录入分类</p>
        </td>
      </tr>
      <tr>
        <td class="model_intro_left" width="169">发布系统通知：</td>
        <td class="model_intro_right" width="81%"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          发布系统通知，发布的通知会在系统首页显示，任何人登录系统都可以看到。
        </td>
      </tr>
      <tr>
        <td class="model_intro_left" width="169">生成答辩统计表：</td>
        <td class="model_intro_right" width="81%">
          <font style="font-size: 15px;color: blue;font-weight: bold">※ </font>
          生成答辩统计表，会在本页面显示，也可以下载保存到本地文件系统。
        </td>
      </tr>
      <tfoot>
      <tr>
        <td colspan="2" class="tableFooter"></td>
      </tr>
      </tfoot>
    </table>
  </div>
</form>
</body>
</html>