<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>修改导师信息</title>
</head>

<body>
<form name="icform" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="formSubmit('update','_self');this.blur();">更新</a></li>
                        <li id="back"><a href="#" onclick="window.history.back();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
        修改导师信息
    </div>

    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <tr>
                    <td><input name="jobNo" value="${teacher.jobNo} " type="hidden"></td>
                </tr>
                <tr>

                    <td>教职工号：</td>
                    <td> ${teacher.jobNo }</td>
                    <td>姓名：</td>
                    <td><input type="text" name="name" value="${teacher.name }"/></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td><input type="text" name="gender" value="${teacher.gender }"/></td>
                    <td>职称：</td>
                    <td><input type="text" name="jobTitle" value="${teacher.jobTitle }"/></td>
                </tr>
                <tr>
                    <td>身份证号：</td>
                    <td><input type="text" name="cardNo" value="${teacher.cardNo }"/></td>
                    <td>电话号：</td>
                    <td><input type="text" name="phoneNo" value="${teacher.phoneNo }"/></td>
                </tr>

                <tr>
                    <td>QQ号码：</td>
                    <td><input type="text" name="qqNo" value="${teacher.qqNo }"/></td>
                    <td>微信号码：</td>
                    <td><input type="text" name="wechatNo" value="${teacher.wechatNo }"/></td>
                    <%--<td><fmt:formatDate value="${teacher.teacherInfo.birthday }" pattern="yyyy-MM-dd"/></td>--%>
                </tr>
                </tr>
                <tr>
                    <td>电子邮箱：</td>
                    <td><input type="text" name="email" value="${teacher.email }"/></td>
                    <td>导师身份：</td>
                    <td>
                        <select name="teacherType">
                            <option value = "校内导师" <c:if test='${teacher.teacherType=="校内导师"}'> selected="selected" </c:if> >
                                校内导师
                            </option>
                            <option value = "企业导师" <c:if test='${teacher.teacherType=="企业导师"}'> selected="selected" </c:if>>
                                企业导师
                            </option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><input type="text" name="passwd" value="${teacher.passwd }"/>
                    </td>
                    </td>
                </tr>


            </table>
        </div>


    </div>


</form>
</body>
</html>

