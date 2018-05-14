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
        &nbsp;&nbsp;&nbsp;个人论文结果
    </div>
    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader" style="width:200px;text-align: center">论文查重结果(重复率/%)</td>
                    <td class="tableHeader" style="width:200px;text-align: center">论文评阅结果(/分)</td>
                    <td class="tableHeader" style="width:200px;text-align: center">答辩结果</td>

                </tr>
                </thead>
                <tbody class="tableBody">
                        <td style="width:200px;text-align: center">${result.toArray()[0]["query_result"]}</td>
                        <td style="width:200px;text-align: center">${result.toArray()[0]["reply_grade"]}</td>
                        <td style="width:200px;text-align: center">${result.toArray()[0]["reply_result"]}</td>
                            <%--<td>
                                <c:if test="${u.state==1}"><a href="stop?userId=${u.userId}"><font color="green">启用</font></a></c:if>
                                <c:if test="${u.state==0}"><a href="start?userId=${u.userId}"><font color="red">停用</font></a></c:if>
                            </td>--%>
                    </tr>

                </tbody>
            </table>
        </div>

    </div>


</form>
</body>
</html>

