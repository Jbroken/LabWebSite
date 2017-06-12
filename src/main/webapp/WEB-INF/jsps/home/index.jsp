<%--
  Created by IntelliJ IDEA.
  User: BZhao
  Date: 2017/6/11
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;
%>
<html>
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="<%=basePath%>/plugins/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/ionicons.min.css">
<%--<!-- jvectormap -->--%>
<%--<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">--%>
<!-- Theme style -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/AdminLTE.min.css">

<link rel="stylesheet" href="<%=basePath%>/theme/css/_all-skins.min.css">

<!-- jQuery 2.2.3 -->
<script src="<%=basePath%>plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<%=basePath%>plugins/bootstrap/js/bootstrap.min.js"></script>
<head>
    <title>Title</title>
</head>
<body>
<header class="main-header">
    <!-- Logo -->
    <a class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>R</b>C</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>RonCoo-admin  </b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        <span class="hidden-xs">龙果一号</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                            <p>
                                龙果一号 - 超级管理员
                                <small>2016-09 加入</small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">简介</a>
                            </div>
                            <div class="pull-right">
                                <a href="#" class="btn btn-default btn-flat">退出</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>
</body>
</html>
