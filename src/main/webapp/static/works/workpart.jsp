<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<title>西华大学无线网络与通信团队</title>
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>

<style type="text/css">
<!--
.STYLE1 {
	color: #000000
}

.STYLE2 {
	color: #770000;
	font-weight: bold;
}

-->
.box {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

.h {
	height: 370px;
}
/*footer*/
/*footer*/
#footer999 {
	width: 1000px;
	height: 50px;
	margin-top: 420px;
	margin-left: auto;
	margin-right: auto;
}

#footer999 p {
	text-align: center;
	font-size: 16px;
	color: #0F5B96;
}
</style>
</head>

<body>
<div id="wrapper">
	<div id="top"></div>
	<div id="content">
		<div id="box">
			<div id="content1">
				<p>展示你的青春与阳光，青春结出的果实永葆灿烂！</p>
				<hr />
			</div>
			<div id="box3">
				<div id="more">
					<a href="<%=basePath%>view/projectPart"><img
						src="<%=basePath%>img/anniu.png"></a>
				</div>
				<table>
					<tr>
						<td><img src="<%=basePath%>img/biaoti-1.png"></td>
					</tr>
				</table>
				<hr />
				<div class="display">
						<ol>
							<li><a href="<%=basePath%>view/projectPart"><span style="font-weight: bold;">国家863计划(项目编号：2009AA01Z236)</span>:基于二维扩频的-170dBm信号检测与验证技术;</a></li>
							<li><a href="<%=basePath%>view/projectPart"><span style="font-weight: bold;">国家自然科学基金项目(项目编号：60902027)</span>：强相关信道中的空时信号设计及检测关键技术研究;</a></li>
							<li><a href="<%=basePath%>view/projectPart"><span style="font-weight: bold;">国家科技重大专项(项目编号：2010ZX03003-002-01)</span>：面向IMT-Advanced多小区多用户干扰抑制和抵消技术;</a></li>
							<li><a href="<%=basePath%>view/projectPart"><span style="font-weight: bold;">四川省教育厅重点项目(项目编号：12ZA161)</span>：基于分布式天线协同感知的OFDM粗时间同步;</a></li>
							<li><a href="<%=basePath%>view/projectPart"><span style="font-weight: bold;">教育部春晖计划(项目编号：Z2011091)</span>：基于协同感知的分布式天线选择技术;</a> </li>
						</ol>
				</div>
			</div>
			<div id="box4">
				<div id="more">
					<a href="<%=basePath%>view/thesisPart"><img
						src="<%=basePath%>img/anniu.png"></a>
				</div>
				<table>
					<tr>
						<td><img src="<%=basePath%>img/biaoti-2.png"></td>
					</tr>
				</table>
				<hr />
				<div class="display">
					<ol>
						<li><a
							href="<%=basePath%>view/thesisPart"><span
								style="font-weight: bold;"> Chaojin Qing(卿朝进)*</span>, Shihai
								Shao, Youxi Tang, “Timing Acquisition for Distributed Antenna
								Systems by Exploiting the Advantages of Cooperation over
								Flat-Fading Channels”, Chinese Journal of Electronics., vol.20,
								no.2, pp.337–342, Apr. 2011.</a></li>
						<li><a
							href="<%=basePath%>view/thesisPart"><span
								style="font-weight: bold;">Chaojin Qing(卿朝进)*</span>, Shihai
								Shao, Youxi Tang, “Timing Acquisition for Distributed Antenna
								Systems with the Cooperation of Two Remote Antennas”, Chinese
								Journal of Electronics., vol.20, no.3, pp. 527–532, July. 2011.</a></li>
					</ol>
				</div>
			</div>
			<div id="box3">
				<div id="more">
					<a href="<%=basePath%>view/patentPart"><img
						src="<%=basePath%>img/anniu.png"></a>
				</div>
				<table>
					<tr>
						<td><img src="<%=basePath%>img/biaoti-3.png"></td>
					</tr>
				</table>
				<hr />
				<div class="display">
					<ol>
						<li><a
							href="<%=basePath%>view/patentPart"><span
								style="font-weight: bold;">卿朝进</span>,邵士海，唐友喜，“一种分布式天线协同定时捕获方法”，2010.09，中国，ZL
								201010132655(已授权)。</a></li>
						<li><a
							href="<%=basePath%>view/patentPart"><span
								style="font-weight: bold;">卿朝进</span>,夏凌，董秀成，黄小莉，“一种基于协同校验的分布式天线粗时间同步方法及系统”，2012.10，中国，201210409266.2。</a></li>
						<li><a
							href="<%=basePath%>view/patentPart"><span
								style="font-weight: bold;">卿朝进</span>，王军，阳小明，黄勇，“一种OFDM通信系统的时间同步方法及装置”，2012.11，中国，201210444634.7。(已授权)</a></li>
						<li><a
							href="<%=basePath%>view/patentPart"><span
								style="font-weight: bold;">卿朝进</span>,董秀成，张岷涛，王维博，“一种分布式天线系统的天线选择方法及装置”，2012.10，中国，ZL
								201210425268.0(已授权)</a></li>
					</ol>
				</div>
			</div>
			<div id="box4">
				<div id="more">
					<a href="<%=basePath%>view/worksList?page=1"><img
						src="<%=basePath%>img/anniu.png"></a>
				</div>
				<table>
					<tr>
						<td><img src="<%=basePath%>img/biaoti-4.png"></td>
					</tr>
				</table>
				<hr />
				<div class="display" id="display">
					<ol>
						<!-- 循环开始 -->
						<c:forEach items="${list}" var="work">
							<li><a
								href="<%=basePath%>view/workContent?id=${work.worksid}">${work.title}</a>
							</li>
						</c:forEach>
						<!-- 循环结束 -->
					</ol>
				</div>
			</div>
			<div id="footer">
				<hr width="1000px" style="color: #444444;" />
				<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
		</div>
</div>
	</div>
</body>
<script type="text/javascript" id="topScript"
	src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
