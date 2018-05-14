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
        if (confirm("确定删除选择的研究生导师信息？")) {
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
        研究生导师列表
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader"><input type="checkbox"
                                                   name="selid" onclick="checkAll('userId',this)"></td>
                    <td class="tableHeader">序号</td>
                    <td class="tableHeader">教职工号</td>
                    <td class="tableHeader">姓名</td>
                    <td class="tableHeader">性别</td>
                    <td class="tableHeader">职称</td>
                    <td class="tableHeader">身份证号</td>
                    <td class="tableHeader">电话号</td>
                    <td class="tableHeader">QQ号码</td>
                    <td class="tableHeader">微信号码</td>
                    <td class="tableHeader">电子邮箱</td>
                    <td class="tableHeader">导师身份</td>

                </tr>
                </thead>
                <tbody class="tableBody">

                <c:forEach items="${teachers}" var="u" varStatus="status">
                    <tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
                        <td><input type="checkbox" name="userId" value="${u.jobNo}"/></td>
                        <td>${status.index+1}</td>
                        <td>${u.jobNo}</td>
                        <td><a style="color:blue" href="toview?userId=${u.jobNo}">${u.name}</a></td>
                        <td>${u.gender}</td>
                        <td>${u.jobTitle}</td>
                            <%--<td><fmt:formatDate value="${u.userInfo.birthday}" pattern="yyyy-MM-dd" /></td>--%>
                        <td>${u.cardNo}</td>
                        <td>${u.phoneNo}</td>
                        <td>${u.qqNo}</td>
                        <td>${u.wechatNo}</td>
                        <td>${u.email}</td>
                        <td> ${u.teacherType}</td>
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

