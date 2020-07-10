<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>购物车主页面</title>
</head>
<body>
<%!
	String[] goodListnames={"高数36讲","真题黄皮书","编译原理","肖秀荣全家桶"};
	float[] goodListprices={102.3f,192.0f,64.02f,288.0f};
%>
<%
		ArrayList buylist = (ArrayList) session.getAttribute("buylist");
		String action=request.getParameter("action");
		if(action.equals("buy")){
			int shuliang = Integer.parseInt(request.getParameter("aa"));
			int item = Integer.parseInt(request.getParameter("id"));
			String goodname = goodListnames[item];
			float goodprice = goodListprices[item];
			int goodnum = shuliang ;
			if (buylist != null) {
				int i = 0;
				for (; i < buylist.size(); i++) {
					String s = (String) buylist.get(i);
					String[] a = s.split("#");
					int num = Integer.parseInt(a[2]);
					if (a[0].equals(goodname)) {
						goodnum = num + shuliang;
						String goodInfo = goodname + "#" + goodprice + "#"
								+ goodnum;
						buylist.set(i, goodInfo);
						break;
					}
				}
				if (i >= buylist.size()) {
					String goodInfo = goodname + "#" + goodprice + "#"
							+ goodnum;
					buylist.add(goodInfo);
					session.setAttribute("buylist", buylist);
				}
			} else {
				buylist = new ArrayList();
				String goodInfo = goodname + "#" + goodprice + "#" + goodnum;
				buylist.add(goodInfo);
				session.setAttribute("buylist", buylist);
			}
			response.sendRedirect("ShoppingCarmain.jsp");
		}
		if (action.equals("clear")){
     	buylist.clear();
       	response.sendRedirect("ShoppingCarmain.jsp");
     }
     if(action.equals("delete")) {
		 int i = Integer.parseInt(request.getParameter("id"));
		 String S = (String) buylist.get(i);
		 String[] a = S.split("#");
		 int num = Integer.parseInt(a[2]);
		 if (num > 1) {
			 num = num - 1;
			 String goodinfo = a[0] + "#" + a[1] + "#" + num;
			 buylist.set(i, goodinfo);
		 } else {
			 buylist.remove(i);
		 }
		 response.sendRedirect("ShoppingCarmain.jsp");
	 }
	%>
</body>
</html>
