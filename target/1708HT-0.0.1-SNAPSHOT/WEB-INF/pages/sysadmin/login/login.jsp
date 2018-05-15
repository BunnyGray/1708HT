<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>研究生答辩管理系统</title>
  <link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/login.css" media="all"/>
  <script src="${ctx}/staticfile/components/pngfix/DD_belatedPNG.js"></script>
  <script> DD_belatedPNG.fix('*'); </script>
</head>
<body>
<form id="login_main" method="post">
  <div id="png">
    <div class="box">
      <div class="inputstyle">
        <div class="inputlable">&nbsp;&nbsp;用户名：
          <input type="text" value="admin" placeholder="" name="username" id="username" onFocus="this.select();" title="请您输入用户名"/>
          <div id="ts" style="z-index:1;"></div>
        </div>
        <div class="inputlable">&nbsp;&nbsp;密　 码：
          <input type="password" value="123456" name="password" id="password"
                 onfocus="$('#ts').css('display','none');this.select();"
                 onKeyDown="javascript:if(event.keyCode==13){ submitFind(); }" title="请您输入密码"/>
        </div>
        <div class="inputlable">&nbsp;&nbsp;验证码：
          <input type="text" value="" placeholder="请输入验证码" required name="valicode" id="valicode" style="width: 150px"/>
        </div> &nbsp;&nbsp;&nbsp;<img style="padding-left:inherit" onclick="changeImage(this)"
                                      src="<%= request.getContextPath() %>/servlet/ValiImageServlet" width="" height="" alt=""/>
        <script>
            /* 点击图片换一张 */
            function changeImage(thisobj) {
                thisobj.src = "<%= request.getContextPath() %>/servlet/ValiImageServlet?a=" + new Date().getTime();
            }
        </script>
        <div class="inputlable">
          <%--<select name="usertype" style="width: 160px;height: 26px">--%>
          <%--<option value="2">研究生</option>--%>
          <%--<option value="3">研究生导师</option>--%>
          <%--<option value="1">学位点负责人</option>--%>
          <%--</select>--%>
          <input type="button" style="width: 380px;background: none;color: whitesmoke;border: none" value="Tip: 输入用户名密码之后自动进入对应角色的功能页" readonly/>
        </div>
      </div>
      <div class="btnstyle">
        <input class="loginImgOut" value="" type="button" onclick="submition()" onmouseover="this.className='loginImgOver'"
               onmouseout="this.className='loginImgOut'"/>
        <input class="resetImgOut" value="" type="button" onclick="inputreset()" onmouseover="this.className='resetImgOver'"
               onmouseout="this.className='resetImgOut'"/>
      </div>
      <div class="msgtip" id="remove">
        <c:if test="${!empty errorInfo}">
          <font color="red">${errorInfo}</font>
        </c:if>
      </div>
    </div>
  </div>
</form>
</body>
<script type="text/JavaScript">
    document.getElementById('login_main').userName.focus();

    function inputreset() {
        document.getElementsByName("username")[0].value = '';
        document.getElementsByName("password")[0].value = '';
        document.getElementById("valicode").value = '';
    }

    function submition() {
        formSubmit('login', '_self');
        this.blur();
    }
</script>
</html>


