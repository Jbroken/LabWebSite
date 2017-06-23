<%--
  Created by IntelliJ IDEA.
  User: BZhao
  Date: 2017/6/11
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" +request.getServerName()+":" +request.getServerPort()+path+"/" ;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<script src="<%=basePath%>/plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<%=basePath%>/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>



<head>
    <title>Title</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%--header begin--%>
    <%@include file="/common/header.html"%>
    <%--header end--%>

    <%--left menu begin--%>
    <%@include file="/common/menu.html"%>
    <%--left menu end--%>

    <%-- coustomer content begin--%>
    <div class="content-wrapper">
        <section class="content">
            
        </section>
    </div>
    <%--footer begin--%>
    <%@include file="/common/footer.html"%>
    <%--footer end--%>

</div>

<%--必须放在最底部--%>
<script src="<%=basePath%>/plugins/app.min.js" type="text/javascript" ></script>
</body>
</html>
