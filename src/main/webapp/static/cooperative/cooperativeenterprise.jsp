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
		<title>合作企业</title>
		<link rel="stylesheet" href="<%=basePath%>css/index.css" />
		<link rel="stylesheet" href="<%=basePath%>css/picture.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		 
		<style type="text/css">
			<!-- .STYLE4 {
				font-family: "å¾®è½¯éé»";
				color: #00BB00;
				font-weight: bold;
			}
			-->
		</style>
	</head>

	<body>
	<div id="wrapper">
		  <div id="top"></div>
				<div id="enterprise">
					<span style="font-weight: bold; font-size: 22px;color: #800000;margin-top: 10px;">合作企业</span>
					<table >
						<tr>
							<td><img src="<%=basePath%>img/qiye1.png" width="250" height="80">
								<ul>
									<li>
									<a href="http://www.cztsyy.com/">常州市天水特种渔业有限公司</a></li>
								</ul>
							</td>
							<td><img src="<%=basePath%>img/qiye2.jpg" width="250" height="80">
								<ul>
									<li>
									<a href="http://www.chinaunicom.com.cn/city/sichuan/dspd/chengdu/index.htmlï¼ ">中国联通成都分公司</p></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><img src="<%=basePath%>img/qiye3.png" width="250" height="80">
								<ul>
									<li>
									<p>成都景弘智能科技有限公司</p></li>
								</ul>
							</td>
							<td><img src="<%=basePath%>img/qiye4.png" width="250" height="80">
								<ul>
									<li>
									<p>成都钜川科技有限公司</p></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td><img src="<%=basePath%>img/qiye5.png" width="250" height="80">
								<ul>
									<li>
										<p>成都志炎科技有限公司</p>
									</li>
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
			<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
	</body>

</html>