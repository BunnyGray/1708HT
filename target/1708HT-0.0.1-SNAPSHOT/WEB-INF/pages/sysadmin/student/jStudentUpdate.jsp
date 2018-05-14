<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>修改研究生信息</title>
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
        修改研究生信息
    </div>

    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <tr>
                    <td><input name="stuNo" value="${student.stuNo} " type="hidden"></td>
                </tr>
                <tr>

                    <td>学号：</td>
                    <td> ${student.stuNo }</td>
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
                    <td><input type="text" name="teacherNoIn" value="${student.teacherNoIn }"/></td>
                    <td>企业导师：</td>
                    <td><input type="text" name="teacherNoOut" value="${student.teacherNoOut }"/></td>
                    <%--<td><fmt:formatDate value="${student.studentInfo.birthday }" pattern="yyyy-MM-dd"/></td>--%>
                </tr>
                </tr>
                <tr>
                    <td>研究室号码：</td>
                    <td><input type="text" name="classNo" value="${student.classNo }"/></td>
                    <td>专业：</td>
                    <td><input type="text" name="major" value="${student.major }"/>
                    </td>
                </tr>

                <tr>
                    <td>是否全日制：</td>
                    <td>
                        <select name="isFullTime">
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
                    <td><select name="pageType">
                        <option value="1"
                                <c:if test="${student.pageType==1}">selected="selected"</c:if> >-工学论文-
                        </option>
                        <option value="2"
                                <c:if test="${student.pageType==2 }">selected="selected"</c:if> >-文科论文-
                        </option>
                    </select>
                    </td>

                    <td>毕业日期：</td>
                    <td><input type="date" name="graduateDate" value='<fmt:formatDate value="${student.graduateDate }" pattern="yyyy-MM-dd"/>'/></td>

                </tr>

            </table>
        </div>


    </div>


</form>
</body>
</html>

