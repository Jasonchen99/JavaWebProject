<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ECharts</title>
    <meta charset="utf-8">
    <!-- 引入 ECharts 文件 -->
    <script src="js/echarts.min.js"></script>
</head>

<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 1080px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var arr = new Array();
    var index = 0;
    <c:forEach items="${phoneList}" var="ps">
    arr[index++] = ${ps.sales};
    </c:forEach>

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: 'ECharts 入门示例'
        },
        tooltip: {
            show: true
        },
        legend: {
            data:['销量']
        },
        xAxis : [
            {
                type : 'category',
                data : [
                    <c:forEach items="${phoneList}" var="p">
                    ["${p.brand} ${p.model}"],
                    </c:forEach>
                ]
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'销量',
                type:'bar',
                data: arr
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>