<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>

<body>
<script language="javascript">

</script>

<form name="icform" method="post">


    <div class="textbox-title">
        &nbsp;&nbsp;&nbsp;导师所带研究生信息
    </div>
    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader" style="width:200px;text-align: center">学号</td>
                    <td class="tableHeader" style="width:200px;text-align: center">姓名</td>
                    <td class="tableHeader" style="width:200px;text-align: center">性别</td>
                    <td class="tableHeader" style="width:200px;text-align: center">论文题目</td>
                    <td class="tableHeader" style="width:200px;text-align: center"> 论文类型</td>

                </tr>
                </thead>
                <tbody class="tableBody">
                <c:forEach items="${studentInfo.toArray()}" var="u" varStatus="i">
                    <tr>
                        <td style="width:200px;text-align: center">${u["stu_no"]}</td>
                        <td style="width:200px;text-align: center">${u["name"]}</td>
                        <td style="width:200px;text-align: center">${u["gender"]}</td>
                        <td style="width:200px;text-align: center">${u["page_topic"]}</td>
                        <td style="width:200px;text-align: center">
                            <c:if test='${u["page_type"]==1}'>应用研究</c:if>
                            <c:if test='${u["page_type"]==2}'>工程设计</c:if>
                            <c:if test='${u["page_type"]==3}'>产品研发</c:if>
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

