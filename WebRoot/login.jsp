<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.util.Date" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>login</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
		<script type="text/javascript" src="js/aa.js"></script>	
	</head>

	<body>
	<div style="height: 0px;">
	<img src="img/03.jpg" style="height: auto;width: 100%;">
		 <div id="denglukuang" style="position: relative;top: -500px;">
		<div id="wrap" style="height: 200px;width: 440px;">
			<div>
					<div>
						<div style="margin:0px auto;padding:0px;position: relative;left: 380px">
							<p style="color: white;">
								<%
									SimpleDateFormat sd=new SimpleDateFormat("yyyy/MM/dd");
									Date currentTime = new Date(); 
									String time = sd.format(currentTime).toString();  
   								%>
								<%= time%>	
								<br />
							</p>
						</div>
						<div  style="position: relative;left:70px; margin: 0px;padding: 0px">
							<h1 id="title">
								<a href="#">欢迎登录联盟信息管理系统</a>
							</h1>
						
							
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1 style="position: relative;top: -10px;">
						login
					</h1>
					<form action="/ems/checklogin.do" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
								
									username:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="name" id="username"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									password:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="pwd" id="password"/>
								</td>
							</tr>
						</table>
						<p>	
							<input type="submit" class="button" value="Submit &raquo;" id="loginBtn" />
						</p>
						<span>${requestScope.error}</span>
					</form>
					<!-- 注册按钮 -->
					<button onclick="javascript:window.location.href='regist.jsp'" style="position: relative;left:300px;top:-40px; ">注册</button>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					541737239@qq.com
				</div>
			</div>
			</div> <!-- 登录框 -->
		</div> 
	</div>	
	</body>
</html>


