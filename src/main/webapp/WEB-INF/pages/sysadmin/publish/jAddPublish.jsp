<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../baselist.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>发布系统通知</title>
</head>

<body>
<form name="icform" method="post">

    <div id="menubar">
        <div id="middleMenubar">
            <div id="innerMenubar">
                <div id="navMenubar">
                    <ul>
                        <li id="save"><a href="#" onclick="save()">发布</a>
                        </li>
                        <li id="back"><a href="#" onclick="window.history.back();">返回</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="textbox-title">

        &nbsp;&nbsp;&nbsp;&nbsp;发布系统通知
    </div>
    <div>
        <div class="eXtremeTable">
            <table id="ec_table" class="tableRegion" width="98%">
                <tr>
                    <td width="200"><font style="font-size: 20px">输入通知内容：</font></td>
                    <td><textarea style="width: 300px;height: 100px" name="msg"> </textarea></td>
                    <td>&nbsp;&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                    <td>&nbsp;&nbsp;</td>
                </tr>

            </table>
        </div>
    </div>
</form>
</body>

<script type="text/javascript">

    function save() {
        formSubmit('addPublish', '_self');
        this.blur();
    }
</script>
</html>

