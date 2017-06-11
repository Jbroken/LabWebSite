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
<base href="<%=basePath%>" >
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

</body>
</html>
