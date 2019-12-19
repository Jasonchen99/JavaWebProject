<%--
  Created by IntelliJ IDEA.
  User: Jason Chen
  Date: 19/12/19
  Time: 11:38
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
<form action="BrandServlet" method="post">
    <input type="hidden" name="method" value="modifyBrand">
    品牌ID：<input type="text" name="bid" readonly value="${brand.bid}">
    <br>
    品牌名：<input type="text"name="bname" value="${brand.bname}">
    <br>
    <input type="submit" value="修改">
</form>
</body>
</html>
