<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5shiv.js"></script>
    <script type="text/javascript" src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="css/H-ui.min.css">
    <link rel="stylesheet" type="text/css" href="css/H-ui.admin.css">
    <link rel="stylesheet" type="text/css" href="css/Hui-iconfont/1.0.8/iconfont.css">
    <link rel="stylesheet" type="text/css" href="skin/default/skin.css" id="skin">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>折线图</title>
</head>

<body>
<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
<script language="JavaScript">
	$(document).ready(function() {
		var title = {
			text: '城市平均气温'
		};
		var subtitle = {
			text: 'Source: runoob.com'
		};
		var xAxis = {
			categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
				'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		};
		var yAxis = {
			title: {
				text: 'Temperature (\xB0C)'
			},
			plotLines: [{
				value: 0,
				width: 1,
				color: '#808080'
			}]
		};

		var tooltip = {
			valueSuffix: '\xB0C'
		}

		var legend = {
			layout: 'vertical',
			align: 'right',
			verticalAlign: 'middle',
			borderWidth: 0
		};

		var series =  [
			{
				name: 'Tokyo',
				data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2,
					26.5, 23.3, 18.3, 13.9, 9.6]
			},
			{
				name: 'New York',
				data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8,
					24.1, 20.1, 14.1, 8.6, 2.5]
			},
			{
				name: 'London',
				data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0,
					16.6, 14.2, 10.3, 6.6, 4.8]
			}
		];

		var json = {};

		json.title = title;
		json.subtitle = subtitle;
		json.xAxis = xAxis;
		json.yAxis = yAxis;
		json.tooltip = tooltip;
		json.legend = legend;
		json.series = series;

		$('#container').highcharts(json);
	});
</script>
</body>

</html>