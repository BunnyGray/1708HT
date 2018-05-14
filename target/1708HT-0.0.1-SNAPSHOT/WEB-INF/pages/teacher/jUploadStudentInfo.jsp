<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title></title>
</head>
<script type="text/javascript">
    function save() {
        var input = document.getElementsByName("stuNo")[0].value;
//        var innn = document.getElementById("select").options[indexxx].value;
        if (Number(input)) {
            formSubmit('save', '_self');
            this.blur();
        } else {
            alert("研究生学号为输入或输入错误");
        }
    }
</script>
<body>
<form name="icform" method="post">
  <div id="menubar">
    <div id="middleMenubar">
      <div id="innerMenubar">
        <div id="navMenubar">
          <ul>
            <li id="save"><a href="#" onclick="save()">保存</a></li>
            <li id="back"><a href="#" onclick="window.history.back();">返回</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="textbox-title">
    &nbsp;&nbsp;&nbsp;添加研究生信息
  </div>
  <div>
    <div class="eXtremeTable">
      <table id="ec_table" class="tableRegion" width="98%">
        <tr>
          <td>学号：</td>
          <td><input name="stuNo" value="${student.stuNo}" required="required"></td>
          <td>姓名：</td>
          <td><input type="text" name="name" value="${student.name }"/></td>
        </tr>
        <tr>
          <td>性别：</td>
          <td><input type="text" name="gender" value="${student.gender }"/></td>
          <td>年龄：</td>
          <td><input type="text" name="age" value="${student.age }"/></td>
        </tr>
        <tr>
          <td>民族：</td>
          <td><input type="text" name="nation" value="${student.nation }"/></td>
          <td>身份证号：</td>
          <td><input type="text" name="cardNo" value="${student.cardNo }"/></td>
        </tr>
        <tr>
          <td>校内导师：</td>
          <td>
            <c:if test='${sessionScope.get("_CURRENT_USER").teacherType=="校内导师"}'><input type="text" name="teacherNoIn" readonly value="${sessionScope.get("_CURRENT_USER").name}"/></c:if>
            <c:if test='${sessionScope.get("_CURRENT_USER").teacherType!="校内导师"}'><input type="text" name="teacherNoIn" value="${student.teacherNoIn }"/></c:if>
          </td>
          <td>企业导师：</td>
          <td>
            <c:if test='${sessionScope.get("_CURRENT_USER").teacherType=="企业导师"}'><input type="text" name="teacherNoOut" readonly value="${sessionScope.get("_CURRENT_USER").name}"/></c:if>
            <c:if test='${sessionScope.get("_CURRENT_USER").teacherType!="企业导师"}'><input type="text" name="teacherNoOut" value="${student.teacherNoOut}"/></c:if>
          </td>
          <%--<td><fmt:formatDate value="${student.studentInfo.birthday }" pattern="yyyy-MM-dd"/></td>--%>
        </tr>
        </tr>
        <tr>
          <td>研究室号码：</td>
          <td><input type="text" name="classNo" value="${student.classNo }"/></td>
          <td>专业：</td>
          <td>
            <select name="major" style="width: 150px">
        <option value="应用研究" >应用研究</option>

            </select>

            <%--input type="text" name="major" value="${student.major }"/>--%>
          </td>
        </tr>
        <tr>
          <td>是否全日制：</td>
          <td>
            <select name="isFullTime" style="width: 150px">
              <option value="1"
                      <c:if test="${student.isFullTime==1}">selected="selected"</c:if> > 是
              </option>
              <option value="0"
                      <c:if test="${student.isFullTime==0}">selected="selected"</c:if> > 否
              </option>
            </select>
          </td>
          <td>手机号码：</td>
          <td><input type="text" name="phoneNo" value="${student.phoneNo }"/>
          </td>
        </tr>
        <tr>
          <td>QQ号码：</td>
          <td><input type="text" name="qqNo" value="${student.qqNo }"/>
          </td>
          <td>电子邮箱：</td>
          <td><input type="text" name="email" value="${student.email }"/>
          </td>
        </tr>
        <tr>
          <td>密码：</td>
          <td><input type="text" name="passwd" value="${student.passwd }"/>
          </td>
          <td>论文题目：</td>
          <td><input type="text" name="pageTopic" value="${student.pageTopic }"/>
          </td>
        </tr>
        <tr>
          <td>论文类型：</td>
          <td><select name="pageType" style="width: 150px">
            <option>
              --选择论文类型--
            </option>
            <option value="1"
                    <c:if test="${student.pageType==1}">selected="selected"</c:if> >应用研究
            </option>
            <option value="2"
                    <c:if test="${student.pageType==2 }">selected="selected"</c:if> >工程设计
            </option>
            <option value="3"
                    <c:if test="${student.pageType==3 }">selected="selected"</c:if> >产品研发
            </option>
          </select>
          </td>
          <td>毕业日期：</td>
          <td><input type="date" name="graduateDate" style="width: 150px"
                     value='<fmt:formatDate value="${student.graduateDate }" pattern="yyyy-MM-dd"/>'/></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>

