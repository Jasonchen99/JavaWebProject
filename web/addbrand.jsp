<%--
  Created by IntelliJ IDEA.
  User: Jason Chen
  Date: 19/12/19
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="BrandServlet" method="post">
    <input type="hidden" name="method" value="addBrand">
    品牌ID：<input type="text" name="bid">
    <br>
    品牌名：<input type="text"name="bname">
    <br>
    <input type="submit" value="添加">
</form>
</body>
</html>
