<%@ page language="java" import="java.util.*,java.sql.Date,com.yulin.ems.entity.Emp,javax.servlet.http.HttpServletRequest;" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
	<div style="margin: 0,auto;padding: 0px;height: 100px;width: auto;">
	<img src="img/list_background.jpg"/>
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
							<a href="#" style="color: lightblue;position: relative;left: 350px">员工信息</a>
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
								ID
							</td>
							<td>
								Name
							</td>
							<td>
								Salary
							</td>
							<td>
								Job
							</td>
							<td>
								部门编号 
							</td>
							<td>
								Operation
							</td>
						</tr>
						<%
								List<Emp> list=(List<Emp>)request.getAttribute("list");
								for(Emp emp:list){
						%>
							<tr class="table_header">
							<td>
								<%= emp.getEmpId()%>
							</td>
							<td>
								<%= emp.getEmpName() %>
							</td>
							<td>
								<%= emp.getSalary() %>
							</td>
							<td>
								<%= emp.getJob() %>
							</td>
							<td>
								<%= emp.getDept_id() %>
							</td>
							<td>
								<a href="/ems/empdelete.do?empId=${emp.empId}">deleteEmp</a>
								<a href="/ems/toempupdate.do?empId=${emp.empId}">updateEmp</a>
							</td>
						</tr>
						<% } %>
				
					</table>
					<p>
						<input type="button" class="button" value="Add Employee" onclick="location='addEmp.jsp'"/>
						<input type="button" onclick="location='login.jsp'" value="退出" style="position: relative;left: 500px"/>
					</p>
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
