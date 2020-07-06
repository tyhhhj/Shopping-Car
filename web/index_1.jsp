<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>基于JSP的简单购物车</title>
  </head>
  <style>
	  p{
		  font-size: 20px;
	   }
  </style>
  <body>
	<%! 
	String[] goodListnames={"高数36讲","真题黄皮书","编译原理","肖秀荣全家桶"};
 	float[] goodListprices={102.3f,192.0f,64.02f,288.0f};
	%>
	<p style="color:orangered;text-align:center" >欢迎来到逸夫图书专营店</p>
	<table align="center" border="1" width="800" rules="all" cellspacing="0" cellpadding="5">
	<tr height="50"><td colspan="5" align="center">考研书目如下</td></tr>
	<tr align="center" height="60">
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
		else
	%>
	<tr height="100" align="center">
	<form action="ShoppingCar_main.jsp?action=buy&id=<%=0%>" method="post" name="form1">
		<td><%=goodListnames[0]%></td>
        <td><img height="50" width="60" src="1.jpg"/></td>
		<td><%=goodListprices[0]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy" value="购买"></td>
	</form>
	</tr>
	<tr height="100" align="center">
	<form action="ShoppingCar_main.jsp?action=buy&id=<%=1%>" method="post" name="form1">
		<td><%=goodListnames[1]%></td>
		<td><img height="50" width="60" src="2.jpg"/></td>
		<td><%=goodListprices[1]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy" value="购买"></td>
	</form>
	</tr>
	<tr height="100" align="center">
	<form action="ShoppingCar_main.jsp?action=buy&id=<%=2%>" method="post" name="form1">
		<td><%=goodListnames[2]%></td>
		<td><img height="50" width="60" src="3.jpg"/></td>
		<td><%=goodListprices[2]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy" value="购买"></td>
	</form>
	</tr>
	<tr height="100" align="center">
	<form action="ShoppingCar_main.jsp?action=buy&id=<%=3%>" method="post" name="form1">
		<td><%=goodListnames[3]%></td>
		<td><img height="50" width="60" src="4.jpg"/></td>
		<td><%=goodListprices[3]%></td>
		<td><input width="10" size="5" type="text" name="aa">
		<td><input type="submit" name="buy" value="购买"></td>
	</form>
	</tr>
		<tr height="50">
			<td align="center" colspan="5"><a href="ShoppingCar_main.jsp">查看购物车</a></td>
			<%--//to do--%>
		</tr>
	</table>
	</body>
</html>
