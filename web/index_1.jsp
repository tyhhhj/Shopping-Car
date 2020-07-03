<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>基于JSP的简单购物车</title>
  </head>
  <body>
	<%! 
	String[] goodListnames={"Test1","Test2","Test3","Test4"};
	float[] goodListprices={1.0f,2.0f,3.0f,4.0f};
	%>
	<table align="center" border="1" width="500" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="4" align="center">提供商品如下</td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td>名称</td>
		<td>价格</td>
		<td>数量</td>
		<td>购买</td>
	</tr>
	<%  if(goodListnames==null||goodListnames.length==0){ %>
	<tr height="100"><td colspan="4" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
			for(int i=0;i<goodListnames.length;i++){
	%>
	<tr height="50" align="center">
	<form>
		<td><%=goodListnames[i]%></td>
		<td><%=goodListprices[i]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy"  value="购买"></td>
	</form>
	</tr>
	<%
			}
		}
	%>
	</table>
	</body>
</html>
