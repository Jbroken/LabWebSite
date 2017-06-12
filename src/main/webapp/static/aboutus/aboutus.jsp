<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>西华大学无线网络与通信团队</title>
    <link rel="stylesheet" href="<%=basePath%>/theme/css/index.css"/>
    <script type="text/javascript" src="<%=basePath%>/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/js/jquery.innerfade.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/js/jquery.pngFix.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/js/jquery.smartmenu.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/js/common.js"></script>
    <style type="text/css">
        <!--
        .STYLE1 {
            color: #000000
        }

        .STYLE2 {
            color: #770000;
            font-weight: bold;
        }

        -->
    </style>
</head>

<body>
<div id="wrapper">
    <div id="top">
    </div>

    <div id="introduce">
        <p class="STYLE1">西华大学“无线网络与通信团队 (Wireless Networking &amp; Communication Group,
            WNCG)”成立于2013年12月，现有专业教师6名(教授1名，副教授2名，讲师3名)，硕士在读研究生6人，本科在校成员50余人；主要从事无线网络与通信的软、硬件研发。</p>
        <p class="STYLE2">1. 我们喜欢与有创造性、有积极性和有坚韧性的学子交流、合作。</p>
        <p class="STYLE2">2. 我们期望与有远大理想的企事业、研发团队交流、合作。</p>
        <p class="STYLE2">3. 我们热烈欢迎有志的社会力量资助团队；热烈欢迎取得人生成功的团队成员回馈团队。</p>
        <p class="STYLE1">&nbsp;</p>
        <div align="center"><img src="<%=basePath%>/images/static/Team1.jpg" width="632" height="384"/></div>
        <div id="footer">
            <hr width="1000px" style="color: #444444;"/>
            <p>西华大学&copy;2013&mdash;2015 All Rights Reserved.</p>
        </div>
    </div>


</div>

</body>
<script type="text/javascript" id="topScript" src="<%=basePath%>/theme/js/top_bar.js" data="base=<%=basePath%>"></script>

</html>