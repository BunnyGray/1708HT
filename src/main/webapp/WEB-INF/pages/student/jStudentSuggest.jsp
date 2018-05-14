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
        &nbsp;&nbsp;&nbsp;个人论文评阅意见
    </div>
    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <td class="tableHeader" >评阅意见:</td>

                </tr>
                </thead>
                <tbody class="tableBody">
                        <td >&nbsp;&nbsp;${suggest}</td>
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

