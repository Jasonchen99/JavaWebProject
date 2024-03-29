﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <link rel="stylesheet" href="css/amazeui.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">

    <style>
        .admin-main {
            padding-top: 0px;
        }
    </style>
</head>
<body>
<body>
<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <strong>手机销售平台后台</strong> <small>管理系统</small>
    </div>
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}">
        <span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
    </button>
    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li class="am-dropdown" data-am-dropdown="">
                <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;"> <span
                        class="am-icon-users"></span> admin<span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li onclick="updatePwd('修改密码',2)">
                        <a href="javascript:void(0)"><span class="am-icon-cog"></span> 修改密码</a>
                    </li>
                    <li>
                        <a href="javascript:;"><span class="am-icon-power-off"></span> 退出
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <ul class="am-list admin-sidebar-list">
                <li>
                    <a href="javascript:;"><span class="am-icon-home"> 首页</span>
                <li class="admin-parent">
                    <a class="am-cf" href="BrandServlet?method=displayBrand" target="right"><span class="am-icon-file"></span> 品牌管理<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" href="PhoneServlet?method=displayPhone2" target="right"><span class="am-icon-file"></span> 手机管理<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>

                </li>
                <li class="admin-parent">
                    <a class="am-cf" href="OrderServlet?method=displayOrder" target="right"><span class="am-icon-file"></span> 订单管理<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>

                </li>
                <li class="admin-parent">
                    <a class="am-cf" href="UserServlet?method=displayUser" target="right"><span class="am-icon-file"></span> 用户管理<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>

                </li>
                <li class="admin-parent">
                    <a class="am-cf" href="PhoneServlet?method=displayPhoneToCharts" target="right"><span class="am-icon-file"></span> 统计报表<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>

                </li>
                <%--<li class="admin-parent">
                    <a class="am-cf" href="updatePwd.jsp" target="right"><span class="am-icon-file"></span> 修改密码<span
                            class="am-icon-angle-right am-fr am-margin-right"></span> </a>
                </li>--%>
                </li>
            </ul>
        </div>
    </div>
    <!-- sidebar end -->

    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <iframe src="BrandServlet?method=displayBrand" width="100%" height="1100" name="right" style="border: none;"></iframe>
        </div>
    </div>
</div>
<!-- content end -->


<a href="" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
   data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<footer>
    <hr>
    <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>
<script src="../../../../"></script>
<script src="../../../../"></script>
<script type="text/javascript" src="myplugs/js/plugs.js"></script>
<script type="text/javascript">
    //添加编辑弹出层
    function updatePwd(title, id) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "updatePwd.jsp"
        });
    }
</script>

</body>
</body>
</html>