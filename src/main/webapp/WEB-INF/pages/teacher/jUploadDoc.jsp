<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title></title>
</head>
<body>
<%--<div align="left"><font size="3" color="purple" face="华文楷体">选择上传文件类型：</font></div>--%>
<div class="textbox-title">&nbsp;&nbsp;&nbsp;上传所需文档</div>
<%--<form action="${ctx}/teacher/upload" method="post" enctype="multipart/form-data">--%>
<%--<input type="file" name="filename" size="45"><br>--%>
<%--<input type="submit" name="submit" value="submit">--%>
</form>
<form name="icform" method="post" action="${ctx}/teacher/upload" enctype="multipart/form-data">
<div>
<div class="eXtremeTable">
  <table id="ec_table" class="tableRegion" width="98%">
    <thead>
    <tr>
      <td class="tableHeader" style="text-align: center">
        <input type="file" name="filename" size="45"><br>
      </td>
      <td class="tableHeader" style="text-align: center ">
        <input type="submit" name="submit" value="确认上传" style="background: none;color: #00B83F">
      </td>
    </tr>
    </thead>
  </table>
  <tr>
    <h1>
      <c:if test='${msg.contains("成功")}'>
        <font color="green">文件"${fname}"上传成功</font> </c:if>
      <c:if test='${msg.contains("失败")}'>
        <font color="red">文件"${fname}"上传失败</font> </c:if>
    </h1>
  </tr>
</div>
</div>
</form>
</body>
</html>

