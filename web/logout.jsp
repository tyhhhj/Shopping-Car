<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
    <%
        List<String> userList = (List<String>) application.getAttribute("onlineUsers");
        String name = (String) session.getAttribute("name");
        userList.remove(name);
        session.invalidate();
        response.sendRedirect("index.jsp");
    %>
</body>
</html>
