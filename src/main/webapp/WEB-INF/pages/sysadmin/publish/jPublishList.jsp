<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>答辩信息列表</title>
</head>

<%--<span style=font-family:华文楷体 />--%>

<body>
<form name="icform" method="post">
    <%--<div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>

                        <li id="update"><a href="#"
                                           onclick="formSubmit('publish','_self');this.blur();">发布通知</a></li>
                        </li>
                        &lt;%&ndash;<li id="delete"><a href="#" onclick="formSubmit('delete','_self');this.blur();">删除</a></li>&ndash;%&gt;
                        &lt;%&ndash;<li id="new"><a href="#" onclick="formSubmit('start','_self');this.blur();">启用</a></li>&ndash;%&gt;
                        &lt;%&ndash;<li id="new"><a href="#" onclick="formSubmit('stop','_self');this.blur();">停用</a></li>&ndash;%&gt;
                        &lt;%&ndash;<li id="new"><a href="#" onclick="formSubmit('role','_self');this.blur();">角色</a></li>&ndash;%&gt;
                    </ul>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="textbox-title">

        &nbsp;&nbsp;&nbsp;&nbsp;通知列表
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <%--<td class="tableHeader"><input type="checkbox"
                                                   name="selid" onclick="checkAll('userId',this)"></td>--%>
                    <td class="tableHeader" style="text-align: center">通知内容(按发布时间排序)&nbsp;&nbsp;&nbsp;

                        <a href="#" onclick="formSubmit('toAddPublish','_self');this.blur();" style="color: #00B83F">发布通知</a></td>
                </tr>
                </thead>
                <tbody class="tableBody">

                <c:forEach items="${msgs}" var="u" varStatus="status">
                    <tr align="center" class="odd" onmouseover="this.className='highlight'"
                        onmouseout="this.className='odd'">
                        <%--<td>&lt;%&ndash;<input type="checkbox" name="userId" value="${u.stuNo}"/>&ndash;%&gt;</td>--%>
                        <td>${u}</td>

                      </td>
                            <%--<td>--%>
                            <%--<c:if test="${u.state==1}"><a href="stop?userId=${u.userId}"><font--%>
                            <%--color="green">启用</font></a></c:if>--%>
                            <%--<c:if test="${u.state==0}"><a href="start?userId=${u.userId}"><font--%>
                            <%--color="red">停用</font></a></c:if>--%>
                            <%--</td>--%>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>

    </div>


</form>
</body>
</html>

