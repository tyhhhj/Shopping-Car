<%@ page import="dao.UserDao" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
username=<%=request.getParameter("username")%>
password=<%=request.getParameter("password")%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(UserDao.login(username,password))
    {
        out.println("welcome "+username);
        session.setAttribute("name",username);
        List<String> userList = (List<String>) (application.getAttribute("onlineUsers"));
        //userList.add(username);
        response.sendRedirect("index.jsp");
    }
    else
    {
        out.println("登陆失败");
        response.sendRedirect("login.html");
    }
%>
</body>
</html>
