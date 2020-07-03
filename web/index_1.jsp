<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>基于JSP的简单购物车</title>
  </head>
  <body>
	<%! 
	String[] goodListnames={"高数36讲","真题黄皮书","编译原理","肖秀荣全家桶"};
	String[] imageListnames={"\"36讲.jpg\",\"黄皮书.jpg\",\"编译原理.jpg\",\"肖秀荣全家桶.jpg\""};
 	float[] goodListprices={102.3f,192.0f,64.02f,288.0f};
	%>
	<table align="center" border="1" width="800" rules="all" cellspacing="0" cellpadding="5">
	<tr height="50"><td colspan="5" align="center">考研书目如下</td></tr>
	<tr align="center" height="60" bgcolor="goldenrod">
		<td>书目</td>
        <td>实物展示</td>
		<td>价格</td>
		<td>数量</td>
		<td>结算</td>
	</tr>
	<%  if(goodListnames==null||goodListnames.length==0){ %>
	<tr height="100"><td colspan="5" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
			for(int i=0;i<goodListnames.length;i++){
	%>
	<tr height="100" align="center">
	<form>
		<td><%=goodListnames[i]%></td>
        <td><img src="imageListnames[i]"/></td>
		<td><%=goodListprices[i]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy" value="购买"></td>
	</form>
	</tr>
	<%
			}
		}
	%>
	</table>
	</body>
</html>
