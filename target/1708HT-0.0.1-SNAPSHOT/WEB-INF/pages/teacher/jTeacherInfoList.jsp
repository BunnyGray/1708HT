<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
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



    <div class="textbox-title">
        &nbsp;&nbsp;&nbsp;导师所带研究生的答辩评阅人列表
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
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
                        <td>${status.index+1}</td>
                        <td>${u.jobNo}</td>
                        <td>${u.name}</td>
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

