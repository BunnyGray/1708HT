<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>模块介绍</title>
  	<link rel="stylesheet" rev="stylesheet" type="text/css" href="${ctx}/staticfile/skin/default/css/main.css" media="all"/>
</head>

<body>
<form>
<div class="textbox"></div>

	<div class="modelDiv">

        <table class="modelTable" cellspacing="1">
        	<tr>
        		<td colspan="2" class="modelTitle">答辩学生模块介绍</td>
        	</tr>

        	<tr>
        		<td colspan="2" class="subModelTitle">查看论文结果</td>
        	</tr>        	
			<tr>
				<td class="model_intro_left" width="169">显示本人论文结果：</td>
				<td class="model_intro_right" width="81%"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>包括论文查重结果，论文评阅结果和答辩结果。</td>
			</tr>   	

			<tr>
        		<td colspan="2" class="subModelTitle">查看评阅意见</td>
        	</tr>  
			<tr>
				<td class="model_intro_left">评阅意见：</td>
				<td class="model_intro_right"><font style="font-size: 15px;color: blue;font-weight: bold">※ </font>展示评阅导师对自己论文的评阅结果。</td>
			</tr>   	
			
			<tfoot>
				<tr>
					<td colspan="2" class="tableFooter"></td>
				</tr>
			</tfoot>
        </table>
 
	</div>
</form>
</body>

</html>