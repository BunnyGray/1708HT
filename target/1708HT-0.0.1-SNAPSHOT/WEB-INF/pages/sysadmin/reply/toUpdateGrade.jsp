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
                        <li id="save"><a href="#" onclick="save()">保存修改</a>
                        </li>
                        <li id="back"><a href="#" onclick="window.history.back();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">
        <img src="../../staticfile/skin/default/images/icon/currency_yen.png"/>
        录入评阅成绩
    </div>

    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <tr>
                    <td>研究生姓名：</td>
                    <td>
                        <select id="select" name="stuNo" onchange="getName()">
                            <option>-请选择研究生姓名-</option>
                            <!-- 先获取页面返回来的部门列表 然后遍历 -->
                            <c:forEach items="${replys }" var="r">
                                <option value="${r.stuNo}">${r.name }</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>研究生学号：</td>
                    <td>
                        <input id="in" type="text" name="name" value="--请确认姓名与学号对应--" disabled="disabled"/>
                    </td>
                    <td><input type="text" hidden="hidden"/></td>
                </tr>
                <tr>
                    <td>评阅成绩1：</td>
                    <td><input type="text" name="grade1" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                               ng-pattern="/[^a-zA-Z]/" placeholder="只能输入数字"/></td>
                    <td><input type="text" hidden="hidden"/></td>
                    <td><input type="text" hidden="hidden"/></td>
                </tr>
                <tr>
                    <td>评阅成绩2：</td>
                    <td><input type="text" name="grade2" onkeypress="return event.keyCode>=48&&event.keyCode<=57"
                               ng-pattern="/[^a-zA-Z]/" placeholder="只能输入数字"/></td>
                    <td><input type="text" hidden="hidden"/></td>
                    <td><input type="text" hidden="hidden"/></td>
                </tr>

            </table>
        </div>
    </div>
</form>
</body>

<script type="text/javascript">
    function getName() {
        var myselect = document.getElementById("select");
        var indexx = myselect.selectedIndex;
        var inn = myselect.options[indexx].value;
        if (Number(inn)) {
            document.getElementById("in").value = inn;
        } else {
            document.getElementById("in").value = "--请确认姓名与学号对应--";
        }
    }
    function save() {
        var indexxx = document.getElementById("select").selectedIndex;
        var innn = document.getElementById("select").options[indexxx].value;
        if (Number(innn)) {
            formSubmit('updateGrade','_self');this.blur();
        } else {
            alert("未选择研究生");
        }
    }
</script>
</html>

