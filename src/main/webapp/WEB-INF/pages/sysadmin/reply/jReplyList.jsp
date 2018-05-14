<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>答辩信息列表</title>
</head>

<%--<span style=font-family:华文楷体 />--%>

<body>
<div align="left"><font size="3" color="purple" face="华文楷体">选择录入种类：</font></div>
<form name="icform" method="post">
    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>

                        <li id="update"><a href="#"
                                           onclick="formSubmit('toupdatequery','_self');this.blur();">查重结果</a></li>
                        <li id="update"><a href="#"
                                           onclick="formSubmit('toupdategrade','_self');this.blur();">评阅成绩</a></li>
                        <li id="update"><a href="#" onclick="formSubmit('toupdategradeandresult','_self');this.blur();">答辩成绩和结果</a>
                        </li>
                        <%--<li id="delete"><a href="#" onclick="formSubmit('delete','_self');this.blur();">删除</a></li>--%>
                        <%--<li id="new"><a href="#" onclick="formSubmit('start','_self');this.blur();">启用</a></li>--%>
                        <%--<li id="new"><a href="#" onclick="formSubmit('stop','_self');this.blur();">停用</a></li>--%>
                        <%--<li id="new"><a href="#" onclick="formSubmit('role','_self');this.blur();">角色</a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
        答辩信息列表
    </div>

    <div>


        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <thead>
                <tr>
                    <%--<td class="tableHeader"><input type="checkbox"
                                                   name="selid" onclick="checkAll('userId',this)"></td>--%>
                    <td class="tableHeader" style="text-align: center">序号</td>
                    <td class="tableHeader" style="text-align: center">学号</td>
                    <td class="tableHeader" style="text-align: center">姓名</td>
                    <td class="tableHeader" style="text-align: center">性别</td>
                    <td class="tableHeader" style="text-align: center">校内导师</td>
                    <td class="tableHeader" style="text-align: center">企业导师</td>
                    <td class="tableHeader" style="text-align: center">论文题目</td>
                    <td class="tableHeader" style="text-align: center">论文类型</td>
                    <td class="tableHeader" style="text-align: center">查重结果(重复率/%)</td>
                    <td class="tableHeader" style="text-align: center">评阅成绩1</td>
                    <td class="tableHeader" style="text-align: center">评阅成绩2</td>
                    <td class="tableHeader" style="text-align: center">答辩成绩</td>
                    <td class="tableHeader" style="text-align: center">答辩结果</td>
                    <td class="tableHeader" style="text-align: center"></td>
                </tr>
                </thead>
                <tbody class="tableBody">

                <c:forEach items="${replys}" var="u" varStatus="status">
                    <tr align="center" class="odd" onmouseover="this.className='highlight'"
                        onmouseout="this.className='odd'">
                        <%--<td>&lt;%&ndash;<input type="checkbox" name="userId" value="${u.stuNo}"/>&ndash;%&gt;</td>--%>
                        <td>${status.index+1}</td>
                        <td>${u.stuNo}</td>

                        <td>${u.name}</td>
                        <td>${u.gender}</td>
                        <td>${u.teacherIn}</td>
                        <td>${u.teacherOut}</td>
                        <td>${u.pageTopic}</td>
                        <td>
                            <c:if test="${u.pageType==1}">应用研究</c:if>
                            <c:if test="${u.pageType==2}">工程设计</c:if>
                            <c:if test="${u.pageType==3}">产品研发</c:if>
                        </td>
                        <td>${u.queryResult}</td>
                        <td>${u.grade1}</td>
                        <td>${u.grade2}</td>
                        <td>${u.replyGrade}</td>
                        <td>${u.replyResult}</td>
                        <td><c:if test="${u.isFinished==0}"><font color="red">信息未完整录入</font></c:if>
                            <c:if test="${u.isFinished==1}"><font color="green">信息已完整录入</font></c:if>
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

