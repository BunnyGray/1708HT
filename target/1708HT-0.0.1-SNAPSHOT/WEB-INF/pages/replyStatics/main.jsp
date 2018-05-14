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
        <td colspan="2" class="modelTitle">导师管理模块介绍</td>
      </tr>
      <tr>
        <td colspan="2" class="subModelTitle">录入研究生信息</td>
      </tr>
      <tr>
        <td class="model_intro_left" width="169">录入研究生信息：</td>
        <td class="model_intro_right" width="81%"><font style="font-size: 15px;color: blue;font-weight: bold">※</font> 研究生导师只能录入自己所带研究生的信息。</td>
      </tr>
      <tr>
        <td colspan="2" class="subModelTitle">上传文档</td>
      </tr>
      <tr>
        <td class="model_intro_left">上传文档到服务器：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※</font> 答辩学生导师：上传“硕士研究生答辩申请表”、“学生成绩单”，如果是工程硕士，还需上传“企业导师登记表”。
          <font style="font-size: 15px;color: blue;font-weight: bold">※</font> 被评阅学生导师：上传论文、评阅书。
        </td>
      </tr>
      <tr>
        <td colspan="2" class="subModelTitle">查看答辩学生信息</td>
      </tr>
      <tr>
        <td class="model_intro_left">查看答辩学生信息：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※</font> 查看答辩学生信息,包括学生的学号，姓名，性别，论文题目，论文类型。</td>
      </tr>
      <tr>
        <td colspan="2" class="subModelTitle">查看论文结果</td>
      </tr>
      <tr>
        <td class="model_intro_left">查看论文结果：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※</font> 查看论文结果，信息包括研究生学号，研究生姓名，论文查重结果，论文评阅结果以及答辩结果。</td>
      </tr>
      <tr>
        <td colspan="2" class="subModelTitle">评阅人信息</td>
      </tr>
      <tr>
        <td class="model_intro_left">评阅人信息：</td>
        <td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※</font> 查看所带研究生的答辩评阅教师的信息，包括教职工号，姓名，性别，职称，身份证号，电话号，QQ号码，微信号码，电子邮箱，导师身份。</td>
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