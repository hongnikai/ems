<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.util.Date" pageEncoding="utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>add Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
	</head>

	<body style="background-color: #06131b">
	<div style="height: 0px">
	 <img src="img/demo2.jpg"> 
		<div id="wrap" style="position: relative;top: -500px">
			<div id="top_content" >
					<div id="header" >
						<div id="rightheader" style="background-color: #1d5cbb;width: 820px;height: 50px">
							<p><%
								SimpleDateFormat sd = new SimpleDateFormat("yyyy/MM/dd");
								Date currentTime = new Date(); 
								String time = sd.format(currentTime).toString();  
   								%>
								<%= time%>
								<br />
							</p>
						</div>
						
						<div id="topheader">
							<h1 id="title">
								<a href="#">Main</a>
							</h1>
						</div>
						<div id="navigation" >
						</div>
					</div>
				<div id="content" >
					<p id="whereami">
					</p>
					<h1>
						add Emp info:
					</h1>
					<form action="/ems/empadd.do" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									id:	       
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="empId" />
									请输入6位以下任意
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									name:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="empName" />
									请输入20位以内任意
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									salary:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="salary" />
									请输入八位以内数字/小数
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									job:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="job" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									部门编号:
								</td>
								<td>
									<input type="text" class="inputgri" name="dept_id">
									请输入8位以内数字
								</td>
							</tr>
						</table>
						<p>
							<input type="text" class="inputgri" name="deleflg" value="0" style="display: none;"/>
							<input type="text"  name="other"  value="0" style="display: none;"/> 
							<input type="submit" class="button" value="Confirm" />
							<input type="button" onclick="location='login.jsp'" value="退出" style="position: relative;left: 500px"/>
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					541737239@qq.com
				</div>
			</div>
		</div>
		</div>
	</body>
	
	
	
</html>
