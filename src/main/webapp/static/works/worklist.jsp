<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
table {
	font-size: 25px;
	text-decoration: none;
	border: 3px solid rgb(0, 102, 153);
	margin: 0px;
}

a {
	font-size: 25px;
	color: #000000;
	text-decoration: none;
}

a:HOVER {
	color: red;
}

.pageaction {
	width: 350px;
	margin-left: auto;
	margin-right: auto;
}

#head {
	height: 500px;
	position: relative;
}

#content999 {
	position: relative;
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

#content999 table {
	
}

#footer1 {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 100px;
	margin-top: 50px
}

#footer1 p {
	text-align: center;
}
</style>
<script type="text/javascript" src="/js/jquery-1.3.2.min.js">
	
</script>

<%
	int Page = Integer
			.parseInt(request.getAttribute("page").toString());
	int pageMax = Integer.parseInt(request.getAttribute("pageMax")
			.toString());
%>
</head>

<body>
	<div id="head">
		<jsp:include page="../manage/head.jsp" />
	</div>

	<div id="content999">

		<div class="tab">
			<table align="center" cellpadding="5" cellspacing="0">

				<tr align="left" style="color: red;">
					<td width="566">标题</td>
					<td width="80">作者</td>
					<td width="250">发布时间</td>
				</tr>
				<!-- 循环开始  -->
				<c:forEach items="${list}" var="work">
					<tr align="left">
						<td width="566" height="50px"><a
							href="view/workContent?id=${work.worksid}">${work.title}</a></td>
						<td width="100" height="50px">${work.author }</td>
						<td width="250" height="50px"><fmt:formatDate
								value="${work.date}" pattern="yyyy/MM/dd HH:mm:ss" /></td>
					</tr>
				</c:forEach>

				<!-- 循环结束 -->
			</table>
		</div>

		<div class="pageaction">
			<a href="view/worksList?page=<%=(Page - 1) == 0 ? 1 : Page - 1%>" class="up">
				上一页</a> <a
				href="view/worksList?page=<%=((Page + 1) > pageMax) ? pageMax : Page + 1%>"
				class="down">下一页</a> <a href="view/worksList?page=1" class="first">去首页</a>
			<a href="view/worksList?page=<%=pageMax%>" class="end">去尾页</a>
		</div>
	</div>

	<div id="footer1">
		<hr width="1000px" style="color: #444444;" />
		<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
	</div>
</body>
</html>
