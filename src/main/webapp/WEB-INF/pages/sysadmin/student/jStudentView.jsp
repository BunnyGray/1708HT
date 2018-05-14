<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>研究生信息</title>
</head>

<body>
<form name="icform" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="formSubmit('toupdate','_self');this.blur();">修改</a></li>
                        <li id="back"><a href="#" onclick="window.history.back();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
        查看用户
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <tr>
                    <td><input name="userId" value="${user.stuNo } " type="hidden"></td>
                </tr>
                <tr>

                    <td>学号：</td>
                    <td>${user.stuNo }</td>
                    <td>姓名：</td>
                    <td>${user.name }</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>${user.gender }</td>
                    <td>年龄：</td>
                    <td>${user.age }</td>
                </tr>
                <tr>
                    <td>民族：</td>
                    <td>${user.nation }</td>
                    <td>身份证号：</td>
                    <td>${user.cardNo }</td>
                </tr>
                <tr>
                    <td>校内导师：</td>
                    <td>${user.teacherNoIn}</td>
                    <td>企业导师：</td>
                    <td> ${user.teacherNoOut}</td>
                    <%--<td><fmt:formatDate value="${user.userInfo.birthday }" pattern="yyyy-MM-dd"/></td>--%>
                </tr>
                </tr>
                <tr>
                    <td>研究室号码：</td>
                    <td>${user.classNo }</td>
                    <td>专业：</td>
                    <td>
                        ${user.major}
                    </td>
                </tr>

                <tr>
                    <td>是否全日制：</td>
                    <td>
                        <c:if test="${user.isFullTime==1 }">是</c:if>
                        <c:if test="${user.isFullTime==0 }">否</c:if>
                    </td>
                    <td>手机号码：</td>
                    <td>
                        ${user.phoneNo }
                    </td>
                </tr>
                <tr>
                    <td>QQ号码：</td>
                    <td>
                        ${user.qqNo }
                    </td>
                    <td>电子邮箱：</td>
                    <td>
                        ${user.email }
                    </td>
                </tr>

                <tr>
                    <td>密码：</td>
                    <td>
                        ${user.passwd }
                    </td>
                    <td>论文题目：</td>
                    <td>
                        ${user.pageTopic }
                    </td>
                </tr>

                <tr>
                    <td>论文类型：</td>
                    <td>
                        <c:if test="${user.pageType==1 }">工学论文</c:if>
                        <c:if test="${user.pageType==2 }">文科论文</c:if>
                    </td>
                    <td>毕业日期：</td>
                    <td>
                        <fmt:formatDate value="${user.graduateDate }" pattern="yyyy-MM-dd"/>
                    </td>

                </tr>

            </table>
        </div>

    </div>


</form>
</body>
</html>

