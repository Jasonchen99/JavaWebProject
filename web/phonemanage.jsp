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
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default btnAdd">
                                    <span class="icon-plus"></span> 新增
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-g" style="margin-top: -30px;">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="user/delAll.action">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-id">
                                        ID
                                    </th>
                                    <th>
                                        品牌
                                    </th>
                                    <th class="table-title">
                                        型号
                                    </th>
                                    <th>
                                        库存
                                    </th>
                                    <th>
                                        信息
                                    </th>
                                    <th>
                                        价格
                                    </th>
                                    <th>
                                        图片地址
                                    </th>
                                    <th class="table-set">
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="tUser">
                                <c:forEach items="${phoneList}" var="p">
                                <tr>
                                    <td>${p.pid}</td>
                                    <td>${p.brand}</td>
                                    <td>${p.model}</td>
                                    <td>${p.stock}</td>
                                    <td>${p.info}</td>
                                    <td>${p.price}</td>
                                    <td>${p.image}</td>
                                    <td>
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button"
                                                        class="am-btn am-btn-default am-btn-xs am-text-secondary btnEdit">
                                                    <span class="am-icon-pencil-square-o"></span> 编辑
                                                </button>
                                                <button type="button"
                                                        class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
                                                        onclick="delUser(1,1)"><span class="am-icon-trash-o"></span> 删除
                                                </button>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </form>
                    </div>
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
                title: "添加手机",
                url: "addphone.jsp",
                iframeWidth: 800,
                iframeHeight: 600,
            });
        });

        $(".btnEdit").click(function () {
            $.jq_Panel({
                title: "编辑手机",
                url: "editphone.jsp",
                iframeWidth: 800,
                iframeHeight: 600,
            });

        });

    });
</script>
</body>

</html>