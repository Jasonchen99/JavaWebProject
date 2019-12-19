<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <title></title>
    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">
</head>

<body>

<div class="am-cf admin-main">
    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">

            <div class="container" style="padding: 50px 10px 0px 10px">
                <div class="am-g" style="margin-top: -30px;">
                    <c:forEach items="${orderList}" var="o">
                        <form class="am-form" action="OrderServlet" method="post">
                            <input type="hidden" name="method" value="deliver">
                            <input type="text" name="oid" value="${o.oid}">
                            <div class="am-u-sm-12">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                    <tr>
                                        <th class="table-id">
                                            订单ID
                                        </th>
                                        <th>
                                            用户id
                                        </th>
                                        <th class="table-title">
                                            产品
                                        </th>
                                        <th>
                                            产品单价
                                        </th>
                                        <th>
                                            产品数量
                                        </th>
                                        <th>
                                            小计
                                        </th>
                                        <th class="table-set">
                                            订单状态
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody id="tUser">
                                    <c:forEach items="${o.items}" var="oi">
                                        <tr>
                                            <td>${o.oid}</td>
                                            <td>${o.user.uid}</td>
                                            <td>${oi.phone.brand} ${oi.phone.model}</td>
                                            <td>￥${oi.phone.price}</td>
                                            <td>${oi.num}</td>
                                            <td>${oi.subtotal}</td>
                                            <td>
                                                <c:if test="${o.state==1}">已付款，等待卖家发货</c:if>
                                                <c:if test="${o.state==2}">卖家已发货</c:if>
                                                <c:if test="${o.state==3}">订单完成</c:if>
                                                <c:if test="${o.state==0}">
                                                    未付款
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                                ${o.name} ${o.address} ${o.pnum} 总金额：${o.total}
                            <c:if test="${o.state==1}">
                                <button type="submit" class="am-btn am-btn-default am-btn-xs amt-hide-sm-only"
                                        onclick="deleteDepart(27,1)">发货
                                </button>
                            </c:if>
                        </form>
                        <hr>
                    </c:forEach>
                </div>
            </div>

        </div>
        <!-- content end -->
    </div>
</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery-1.11.3.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="myplugs/js/plugs.js"></script>
<script>
    $(function () {
        $(".btnAdd").click(function () {
            $.jq_Panel({
                title: "添加用户",
                url: "addUser.html",
                iframeWidth: 800,
                iframeHeight: 600,
            });
        });

        $(".btnEdit").click(function () {
            $.jq_Panel({
                title: "编辑用户",
                url: "addUser.html",
                iframeWidth: 800,
                iframeHeight: 600,
            });

        });

    });
</script>
</body>

</html>