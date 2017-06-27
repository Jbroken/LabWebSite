<%--
  Created by IntelliJ IDEA.
  User: jing
  Date: 2017/6/25
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="zh-CN">
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="<%=basePath%>/plugins/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/ionicons.min.css">

<link rel="stylesheet" href="<%=basePath%>/plugins/bootstrap-select/css/bootstrap-select.css">

<link rel="stylesheet" href="<%=basePath%>/plugins/jquery-confirm/jquery-confirm.min.css">

<link rel="stylesheet" href="<%=basePath%>/plugins/fakeLoader/css/fakeLoader.css">

<!-- Theme style -->
<link rel="stylesheet" href="<%=basePath%>/theme/css/AdminLTE.min.css">

<link rel="stylesheet" href="<%=basePath%>/theme/css/_all-skins.min.css">

<link rel="stylesheet" href="<%=basePath%>/theme/css/customer.css">

<!-- jQuery 2.2.3 -->
<script src="<%=basePath%>/plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<%=basePath%>/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script src="<%=basePath%>/plugins/bootstrap-select/js/bootstrap-select.js" type="text/javascript"></script>

<script src="<%=basePath%>/plugins/jquery-confirm/jquery-confirm.min.js" type="text/javascript"></script>

<script src="<%=basePath%>/plugins/fakeLoader/js/fakeLoader.min.js" type="text/javascript"></script>

<script src="<%=basePath%>/plugins/jquery.common.js" type="text/javascript"></script>

<head>
    <title>科研项目</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@include file="/common/header.html"%>
    <%@include file="/common/menu.html"%>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="text-left">
                <ol class="breadcrumb">
                    <li><i class="glyphicon glyphicon-home"></i>成果与风采管理</li>
                    <li>科研项目</li>
                </ol>
            </div>
        </section>
        <div class="container">
            <div class="row">
                <div class="tool-bar">
                    <span class="icon-margin" title="查询">
                        <a class="glyphicon glyphicon-search"></a>
                    </span>

                    <span class="icon-margin" title="增加" id="add">
                        <a class="glyphicon glyphicon-plus-sign"></a>
                    </span>

                    <span title="更改" class="icon-margin">
                        <a class="glyphicon glyphicon-pencil"></a>
                    </span>

                    <span class="icon-margin" title="删除">
                        <a class="glyphicon glyphicon-trash"></a>
                    </span>
                </div>
            </div>
            <div class="row">
                <div class="form-group query">
                    <select class="selectpicker" id="">
                        <label>项目类型：</label>
                        <option value="0">在研项目</option>
                        <option value="1">已完成项目</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-body">
                            <table class="table table-hover table-bordered table-condensed customer-font-size">
                                <thead>
                                <tr class="info">
                                    <th>#</th>
                                    <th>编号</th>
                                    <th>内容</th>
                                    <th>类别</th>
                                    <th>创建时间</th>
                                    <th>更新时间</th>
                                </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--add modal-->
    <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">新增项目</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label class="control-label">项目类型：</label>
                            <select class="selectpicker" id="patent_type">
                                <option value="0">在研项目</option>
                                <option value="1">已完成项目</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">内容</label>
                            <div id="patent_text"></div>
                        </div >
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="save_patent">保存</button>
                </div>
            </div>
        </div>
    </div>

    <%@include file="/common/footer.html"%>
</div>
<script src="<%=basePath%>/plugins/app.min.js" type="text/javascript"></script>"
<script src="<%=basePath%>/plugins/Editor/wangEditor.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/js/page/achievements/sientific.js" type="text/javascript"></script>
</body>
</html>
