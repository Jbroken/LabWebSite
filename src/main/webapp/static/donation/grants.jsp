<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
				 
		
			<div id="grants">
				<div class="zhuxue">
					<div style="text-align: center; font-size: 22px;color: #C00000;padding: 10px 0px 10px 0px;">勤工助学</div>
					<div style="font-size: 18px; color: #C00000;">助学申请条件:</div>
					<ol>
						<li>对电信业务(中国联通、中国电信、中国移动)有一定的了解，或能快速的学习电信业务；</li>
						<li>能吃苦耐劳，家庭贫困；或由学生社团、学生会、学管会，以及各级团委推荐的能团结同学且同学基础好的在校学生。</li>
						<li>具有一定网络营销、实体营销经验或潜能的人员优先。</li>
					</ol>
					<p style="float: right;"><a href="/LabWebSite2/view/helpPart?type=help"><img src="../../img/anniu.png" /></a></p>
				</div>
				<div class="juanzeng">
					
					<div style="text-align: center; font-size: 22px;color: #C00000;padding: 10px 0px 10px 0px;">社会与个人资助</div>
					<div style="font-size: 18px; color: #C00000;">资助企业:</div>
					<ul>
						<li>XX企业资助</li>
						<li>XX企业资助</li>
						<li>XX企业资助</li>
						<li>XX企业资助</li>
						<li>XX企业资助</li>
					</ul>
					<p style="float: right;"><a href="/LabWebSite2/view/fundingPart"><img src="../../img/anniu.png" /></a></p>
				</div>
				<div id="footer">
				<hr width="1000px" style="color: #444444;" />
				<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
			</div>
			</div>
	</body>
<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>