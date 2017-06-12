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
		<title>合作需求</title>
		<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<link rel="stylesheet" href="<%=basePath%>css/picture.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		<script type=text/javascript>
			$(document).ready(function() {
				$(".banner").innerfade({
					speed: 'slow',
					timeout: 4000,
					type: 'random',
					containerheight: '200px'
				});
			});
		</script>
		<script type="text/javascript">
			jQuery(window).ready(function() {
				jQuery("#navigation").Smartmenu({
					animationDuration: 200
				});
			});
		</script>
		<style type="text/css">
			<!-- .STYLE4 {
				font-family: "微软雅黑";
				color: #00BB00;
				font-weight: bold;
			}
			-->
			.N{
			width: 50%;
			height: auto;
			float: left;
			}
		</style>
	</head>

	<body>
	<div id="wrapper">
		 <div id="top"></div>
			<div id="team">
			<div><span style="font-weight: bold; font-size: 22px;color: #800000;margin-top: 10px;">合作需求</span></div>
				<c:forEach items="${need}" var="N">
					<div class="N">
						<table style="width: 1000px; ">
							<tr>
								<td>
									<ul>
										<li>
										${N.title}
										</li>
									</ul>
								</td>
							</tr>
						</table>
					</div>
				</c:forEach>
				<div id="footer">
					<hr width="1000px" style="color: #444444;" />
					<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
				</div>
				</div>
				</div>
	</body>
<script type="text/javascript" id="topScript"
	src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>