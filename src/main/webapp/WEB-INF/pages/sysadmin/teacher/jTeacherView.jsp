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
                    <td><input name="userId" value="${user.jobNo } " type="hidden"></td>
                </tr>
                <tr>

                    <td>教职工号：</td>
                    <td>${user.jobNo}</td>
                    <td>姓名：</td>
                    <td>${user.name}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>${user.gender }</td>
                    <td>职称：</td>
                    <td>${user.jobTitle }</td>
                </tr>
                <tr>
                    <td>身份证号：</td>
                    <td>${user.cardNo }</td>
                    <td>电话号：</td>
                    <td>${user.phoneNo }</td>
                </tr>
                <tr>
                    <td>QQ号码：</td>
                    <td>${user.qqNo}</td>
                    <td>微信号码：</td>
                    <td> ${user.wechatNo}</td>
                    <%--<td><fmt:formatDate value="${user.userInfo.birthday }" pattern="yyyy-MM-dd"/></td>--%>
                </tr>
                </tr>
                <tr>
                    <td>电子邮箱：</td>
                    <td>${user.email }</td>
                    <td>导师身份：</td>
                    <td>
                        ${user.teacherType}
                    </td>
                </tr>

                <tr>
                    <td>密码：</td>
                    <td>
                        ${user.passwd }
                    </td>
                </tr>


            </table>
        </div>

    </div>


</form>
</body>
</html>

