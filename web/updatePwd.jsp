﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html">
		
		<title></title>
	    <link rel="stylesheet" href="css/amazeui.min.css">
		<link rel="stylesheet" href="css/admin.css">
		<link rel="stylesheet" href="css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
			.am-form-group{
				margin-bottom: 1.7rem;
				
			}
		</style>
	</head>
	<body>
		<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-g">
					<form class="am-form am-form-horizontal" style="margin-left: -300px;margin-top: 80px;" method="post" style="padding-top:30px;" data-am-validator="">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							新密码 </label>
							<div class="am-u-sm-9">
								<input type="password" id="doc-vld-pwd-1" required="" placeholder="请输入新密码" name="password"> <small>输入新密码。</small>
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								重复密码</label>
							<div class="am-u-sm-9">
								<input type="password" id="doc-vld-pwd-2" required="" placeholder="请输入重复密码" name="pwd" data-equal-to="#doc-vld-pwd-1" required=""> <small>输入重复密码。</small>
							</div>
						</div>
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input type="submit" class="am-btn am-btn-success" value="修改密码">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../../../../">
	</script>
	<script type="text/javascript" src="myplugs/js/plugs.js">
	</script>
	</body>
</html>
