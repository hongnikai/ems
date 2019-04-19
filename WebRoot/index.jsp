<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'method.jsp' starting page</title>
    <meta charset="utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/aa.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
			*{
				padding: 0;
				margin:  0;
			}
			body{
				padding: 20px;
			}
			.nav-menu{
				background-color: #74adaa;
				width: 950px;            
            	height: 50px;            
           	 	margin: 0 auto;
			}
			.three-d-box {
            display: inline-block;           
            position: relative;        
            padding: 0 20px;            
            list-style-type: none;
            width:200px;
            }
            .three-d-box a {
            display: inline-block;
            width: 100%;
            height: 100%;
            text-align: center;
            line-height: 50px;            
            font-size: 25px;
            color: white;
            text-decoration:  none;
            background-color: #74adaa;                
        	}
			.three-d-box .cont {
            color: #74adaa;
        	}
        	.three-d-box .front,
        	.three-d-box .back {
            position: absolute;
            left: 0;
            top: 0;            
            border-right: 1px solid #94c0be;
        	}
            
             .three-d-box .front {
            height: 49px;
        	}
        	.three-d-box .front {
            -webkit-transform: rotateX(0deg) translateZ(25px);
            border-bottom: 1px solid #94c0be;            
       	 	}
        	.three-d-box .back {
            -webkit-transform: rotateX(-90deg) translateZ(25px) ;
            /* 面对浏览器，translateX(5px)往右5px，translateY(5px)往下5px，translateZ(5px)正对用户5px */
        	}
        	/* 准备翻转three-d-box
           	 鼠标滑过时 */
        	.three-d-box:hover {
            -webkit-transform: rotateX(90deg);
        	}
            /* 规定动画效果是3D和动画时间 */
        	.three-d-box {
            -webkit-transform-style: preserve-3d;
            -webkit-transition: all 2s ease;
        	} 
        	.three-d-box {
            display: inline-block;            
            position: relative;        
            padding: 0 20px;            
            list-style-type: none;    
            margin-right: -7px;        
        	}
        	.three-d-box:hover .front,
        	.three-d-box:hover .back {
            background-color: #51938f;
            background-image: -webkit-linear-gradient(45deg, #478480 25%, transparent 25%, transparent 75%, #478480 75%, #478480), linear-gradient(45deg, #478480 25%, transparent 25%, transparent 75%, #478480 75%, #478480);
            -webkit-background-size: 5px 5px;
        	}
        .ulplay{list-style-type:none;
            text-align: center;
           visibility: hidden;
           background-color:darkslategray;
           width: 260px;
           height: 66px;
           padding-left: 0px;
           margin-top: ;s
           position: relative;
           top: -16px;} 
         .ahover:hover ul{visibility: visible;}
        .l1:hover{background-color:grey;}
        .l2:hover{background-color:grey;}
        .l3:hover{background-color:grey;}   
        #biaodan{background-color: black;} 
        
        select {
  /*Chrome和Firefox里面的边框是不一样的，所以复写了一下*/
  border: solid 0px #000;

  /*很关键：将默认的select选择框样式清除*/
  appearance:none;
  -moz-appearance:none;
  -webkit-appearance:none;

  /*在选择框的最右侧中间显示小箭头图片*/
  background: url("http://ourjs.github.io/static/2015/arrow.png") no-repeat scroll right center transparent;


  /*为下拉小箭头留出一点位置，避免被文字覆盖*/
  padding-right: 14px;
}
        select::-ms-expand { display: none; }
		</style> 
  </head>
  
  <body style="background-color: #06131b">
 	<div style="height: 0px;">
 	
 	  <img src="img/demo2.jpg" style="position: relative;top: 50px;left: -50px"> 
 		<div style="width: 950px;height: 500px;position:relative;top: -500px;left: 100px;">
 			<ul class="nav-menu">
			
			<li class="three-d-box">
				<a href="#" class="cont">网&nbsp站&nbsp首&nbsp页</a>
				<a href="#" class="front">网&nbsp站&nbsp首&nbsp页</a>
				<a href="#" class="back">网&nbsp站&nbsp首&nbsp页</a>
			</li>
			
			<li class="three-d-box">
				<a href="../ems/deptlist.do" class="front">部&nbsp门&nbsp信&nbsp息</a>
				<a href="../ems/deptlist.do" class="cont">部&nbsp门&nbsp信&nbsp息</a>
				<a href="../ems/deptlist.do" class="back">部&nbsp门&nbsp信&nbsp息</a>
			</li>
			<li class="three-d-box">
				<a href="http://localhost:8080/ems/emplist.do" class="front">信&nbsp息&nbsp查&nbsp询</a>
				<a href="http://localhost:8080/ems/emplist.do" class="cont">信&nbsp息&nbsp查&nbsp询</a>
				<a href="http://localhost:8080/ems/emplist.do" class="back">信&nbsp息&nbsp查&nbsp询</a>
			</li>
			<li class="three-d-box">
				<a href="#" class="front">公&nbsp司&nbsp简&nbsp介</a>
				<a href="#" class="cont">公&nbsp司&nbsp简&nbsp介</a>
				<a href="#" class="back">公&nbsp司&nbsp简&nbsp介</a>
			</li>
		</ul>
		</div>
				<div style="width:240px; color: white;position: relative;top: -950px;left: 330px;"	>
				<span class="ahover">
				<p id="biaodan1" style="width: 260px;text-align: center;">部门详情</p>
				<ul class="ulplay">
					<li class="l1"><a href="../ems/deptlist.do" style="text-decoration: none;">部门信息一览</a></li>
					<li class="l2"><a href="../ems/addDept.jsp" style="text-decoration: none;">添加部门</a></li>
					
				</ul>
				</span>
				</div>
			    
			    <div style="width:240px; color: white;position: relative;top: -1033px;left: 570px; "	>
				<span class="ahover">
				<p id="biaodan2" style="width: 260px;text-align: center;">信息板块</p>
				<ul class="ulplay">
					<li class="l1"><a href="../ems/emplist.do" style="text-decoration: none;">所有员工信息</a></li>
					<li class="l3" style="color: #551a8b;"><a href="../ems/addEmp.jsp" style="text-decoration: none;">添加新员工</a></li>
					<li class="l2"><select onchange="top.location=this.value;">
					<option>&nbsp&nbsp&nbsp搜索员工</option>
					<option value="../ems/xingmingchaxun.jsp">&nbsp&nbsp&nbsp姓名查询</option>
					<option value="../ems/bianhaochaxun.jsp">&nbsp&nbsp&nbsp员工编号查询</option>
					<option value="../ems/gongzuochaxun.jsp">&nbsp&nbsp&nbsp工作查询</option>
					</select></li> 
				</ul>
				</span>
				</div>
				
				<div style="width:240px; color: white;position: relative;top: -1115px;left: 810px; "	>
				<a class="ahover">
				<p id="biaodan3" style="width: 260px;text-align: center;">公司部门</p>
				<ul class="ulplay">
					<li class="l1">选项一</li>
					<li class="l2">选项二</li>
					<li class="l3">选项三</li>
				</ul>
				</a>
				</div>
			
 	</div>
 	<p>asdasdasdas</p>
  </body>
</html>

