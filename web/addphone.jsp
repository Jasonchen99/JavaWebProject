<%--
  Created by IntelliJ IDEA.
  User: Jason Chen
  Date: 19/12/19
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="PhoneServlet" method="post">
    <input type="hidden" name="method" value="addPhone">
    手机ID：<input type="text" name="pid">
    <br>
    品牌ID：<input type="text"name="bid">
    <br>
    型号：<input type="text" name="model">
    <br>
    库存：<input type="text" name="stock">
    <br>
    信息：<input type="text" name="info">
    <br>
    价格：<input type="text" name="price">
    <br>
    图片地址：<input type="text" name="image">
    <br>
    <input type="submit" value="添加">
</form>
</body>
</html>
