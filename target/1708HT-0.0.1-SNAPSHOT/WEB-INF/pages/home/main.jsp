<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
  <title></title>
  <script type="text/javascript" src="${ctx}/staticfile/components/jquery-ui/jquery-1.2.6.js"></script>
  <style>
    .curbody {
      CURSOR: url(${ctx}/staticfile/images/olmsg/shubiao.ani);
      background: url(${ctx}/staticfile/images/olmsg/pic738x571.jpg);
    }

    .msgcontent {
      width: 218px;
      overflow: hidden;
      word-break: break-all;
      padding: 10px;
      font-size: 14px;
      color: #339966;
      font-family: Tahoma;
      line-height: 180%;
    }

    .msgcontent p {
      text-indent: 0px;
    }

    .msgcontent
    ul

    (
    margin:

    0
    px

    ;
    }
    .msgbackcontent {
      width: 218px;
      overflow: hidden;
      word-break: break-all;
      padding: 10px;
      font-size: 14px;
      color: #339966;
      font-family: Tahoma;
      line-height: 180%;
    }

    .msgbackcontent p {
      text-indent: 0px;
    }

    li {
      text-indent: 0px;
      margin: 0px;
      list-style: default;
    }
  </style>
</head>
<script language="javascript">
    //-- 控制层移动start of script -->
    var Obj = '';
    var index = 10000;//z-index;
    var color = '';
    var str = '';
    document.onmouseup = MUp
    document.onmousemove = MMove

    function MMove() {
        if (Obj != '') {
            document.all(Obj).style.left = event.x - pX;
            document.all(Obj).style.top = event.y - pY;
        }
    }

    function MUp() {
        if (Obj != '') {
            document.all(Obj).releaseCapture();
            Obj = '';
        }
        var srcEle = event.srcElement;

        var children = srcEle.children;
        if (children.length > 0) {
            children[1].value = "1";		//isChange
            children[2].value = event.x - pX;
            children[3].value = event.y - pY;
        }
    }

    function MDown(objtd, id) {
        Obj = id
        document.all(Obj).setCapture()
        pX = event.x - document.all(Obj).style.pixelLeft;
        pY = event.y - document.all(Obj).style.pixelTop;
    }

    //-- 控制层移动end of script -->
    //获得焦点;
    function getFocus(obj) {
        if (obj.style.zIndex != index) {
            index = index + 2;
            var idx = index;
            obj.style.zIndex = idx;
            //obj.nextSibling.style.zIndex=idx-1;
        }
    }

    function killErrors() {
        return true;
    }

    window.onerror = killErrors;
</script>
<body class="curbody">
<form name="form2">
  <!-- 工具栏部分 ToolBar -->
  <%--<div id="menubar">
    <div id="middleMenubar">
      <div id="innerMenubar">
        <div id="navMenubar">
          <ul>
            <li id="new"><a href="#">新建</a></li>
            <li id="save"><a href="#" title="保存留言窗口的位置信息">位置</a></li>
            <li id="stat"><a href="#">历史</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>--%>
  <logic:notEmpty name="olmsgList">
    <div id='ff8080813d00613e013d0067909e0009'
         style='position:absolute;left:122px;top:80px;z-index:1001; height:164px;background:none;background-repeat: no-repeat'
         onmousedown='getFocus(this)'>
      <table border=0 cellspacing="0" cellpadding="0" width="250">
        <tr>
          <td style='cursor:move;' onmousedown="MDown(this,'ff8080813d00613e013d0067909e0009')"
              background="${ctx}/staticfile/images/olmsg/C0FFE51.gif" height="45">
            <input type="hidden" name="id" class="input" value="ff8080813d00613e013d0067909e0009"/>
            <input type="hidden" name="isChange" class="input" value="0"/>
            <input type="hidden" name="posX" class="input" value="122"/>
            <input type="hidden" name="posY" class="input" value="97"/>
            &nbsp;
          </td>
        </tr>
        <tr>
          <td style='cursor:move;white-space:nowrap;' width='100%' onmousedown="MDown('ff8080813d00613e013d0067909e0009')"
              background="${ctx}/staticfile/images/olmsg/C0FFE52.gif">
            <div style="float:left;width:130px;padding-left:7px;font-family:华文楷体;color:gray;font-style : normal;font-size: 15px">
              ~~~~~~~最新系统通知~~~~~~~
            </div>
          </td>
        </tr>
        <tr>
          <td background="${ctx}/staticfile/images/olmsg/C0FFE52.gif">
            <div style="float:left;padding-left:6px;font-family:华文楷体;color:#0066cc;font-style : normal;font-size: 14px" class="msgcontent">
                --点击左侧标签获取最新系统通知
            </div>
          </td>
        </tr>
        <tr>
          <td id="tagBPic" background="${ctx}/staticfile/images/olmsg/C0FFE53.gif" height="63">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50" align="center">
                  <img border="0" src="${ctx}/staticfile/images/olmsg/2.gif">
                </td>
                <td style="text-align:right;padding-right:8px;" nowrap>
                  [备忘]
                  <!-- [回复] -->
                  <!-- [回执] -->
                  <!-- [撤销原因] -->
                  <!-- state==99[完成] -->
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </div>
  </logic:notEmpty>
</form>
</body>
</html>

