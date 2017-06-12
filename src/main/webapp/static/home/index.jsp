<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
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

        .STYLE1 {
            font-size: 24px;
            font-weight: bold;
            color: #800000;
        }

    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
<div id="wrapper">
    <div id="top">
    </div>

    <div id="content">
        <div class="bigbox">
            <div align="center">
                <strong><em>热烈祝贺无线网络与通信团队(WNCG)与天水渔业签订战略性合作协议 </em></strong>
            </div>
        </div>

        <div class="box1">
            <img src="<%=basePath%>/images/static/new-1.jpg" width="480px" height="300px">
        </div>
        <div class="box2">
            <img src="<%=basePath%>/images/static/new-2.jpg" width="480px" height="300px">
        </div>
        <div class="new">
            <div id="more">
                <a href="<%=basePath%>/view/worksList?page=1"><img src="<%=basePath%>/images/static/anniu.png"></a>
            </div>
            <span class="STYLE1">团队新闻:</span>:
            <div class="new_2">
                <ol>
                    <li><a
                            href="http://news.xhu.edu.cn/news/xihuayaowen/2015-10-23/23946.html ">西华大学WNCG团队与江苏常州市开展意向合作项目落地工作对接交流</a>(2015-10-24)
                    </li>
                    <li><a
                            href="http://www.jskx.org.cn/art/2015/8/25/art_88_744826.html">江苏公众科技网报道"常州天水渔业携手西华大学WNCG团队成立天水太湖研究院"，
                        负责人卿朝进老师 </a>(2015-08-25)
                    </li>

                    <li><a href="http://www.cztsyy.com/Article.asp?Action=View&ArticleID=96&Catalog=1"
                            class="STYLE2">常州市天水特种渔业有限公司与WNCG签订战略性合作协议 ，<span class="STYLE3"></span>， 负责人卿朝进老师(
                        2015-08-23 )</a></li>

                    <li><a
                            href="http://www.ejournal.org.cn/CN/column/item141.shtml">《电子学报》感谢WNCG团队卿朝进老师为其审稿，</a>(2015-08-03)
                    </li>

                    <li>WNCG团队访问上海理想信息产业(集团)有 限公司 ( 2015-03-25 )</li>
                </ol>

            </div>
        </div>

    </div>

    <div id="footer">
        <hr width="1000px" style="color: #444444;"/>
        <p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
    </div>
</div>
<script type="text/javascript" id="topScript" src="<%=basePath%>/theme/js/top_bar.js" data="base=<%=basePath%>"></script>
</body>

</html>