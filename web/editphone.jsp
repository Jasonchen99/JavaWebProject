<%--
  Created by IntelliJ IDEA.
  User: Jason Chen
  Date: 19/12/19
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script language="JavaScript">
        if (window != top)
            top.location.href = location.href;
    </script>
</head>
<body>
<form action="PhoneServlet" method="post">
    <input type="hidden" name="method" value="modifyPhone">
    手机ID：<input type="text" name="pid" readonly value="${phone.pid}">
    <br>
    品牌ID：<input type="text"name="bid" value="${phone.bid}">
    <br>
    手机型号：<input type="text"name="model" value="${phone.model}">
    <br>
    库存：<input type="text"name="stock" value="${phone.stock}">
    <br>
    信息：<input type="text"name="info" value="${phone.info}">
    <br>
    价格：<input type="text"name="price" value="${phone.price}">
    <br>
    图片地址：<input type="text"name="image" value="${phone.image}">
    <br>
    <input type="submit" value="修改">
</form>
</body>
</html>
