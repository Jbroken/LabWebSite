<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>西华大学无线网络与通信团队</title>
		<link rel="stylesheet" href="<%=basePath%>css/index.css" />
		<link rel="stylesheet" href="<%=basePath%>css/picture.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		 
		<style type="text/css">
			<!--
			.STYLE1 {color: #000000}
			.STYLE2 {
				color: #770000;
				font-weight: bold;
			}
			-->
		</style>
	</head>

	<body>
	<div id="wrapper">
		 <div id="top"></div>
			
			<div id="donation">
				<span style="font-size: 18px; color: #C00000;font-weight: bold;">资助企业:</span>
				<hr width: "1000px" style=" color: #3C9632;">
				<c:forEach items="${Enterprises}" var="Enterprise"> 
				<table style="width: 1000px; ">
					<tr>
						<td>
							<ul>
								<li>${Enterprise.content}</li>
							</ul>
						</td>
					</tr>
				</table>
				</c:forEach> 
				<span style="font-size: 18px; color: #C00000;font-weight: bold;">资助团队:</span>
				<hr width: "1000px" style=" color: #3C9632;">
				</tr>
				<table style="width: 1000px; ">
					<tr>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
					</tr>
				</table>
				<span style="font-size: 18px; color: #C00000; font-weight: bold;">资助个人:</span>
				<hr width: "1000px" style=" color: #3C9632;">
				</tr>
				<table style="width: 1000px; ">
					<tr>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
						<td>
							<ul>
								<li>XX公司资助</li>
							</ul>
						</td>
					</tr>
				</table>
				<div id="footer">
				<hr width="1000px" style="color: #444444;" />
				<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
			</div>		
			</div>
	</body>
<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
</html>