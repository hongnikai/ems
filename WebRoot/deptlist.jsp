<%@ page language="java" import="java.util.*,com.yulin.ems.entity.*,javax.servlet.http.HttpServletRequest;" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dept.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css" />

  </head>
  <body style="background-color: #2e1f87;">
  <div style="height: 0px;">
  <img alt="" src="img/list_background.jpg">
  	<div id="wrap" style="position: relative;top: -600px;margin: 0,auto;padding: 0px;">
			<div > 
				<div >
					<div >
						<p style="color: white;position: relative;left: 670px">
							<%=new java.sql.Date(System.currentTimeMillis())%>
							<br />
						</p>
					</div>
					<div style="background-color:#darkblue;">
						<h1 id="title" >
							<a href="#" style="color: lightblue;position: relative;left: 350px">部门列表</a>
						</h1>
					</div>
					<div >
					</div>
				</div>
				<div id="content" style="background-color: darkblue">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					<table class="table">
						<tr class="table_header">
							
							<td>
								部门名称
							</td>
							
							<td>
								负&nbsp责&nbsp人&nbsp
							</td>
							<td>
								详&nbsp情&nbsp
							</td>
						</tr>
						<% 
								List<Dept> list=(List<Dept>)request.getAttribute("list");
								for(Dept d:list){
						%>
						<tr class="table_header">
							<td>
								<%= d.getDeptname() %>
							</td>
							<td>
								<%= d.getDept_person() %>
							</td>
							<td>
								<a href="../ems/findDeptByDeptno.do?deptno=<%= d.getDeptno()%>">......</a>
							</td>
						</tr>
						<% }%>
					</table>
						<button><a href="../ems/index.jsp" style="text-decoration: none;">首页</a></button>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				541737239@qq.com
				</div>
			</div>
		</div>
	</div>
  </div>
  </div>
  
  </body>
</html>
