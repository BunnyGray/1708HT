<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>部门列表</title>
</head>

<body>
<script language="javascript">
    function del() {
        if (confirm("是否确定删除所选学生信息？")) {
            //_Submit("/home/olmsgDeleteAction.do?delId="+id,null,"删除");
            formSubmit('delete', '_self');
            this.blur();
        }
    }

</script>

<form name="icform" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="new"><a href="#" onclick="formSubmit('tocreate','_self');this.blur();">新增</a></li>
                        <li id="update"><a href="#" onclick="formSubmit('toupdate','_self');this.blur();">修改</a></li>
                        <li id="delete"><a href="#" onclick="del()">删除</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
        研究生列表
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader"><input type="checkbox"
                                                   name="selid" onclick="checkAll('userId',this)"></td>
                    <td class="tableHeader">序号</td>
                    <td class="tableHeader">学号</td>
                    <td class="tableHeader">姓名</td>
                    <td class="tableHeader">性别</td>
                    <td class="tableHeader">年龄</td>
                    <td class="tableHeader">民族</td>
                    <td class="tableHeader">身份证号</td>
                    <td class="tableHeader">毕业日期</td>
                    <td class="tableHeader">校内导师</td>
                    <td class="tableHeader">企业导师</td>
                    <td class="tableHeader">研究室号码</td>
                    <td class="tableHeader">专业</td>
                    <td class="tableHeader">是否全日制</td>
                    <td class="tableHeader">电话号</td>
                    <td class="tableHeader">QQ号码</td>
                    <td class="tableHeader">电子邮箱</td>
                    <td class="tableHeader">论文题目</td>
                    <td class="tableHeader">论文类型</td>

                </tr>
                </thead>
                <tbody class="tableBody">

                <c:forEach items="${students}" var="u" varStatus="status">
                    <tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
                        <td><input type="checkbox" name="userId" value="${u.stuNo}"/></td>
                        <td>${status.index+1}</td>
                        <td>${u.stuNo}</td>
                        <td><a style="color:blue" href="toview?userId=${u.stuNo}">${u.name}</a></td>
                        <td>${u.gender}</td>
                        <td>${u.age}</td>
                            <%--<td><fmt:formatDate value="${u.userInfo.birthday}" pattern="yyyy-MM-dd" /></td>--%>
                        <td>${u.nation}</td>
                        <td>${u.cardNo}</td>
                        <td><fmt:formatDate value="${u.graduateDate}" pattern="yyyy-MM-dd"/></td>
                        <td>${u.teacherNoIn}</td>
                        <td>${u.teacherNoOut}</td>
                        <td>${u.classNo}</td>
                        <td>${u.major}</td>
                        <td>
                            <c:if test="${u.isFullTime==0}">否</c:if>
                            <c:if test="${u.isFullTime==1}">是</c:if>
                        </td>
                        <td>${u.phoneNo}</td>
                        <td>${u.qqNo}</td>
                        <td>${u.email}</td>
                        <td>${u.pageTopic}</td>
                        <td>
                            <c:if test="${u.pageType==1 }">工学论文</c:if>
                            <c:if test="${u.pageType==2 }">文科论文</c:if>
                        </td>
                            <%--<td>
                                <c:if test="${u.state==1}"><a href="stop?userId=${u.userId}"><font color="green">启用</font></a></c:if>
                                <c:if test="${u.state==0}"><a href="start?userId=${u.userId}"><font color="red">停用</font></a></c:if>
                            </td>--%>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

    </div>


</form>
</body>
</html>

