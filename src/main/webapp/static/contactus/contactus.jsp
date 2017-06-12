<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>西华大学无线网络与通信团队</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=basePath%>css/index.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
<style type="text/css">
.h {
	width: 1000px;
	height: 400px;
}

#ContentUs {
	width: 1000px;
	height: 600px;
	margin-right: auto;
}
</style>
</head>

<body>
	<div id="wrapper">
		<div id="top"></div>
	<div class="wrap">
		<div id="ContentUs">
			<div
				style="text-align: center; font-size: 22px;color: #C00000;padding: 10px 0px 10px 0px;">联系我们</div>
			<div style="font-size: 22px; color: #C00000;">联系方式：</div>
			<ol>
				<li><a href="mailto:qingchj_edu@163.com">
						Email：qingchj_edu@163.com</a></li>
				<li>联系在校老师或各学校社团，由在校老师或各学校社团直接联系西华大学无线网络与通信团队(Wireless
					Networking & Communication Group, WNCG)。</li>
			</ol>
			<div class="liuyan">
				<div>
					<span class="font_1">网站留言</span>
				</div>
				<TABLE border=0 width=1000 align=center>
					<TR>
						<TD align=left>
							<table width="1000" border="0" align="center">
								<tr>
									<td scope="col">
										<form method="post" action="message/addMessage">
											<table width="100%" height="79" border="0" align="center"
												style="font-size:18px;font-famliy:'宋体';">
												<tr>
													<td width="15%" height="25" align="right">姓名:</td>
													<td width="85%" height="25"><input type="text"
														name="author" maxlength="36" size="20"></td>
												</tr>
												<tr>
													<td width="15%" height="25" align="right">E-Mail</td>
													<td width="85%" height="-6"><input type="text"
														name="mail" size="20" maxlength="255"></td>
												</tr>

												<tr>
													<td width="15%" height="1" valign="top" align="right">内容:</td>
													<td width="85%" height="1" valign="top"><textarea
															rows="15" name="content" cols="90"></textarea></td>
												</tr>
												<tr>
													<td width="15%" height="1"></td>
													<td width="85%" height="0" valign="top"><input
														type="submit" value="提交留言"> <input type="reset"
														value="重设"></td>

												</tr>

												<tr>

												</tr>
											</table>
										</form>
									</td>
								</tr>
							</table>
						</TD>
					</TR>
				</TABLE>
				<a href="view/messageList?page=1"
					style="font-size:18px;float: right;padding:50px 50px 0px 0px;">查看留言板</a>
			</div>
			
		</div>

		<div id="footer">
				<hr width="1000px" style="color: #444444;"  float="left"/>
				<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
	</div>
	</div>
	</div>
	
</body>
<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
