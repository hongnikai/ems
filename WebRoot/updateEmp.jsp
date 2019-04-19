<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.util.Date,com.yulin.ems.entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>update Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="css/style.css" />
	</head>

	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								<%
									SimpleDateFormat sd=new SimpleDateFormat("yyyy/MM/dd");
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
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						update Emp info:
					</h1>
					<form action="/ems/empupdate.do" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									id:	       
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="empId" value="${emp.empId}" style="display: none;" /><a>${emp.empId}</a>
									<a class="removea">请输入6位以下任意</a>
								</td>
							</tr>
							<tr> 
								<td valign="middle" align="right">
									name:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="empName" value="${emp.empName}" />
									请输入20位以内任意
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									salary:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="salary"  value="${emp.salary}"/>
									请输入八位以内数字/小数
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									job:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="job"  value="${emp.job}"/>
									请输入两位以内数字
								</td>
							</tr>
						</table>
						<p>
							<input type="text" class="inputgri" name="deleflg" value="${emp.deleflg}" style="display: none;"/>
							<input type="text"  name="other"  value="${emp.other}" style="display: none;"/> 
							<input type="submit" class="button" value="Confirm" />
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
