<%@ page import="cn.chen.pojo.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Jason Chen
  Date: 19/11/30
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<User> list=(List<User>)request.getAttribute("userList");
    for(User u:list){
        out.println(u.getUserName()+" "+u.getPassword()+" "+u.getHeight());
%>
<hr>
<%
    }
%>
</body>
</html>
