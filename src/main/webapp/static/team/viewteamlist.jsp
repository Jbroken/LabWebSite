<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>西华大学无线网络与通信团队</title>
		<link rel="stylesheet" href="<%=basePath%>css/index.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
		 
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
		 	<div id="top"></div>
		 	<div class="wrap">
				<div id="box">
					<div class="member"><img src="img/people-1.jpg"><img src="img/people-2.jpg"></div>
					<div id="name1">
						<div id="more">
							<a href="view/memberLogo?type=teacher"><img src="img/anniu.png"></a>
						</div>
						<table>
							<tr>
								<td><img src="img/biaoti-5.png"></td>
							</tr>
						</table>
						<hr/>
						<div class="list">
							<ul id="teacher">
								<!-- 循环开始 获取教师成员 -->
								<c:forEach items="${teacher}" var="t">
								<li><a  href="view/memberContent?id=${t.memberid}">${t.name}，${t.education}</a></li>
								</c:forEach>
								<!-- 循环开结束  -->
							</ul>
						</div>
					</div>
					<div id="name2">
						<div id="more">
							<a href="view/memberLogo?type=student"><img src="img/anniu.png"></a>
						</div>
						<table>
							<tr>
								<td><img src="img/biaoti-6.png"></td>
							</tr>
						</table>
						<hr/>
						<div class="list ">
							<ul id="student">
							<!-- 循环开始 获取学生成员 -->
							<c:forEach items="${student}" var="stu">
								<li><a  href="view/memberContent?id=${stu.memberid}">${stu.name}，${stu.education}</a></li>
							</c:forEach>
							<!-- 循环开结束  -->
							</ul>
						</div>
					</div>
					<div id="name1">
						<div id="more">
							<a href="view/memberLogo?type=comember"><img src="img/anniu.png"></a>
						</div>
						<table>
							<tr>
								<td><img src="img/biaoti-7.png"></td>
							</tr>
						</table>
						<hr/>
						<div class="list"   >
							<ul id="comember">
								<!-- 循环开始 获取协作成员成员 -->
								<c:forEach items="${comember}" var="c">
								<li><a  href="view/memberContent?id=${c.memberid}">${c.name}，${c.education}</a></li>
								</c:forEach>
								<!-- 循环开结束  -->
							</ul>
						</div>
					</div>
					<div id="name2">
						<div id="more">
							<a  href="view/memberLogo?type=oldmember"><img src="img/anniu.png"></a>
						</div>
						<table>
							<tr>
								<td><img src="img/biaoti-8.png"></td>
							</tr>
						</table>
						<hr/>
						<div class="list ">
							<ul id="oldmember">
								<!-- 循环开始 获取过去成员成员 -->
								<c:forEach items="${oldmember}" var="old">
								<li ><a  href="view/memberContent?id=${old.memberid}">${old.name}，${old.education}</a></li>
								</c:forEach>
								<!-- 循环开结束  -->
							</ul>
						</div>						
					</div>
					<div id="footer">
						<hr width="1000px" style="color: #444444;" />
						<p>西华大学&copy;2013&mdash;2015 All Rights Reserved.</p>
					</div>
				</div> 				
				</div>
		<script type="text/javascript">
 
			var teacher = document.getElementById("teacher");
			var student = document.getElementById("student");
			var comember = document.getElementById("comember");
			var oldmember = document.getElementById("oldmember");
			
			if("${teacher}".length<=2)
  			{
  				var newn = document.createElement("li");
				newn.innerHTML = "暂无";
			 	teacher.appendChild(newn);
  			}
			if("${student}".length<=2)
  			{
  				 var newn = document.createElement("li");
				newn.innerHTML = "暂无";
			 	student.appendChild(newn);
  			}
  			if("${comember}".length<=2)
  			{
  				var newn = document.createElement("li");
				newn.innerHTML = "暂无";
			 	comember.appendChild(newn);
  			}
			if("${oldmember}".length<=2)
			{
			 	var newn = document.createElement("li");
				newn.innerHTML = "暂无";
				oldmember.appendChild(newn);
			 
			}
			
		</script>
	</body>
<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
