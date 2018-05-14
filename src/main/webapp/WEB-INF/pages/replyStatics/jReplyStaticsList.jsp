<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title></title>
</head>
<body>
<form name="icform" method="post">
  <div class="textbox-title">
    &nbsp;&nbsp;&nbsp;答辩统计表
    <th style="border: none">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <button type="button"
              onclick="formSubmit('downloadXls', '_self');this.blur()">
        下载答辩统计表
      </button>
    </th>
  </div>
  <div>
    <div class="eXtremeTable">
      <table id="ec_table" class="tableRegion" width="80%" border="1" cellspacing="0" cellpadding="0"
             style="border-collapse: collapse;border-color: black;">
        <tbody class="tableBody" style="text-align: center">
        <tr style="height: 23px">
          <td colspan="2">统计类别</td>
          <td>统计结果</td>
        </tr>
        <tr style="height: 23px">
          <td colspan="2">论文题目统计（论文总数）</td>
          <td>${replyMap.pageTitleSum}</td>
        </tr>
        <tr style="height: 23px">
          <td colspan="2">通过率统计（论文通过率/%）</td>
          <td>${replyMap.passRate}</td>
        </tr>
        <tr style="height: 23px">
          <td colspan="2">研究生统计（研究生总数/人）</td>
          <td>${replyMap.studentSum}</td>
        </tr>
        <tr style="height: 23px">
          <td rowspan="5">导师统计（/人）</td>
          <td>教授</td>
          <td>${replyMap.teaProfessor}</td>
        </tr>
        <tr style="height: 23px">
          <td>副教授</td>
          <td>${replyMap.teaAssociateProfessor}</td>
        </tr>
        <tr style="height: 23px">
          <td>讲师</td>
          <td>${replyMap.teaTeacher}</td>
        </tr>
        <tr style="height: 23px">
          <td>高级工程师</td>
          <td>${replyMap.teaSeniorProgrammer}</td>
        </tr>
        <tr style="height: 23px">
          <td>正高级高级工程师</td>
          <td>${replyMap.teaPositiveSeniorProgrammer}</td>
        </tr>
        <tr style="height: 23px">
          <td rowspan="3">信息录入统计（/人）</td>
          <td>完成录入</td>
          <td>${replyMap.infoFinished}</td>
        </tr>
        <tr style="height: 23px">
          <td>未完成录入</td>
          <td>${replyMap.infoUnFished}</td>
        </tr>
        <tr style="height: 23px">
          <td>总计</td>
          <td>${replyMap.infoSum}</td>
        </tr>
        <tr style="height: 23px">
          <td rowspan="3">专业人数统计（/人）</td>
          <td>计算机应用技术</td>
          <td>${replyMap.majorCUS}</td>
        </tr>
        <tr style="height: 23px">
          <td>计算机技术</td>
          <td>${replyMap.majorCT}</td>
        </tr>
        <tr style="height: 23px">
          <td>软件工程</td>
          <td>${replyMap.majorSE}</td>
        </tr>
        <tr style="height: 23px">
          <td rowspan="2">毕业时间统计（/人）</td>
          <td>6月毕业</td>
          <td>${replyMap.time6}</td>
        </tr>
        <tr style="height: 23px">
          <td>12月毕业</td>
          <td>${replyMap.time12}</td>
        </tr>
        <tr style="height: 23px">
          <td rowspan="3">论文类型统计（/个）</td>
          <td>应用研究</td>
          <td>${replyMap.typeApplyStudy}</td>
        </tr>
        <tr style="height: 23px">
          <td>工程设计</td>
          <td>${replyMap.typeEngineDesign}</td>
        </tr>
        <tr style="height: 23px">
          <td>产品研究</td>
          <td>${replyMap.typeProductStudy}</td>
        </tr>
        <tr style="height: 23px">
          <td colspan="2"> 统计时间</td>
          <td>${replyMap.queryTime}</td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</form>
</body>
</html>

